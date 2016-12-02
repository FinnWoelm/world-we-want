require 'rails_helper'

RSpec.describe Vision, type: :model do

  subject(:vision) { build(:vision) }

  it "has a valid factory" do
    is_expected.to be_valid
  end

  describe "associations" do
    it { is_expected.to have_attached_file(:image) }
  end

  describe "validations" do
    it { is_expected.to validate_attachment_content_type(:image).
        allowing('image/png', 'image/gif', 'image/jpg').
        rejecting('text/plain', 'text/xml') }
    it { is_expected.to validate_attachment_size(:image).less_than(5.megabytes) }
  end
end
