require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it "is valid with valid attributes" do
      product = Product.new
      category = Category.new
      product.name ="roses"
      product.price = 55
      product.quantity = 5
      product.category = category

      expect(product).to be_valid
    end
    it "is invalid with nothing passed" do
      product = Product.new
      category = Category.new
      product.name =nil
      product.price = nil
      product.quantity = nil
      product.category = nil

      expect(product).to_not be_valid
      expect(product.errors.full_messages).to include("Price cents is not a number")
      expect(product.errors.full_messages).to include("Price is not a number")
      expect(product.errors.full_messages).to include("Name can't be blank")
      expect(product.errors.full_messages).to include("Quantity can't be blank")
      expect(product.errors.full_messages).to include("Category can't be blank")
           
    end
  end
end


