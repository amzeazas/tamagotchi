class Tamagotchi
  define_method(:initialize) do |name|
    @name = name
  end

  define_method(:name) do
    @name
  end
  define_method(:food_level) do
    @food_level = 10
  end
  define_method(:activity_level) do
    @activity_level = 10
  end
  define_method(:sleep_level) do
    @sleep_level = 10
  end

  define_method(:alive?) do
    if @food_level != 0 && @activity_level != 0 && @sleep_level != 0
      "alive"
    else
      "dead"
    end
  end
  define_method(:set_food_level) do |new_level|
    @food_level = new_level
  end
end
