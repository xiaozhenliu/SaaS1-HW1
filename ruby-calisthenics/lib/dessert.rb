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
    @name = flavor << " jelly bean"
    @calories = 5
  end
  
  def delicious?
    return false if @name == "licorice"<<" jelly bean"
    return true
    end
end
