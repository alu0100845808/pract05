require "test/unit"
require "lib/frac.rb"
 
class TestFracciones < Test::Unit::TestCase
  def setup
  @dostercios=Fraccion.new(2,3)
  @cincotercios=Fraccion.new(5,3)
  end
  
  def test_suma
    assert_equal("2/3", @dostercios.to_s)
    assert_equal("7/3", (@dostercios+@cincotercios).to_s)
  end
  
  
  def test_resta
    #assert_equal("7/3", (@cincotercios-@dostercios).to_s)
    
  end
  
  
  def test_mult
  
  
  end
  
  def test_div
    
  
  end
  
  
end