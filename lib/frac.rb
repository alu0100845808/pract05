class Fracciones
  attr_reader :num, :denom
 
 

  def mcd(x, y) ## Algoritmo de Euclides
    x, y = x.abs, y.abs
      while y != 0
        x, y = x, x % y
      end
    x
  end
 
 
 def initialize(num,denom) #minimiza al construir ^^
  @num=num
  @denom=denom
  maxcomdiv = mcd(@num,@denom)
  @num=num/maxcomdiv
  @denom=denom/maxcomdiv
 end
 
 
 
 ##suma
  def +(other)
    if other.is_a? Integer then
		  other = Fraccion.new(other,1)
		end
    return Fraccion.new((other.denom * @num) + (@denom * other.num), @denom * other.denom)
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