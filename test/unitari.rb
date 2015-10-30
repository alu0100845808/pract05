require "test/unit"
require "lib/frac.rb"
 
class TestFracciones < Test::Unit::TestCase
  def setup
  @dostercios=Fracciones.new(2,3)
  @cincotercios=Fracciones.new(5,3)
  end
  
  def test_suma
    assert_equal("2/3", @dostercios.to_s)
  end
  
  
  def test_resta
    
    
  end
  
  
  def test_mult
  
  
  end
  
  def test_div
    
  
  end
  
  
end