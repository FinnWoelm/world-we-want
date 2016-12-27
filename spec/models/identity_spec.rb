require 'rails_helper'

RSpec.describe Vision, type: :model do

  subject(:identity) { build(:identity) }

  it "has a valid factory" do
    is_expected.to be_valid
  end

  describe "associations" do
    it { is_expected.to belong_to(:vision).dependent(false) }
  end

end
