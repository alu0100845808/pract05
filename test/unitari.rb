require "test/unit"
require "lib/frac.rb"
 
class TestFracciones < Test::Unit::TestCase
  def setup
  @dostercios=Fraccion.new(2,3)
  @cincotercios=Fraccion.new(5,3)
  end
  
  def create
    assert_equal("2/3", @dostercios.to_s)
  end
  
  def test_suma
    assert_equal("7/3", (@dostercios+@cincotercios).to_s)
  end
  
  
  def test_resta
    assert_equal("1/1", (@cincotercios-@dostercios).to_s)
    
  end
  
  
  def test_mult
  assert_equal("10/9", (@cincotercios*@dostercios).to_s)
  
  end
  
  def test_div
    assert_equal("5/2", (@cincotercios/@dostercios).to_s)
  
  end
  
  def test_fails
    #assert_equal("6/3", (@dostercios+@cincotercios).to_s)
    #assert_equal("7/3", (@dostercios-@cincotercios).to_s)
    #assert_equal("7/3", (@dostercios*@cincotercios).to_s)
    #assert_equal("7/3", (@dostercios/@cincotercios).to_s)
    @dostercios=Fraccion.new('a',3)
  end
  
  
end