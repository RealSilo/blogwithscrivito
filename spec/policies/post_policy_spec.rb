require 'rails_helper'

describe PostPolicy do
  subject { PostPolicy }

  describe "policies belongs to post" do
    let(:user) { create(:user) }
    let(:other_user) { build_stubbed(:user) }
    let(:post) { create(:post, user: user) }

    permissions :index? do

      it "allows access for anybody" do
        expect(subject).to permit(user)
        expect(subject).to permit(other_user)
      end
    end

    permissions :new?, :create? do

      it "only allows access for users with profile" do
        expect(subject).to permit(user)
        expect(subject).to permit(other_user)
      end
    end

    permissions :show? do

      it "allows access for users with profile" do
        expect(subject).to permit(user, post)
        expect(subject).to permit(other_user, post)
      end
    end

    permissions :edit?, :update?, :destroy? do

      it "only allows access for post user" do
        expect(subject).to permit(user, post)
        expect(subject).to_not permit(other_user, post)
      end
    end
  end
end