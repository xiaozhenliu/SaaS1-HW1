class Dessert
    attr_accessor :name
    attr_accessor :calories
  def initialize(name, calories)

    @name  = name
    @calories = calories
  end
  def healthy?
    return true if calories < 200
    return false
  end
  def delicious?
    return true
  end
end

class JellyBean < Dessert
  attr_accessor :flavor
  def initialize(flavor)
    super

    @flavor = flavor
    @name = @name + " jelly bean"
    @calories = 5
  end
  
  def delicious?
    return false if @flavor = "licorice"
    return true
    end
end
