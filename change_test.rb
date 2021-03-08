require 'minitest/autorun'

require_relative 'change'

class ChangeTest < Minitest::Test
  def test_zero
    assert_equal [], Change.make_change(0)
  end

  def test_one
    assert_equal [1], Change.make_change(1)
  end

  def test_forty_two
    assert_equal [25, 10, 5, 1, 1], Change.make_change(42)
  end

  def test_ninety_nine
    assert_equal [25, 25, 25, 10, 10, 1, 1, 1, 1], Change.make_change(99)
  end

  def test_eu_zero
    assert_equal [], Change.make_change(0, Change::EU_COIN_VALUES)
  end

  def test_eu_one
    assert_equal [1], Change.make_change(1, Change::EU_COIN_VALUES)
  end

  def test_eu_forty_two
    assert_equal [20, 20, 2], Change.make_change(42, Change::EU_COIN_VALUES)
  end

  def test_eu_ninety_nine
    assert_equal [50, 20, 20, 5, 2, 2], Change.make_change(99, Change::EU_COIN_VALUES)
  end
end
