require 'rails_helper'

RSpec.describe "visions/index.html.erb", type: :view do

  let(:visions_with_image) { create_list(:vision_with_image, 3) }
  let(:visions_without_image) { create_list(:vision_without_image, 4) }

  before do
    assign(:visions, visions_with_image + visions_without_image)
  end

  it "lists all 7 existing visions" do
   render

   expect(rendered).to have_selector("div.card.vision_preview", count: 7)
  end

  it "creates half the number of clearfixes (3)" do
   render

   expect(rendered).to have_selector("div.clearfix", count: 3)
  end

  it "renders images for each vision with image" do
   render

   expect(rendered).to have_selector("div.card.vision_preview .card-image", count: 3)
  end

end
