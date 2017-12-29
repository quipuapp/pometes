gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require_relative '../lib/pometes'


class PometesTest < Minitest::Test
  i_suck_and_my_tests_are_order_dependent!

  def test_1_the_first_verse
    expected = <<-VERSE
10 pometes té el pomer, de 10 una, de 10 una,
10 pometes té el pomer, de 10 una li'n caigué.
VERSE
    assert_equal expected, ::Pometes.new.verse(10)
  end

  def test_2_another_verse
    expected = <<-VERSE
7 pometes té el pomer, de 7 una, de 7 una,
7 pometes té el pomer, de 7 una li'n caigué.
VERSE
    assert_equal expected, ::Pometes.new.verse(7)
  end

  def test_3_verse_1
    expected = <<-VERSE
1 pometa té el pomer, d'1 una, d'1 una,
1 pometa té el pomer, d'1 una li'n caigué.
    VERSE
    assert_equal expected, ::Pometes.new.verse(1)
  end

  def test_4_verse_0
    expected = <<-VERSE
Si miereu el vent d'on ve, veureu el pomer com dansa,
si mireu el vent d'on ve, veureu com dansa el pomer.
    VERSE
    assert_equal expected, ::Pometes.new.verse(0)
  end

  def test_5_a_couple_verses
    expected = <<-VERSES
8 pometes té el pomer, de 8 una, de 8 una,
8 pometes té el pomer, de 8 una li'n caigué.

Si miereu el vent d'on ve, veureu el pomer com dansa,
si mireu el vent d'on ve, veureu com dansa el pomer.

7 pometes té el pomer, de 7 una, de 7 una,
7 pometes té el pomer, de 7 una li'n caigué.
VERSES
    assert_equal expected, ::Pometes.new.verses(8, 7)
  end

  def test_6_a_few_verses
    expected = <<-VERSES
9 pometes té el pomer, de 9 una, de 9 una,
9 pometes té el pomer, de 9 una li'n caigué.

Si miereu el vent d'on ve, veureu el pomer com dansa,
si mireu el vent d'on ve, veureu com dansa el pomer.

8 pometes té el pomer, de 8 una, de 8 una,
8 pometes té el pomer, de 8 una li'n caigué.

Si miereu el vent d'on ve, veureu el pomer com dansa,
si mireu el vent d'on ve, veureu com dansa el pomer.

7 pometes té el pomer, de 7 una, de 7 una,
7 pometes té el pomer, de 7 una li'n caigué.

Si miereu el vent d'on ve, veureu el pomer com dansa,
si mireu el vent d'on ve, veureu com dansa el pomer.

6 pometes té el pomer, de 6 una, de 6 una,
6 pometes té el pomer, de 6 una li'n caigué.

Si miereu el vent d'on ve, veureu el pomer com dansa,
si mireu el vent d'on ve, veureu com dansa el pomer.

5 pometes té el pomer, de 5 una, de 5 una,
5 pometes té el pomer, de 5 una li'n caigué.
VERSES
    assert_equal expected, ::Pometes.new.verses(9, 5)
  end

  def test_7_the_whole_song
    expected = <<-SONG
10 pometes té el pomer, de 10 una, de 10 una,
10 pometes té el pomer, de 10 una li'n caigué.

Si miereu el vent d'on ve, veureu el pomer com dansa,
si mireu el vent d'on ve, veureu com dansa el pomer.

9 pometes té el pomer, de 9 una, de 9 una,
9 pometes té el pomer, de 9 una li'n caigué.

Si miereu el vent d'on ve, veureu el pomer com dansa,
si mireu el vent d'on ve, veureu com dansa el pomer.

8 pometes té el pomer, de 8 una, de 8 una,
8 pometes té el pomer, de 8 una li'n caigué.

Si miereu el vent d'on ve, veureu el pomer com dansa,
si mireu el vent d'on ve, veureu com dansa el pomer.

7 pometes té el pomer, de 7 una, de 7 una,
7 pometes té el pomer, de 7 una li'n caigué.

Si miereu el vent d'on ve, veureu el pomer com dansa,
si mireu el vent d'on ve, veureu com dansa el pomer.

6 pometes té el pomer, de 6 una, de 6 una,
6 pometes té el pomer, de 6 una li'n caigué.

Si miereu el vent d'on ve, veureu el pomer com dansa,
si mireu el vent d'on ve, veureu com dansa el pomer.

5 pometes té el pomer, de 5 una, de 5 una,
5 pometes té el pomer, de 5 una li'n caigué.

Si miereu el vent d'on ve, veureu el pomer com dansa,
si mireu el vent d'on ve, veureu com dansa el pomer.

4 pometes té el pomer, de 4 una, de 4 una,
4 pometes té el pomer, de 4 una li'n caigué.

Si miereu el vent d'on ve, veureu el pomer com dansa,
si mireu el vent d'on ve, veureu com dansa el pomer.

3 pometes té el pomer, de 3 una, de 3 una,
3 pometes té el pomer, de 3 una li'n caigué.

Si miereu el vent d'on ve, veureu el pomer com dansa,
si mireu el vent d'on ve, veureu com dansa el pomer.

2 pometes té el pomer, de 2 una, de 2 una,
2 pometes té el pomer, de 2 una li'n caigué.

Si miereu el vent d'on ve, veureu el pomer com dansa,
si mireu el vent d'on ve, veureu com dansa el pomer.

1 pometa té el pomer, d'1 una, d'1 una,
1 pometa té el pomer, d'1 una li'n caigué.

Si miereu el vent d'on ve, veureu el pomer com dansa,
si mireu el vent d'on ve, veureu com dansa el pomer.
    SONG
    assert_equal expected, ::Pometes.new.song
  end
end
