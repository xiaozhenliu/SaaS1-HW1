class Dessert
  def initialize(name, calories)
    attr_accessor :name
    attr_accessor :calories
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
  def initialize(flavor)
    super
    attr_accessor :flavor
    @flavor = flavor
    @name = @name + " jelly bean"
    @calories = 5
  end
  
  def delicious?
    return false if @flavor = "licorice"
    return true
    end
end
