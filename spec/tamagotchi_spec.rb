require('rspec')
require('tamagotchi')

describe(Tamagotchi) do
  describe("#initialize") do
    it("sets the name and life levels of a new Tamagotchi") do
      my_pet = Tamagotchi.new("Batman")
      expect(my_pet.name()).to(eq("Batman"))
      expect(my_pet.food_level()).to(eq(10))
      expect(my_pet.activity_level()).to(eq(10))
      expect(my_pet.sleep_level()).to(eq(10))
    end
  end
  describe("#alive?") do
    it("is alive if all stat levels are above 0") do
      my_pet = Tamagotchi.new("Batman")
      expect(my_pet.alive?()).to(eq("alive"))
    end
    it("is dead if any stat level is 0") do
      my_pet = Tamagotchi.new("Batman")
      my_pet.set_food_level(0)
      expect(my_pet.alive?()).to(eq("dead"))
    end
  end
  describe("#time_passes") do
    it("decreases each stat level the Tamagotchi has left by 1") do
      my_pet = Tamagotchi.new("Batman")
      my_pet.time_passes()
      expect(my_pet.food_level()).to(eq(9))
    end
  end
end
