require 'test/unit'
require_relative 'calculator'

class CalculatorTest < Test::Unit::TestCase
  def setup
  	@calc = Calculator.new('test')
  end

  def test_addtion
  	assert_equal 4, @calc.add(2,2)
  end

  def test_divide_by_zero

    assert_raise ZeroDivisionError do 
      @calc.divide(1, 0)
    end
  end
end

clas