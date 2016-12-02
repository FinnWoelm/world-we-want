require 'rails_helper'

RSpec.describe "visions/show.html.erb", type: :view do

  let(:vision) { create(:vision) }

  before do
    assign(:vision, vision)
    assign(:next_vision, create(:vision))
    assign(:previous_vision, create(:vision))
    assign(:random_vision, create(:vision))
  end

  it "shows the vision id" do
    render

    expect(rendered).to have_selector(".card-header", text: "Vision ##{vision.id}")
  end

  context "when vision content contains html tags" do

    before do
      vision.content += "<strong>test</strong>"
      vision.save
    end

    it "filters the html tags" do
      render

      expect(rendered).not_to have_selector("strong")
      expect(rendered).to have_text("<strong>test</strong>")
    end

  end

  context "when the vision has an image" do

    let(:vision) { create(:vision_with_image) }

    it "shows the image" do
      render

      expect(rendered).to have_selector(".card-image")
    end
  end

  context "when the vision does not have an image" do

    let(:vision) { create(:vision_without_image) }

    it "does not show an image" do
      render

      expect(rendered).not_to have_selector(".card-image")
    end
  end

  context "when next_vision is nil" do

    before do
      assign(:next_vision, nil)
    end

    it "disables the next button" do
      render

      expect(rendered).to have_selector("a.btn.disabled", text: "Next")
    end
  end

  context "when previous_vision is nil" do

    before do
      assign(:previous_vision, nil)
    end

    it "disables the next button" do
      render

      expect(rendered).to have_selector("a.btn.disabled", text: "Previous")
    end
  end

end
