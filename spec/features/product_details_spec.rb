require 'rails_helper'

RSpec.feature "ProductDetails", type: :feature do
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
  scenario "They see product detail on clicking details" do
    visit root_path

    # commented out b/c it's for debugging only
    click_link('Details',match: :first)
    expect(page).to have_css 'section.products-show'
    save_screenshot
  end
end
