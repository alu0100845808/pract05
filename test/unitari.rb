require 'test/unit'
 
class TestSimpleNumber < Test::Unit::TestCase
  def setup
  @dostercios=Fracciones.new(2,3)      
  end
  def test_simple
    @dostercios.denom
    @dostercios.num
  end
 
end