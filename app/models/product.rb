class Product < ActiveRecord::Base
  validates :product_name, presence: true
  validates :product_price, presence: true
  validate :product_name_camel_case
  validate :product_price_can_not_be_less_then_zero

  after_save :print_confitmation

  private

  def product_name_camel_case
    puts "validation check"
    if !(product_name[0].to_i > 65 && product_name[0].to_i < 90)
      errors.add(:product_name, "Not Valid.")
    end
  end

  def product_price_can_not_be_less_then_zero
    puts "validation check"

    if product_price < 0
      errors.add(:product_price, "Cannot be less than zero.")
    end
  end

  def print_confitmation
    puts "Product saved !"
  end
end
