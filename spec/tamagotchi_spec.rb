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
      expect(my_pet.alive?()).to(eq(true))
    end
  end
end
