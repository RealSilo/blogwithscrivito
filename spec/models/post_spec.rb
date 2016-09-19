require 'rails_helper'

RSpec.describe Post, type: :model do
  describe "model validations" do
    it "has a valid factory" do
      expect(build_stubbed(:post)).to be_valid
    end

    it "is not valid without user" do
      expect(build_stubbed(:post, user: nil)).not_to be_valid
    end

    it "is not valid without title" do
      expect(build_stubbed(:post, title: nil)).not_to be_valid
    end

    it "is not valid without body" do
      expect(build_stubbed(:post, body: nil)).not_to be_valid
    end
  end

  it { is_expected.to belong_to(:user) }
end
