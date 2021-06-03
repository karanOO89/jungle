require 'rails_helper'

RSpec.feature "AddToCarts", type: :feature do
  # pending "add some scenarios (or delete) #{__FILE__}"
  before :each do
    @category = Category.create! name: 'Apparel'
  
    10.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
    end
  end
  scenario "They see cart updations on clicking Add button" do
    visit root_path

    expect(page).to have_text('My Cart (0)')
    page.save_screenshot("cart_0.png", :full => true)
    click_button('Add',match: :first)
    expect(page).to have_text('My Cart (1)')
    save_screenshot("cart_1.png", :full => true)

  end
end
