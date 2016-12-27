require 'rails_helper'

RSpec.describe "identities/new.html.erb", type: :view do

  context "when identity object exists" do

    before do
      assign(:identity, build(:identity))
      assign(:vision, build(:vision))
    end

    it "shows the identity form" do
      render
      expect(rendered).to have_selector("form")
    end

    it "has a skip button" do
      render
      expect(rendered).to have_selector("a", text: "Skip to Vision")
    end

  end

  context "when identity object does not exist" do

    before do
      assign(:identity, nil)
    end

    it "shows an error" do
      render
      expect(rendered).not_to have_selector("form")
      expect(rendered).to have_text("Error")
    end

  end

end
