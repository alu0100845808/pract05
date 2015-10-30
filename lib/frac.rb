class Fraccion
  attr_reader :num, :denom
 
 

  def mcd(x, y) ## Algoritmo de Euclides
    x, y = x.abs, y.abs
      while y != 0
        x, y = y, x % y
      end
    x
  end
 
 
 def initialize(num,denom) #minimiza al construir ^^
 raise TypeError, "El denominador debe ser mayor que 0" if @denom.eql? 0
 raise TypeError, "El denominador debe ser un numero" if !@denom.is_a Integer
 raise TypeError, "El numerador debe ser un numero" if !@num.is_a Integer
  @num=num
  @denom=denom
  maxcomdiv = mcd(@num,@denom)
  @num=num/maxcomdiv
  @denom=denom/maxcomdiv
 end
 
 
 
 ##suma
  def +(other)
    if other.is_a? Integer then
		  return Fraccion.new(other,1)
		else
      return Fraccion.new((other.denom * @num)+(@denom * other.num), @denom * other.denom)
    end
  end
    
    
    
  ##resta
  def -(other)
    return Fraccion.new((other.denom * @num) - (@denom * other.num), @denom * other.denom)
  end
  
  
  ##mult
  def *(other)
    if (other.is_a? Integer) then
			other = Fraccion.new(other,1)
		end
    return Fraccion.new(@num * other.num, @denom * other.denom)
  end
  
  
  ##div
  def /(other)
    return Fraccion.new(@num * other.denom, @denom * other.num)
  end
  
  def to_s
    @num.to_s + "/"+ @denom.to_s
  end
    

end