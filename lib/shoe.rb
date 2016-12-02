class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    @brand = brand
    save_unique_brand(brand)
  end

  def save_unique_brand(new_brand)
    if !BRANDS.include?(new_brand)
      BRANDS << new_brand
    end
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end
