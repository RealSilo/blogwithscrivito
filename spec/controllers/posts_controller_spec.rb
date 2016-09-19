require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  describe "when user is logged in" do
    before(:each) do
      login_user
    end

    it "should have a current_user" do
      expect(subject.current_user).to_not eq(nil)
    end

    describe "GET index" do
      let(:post) { create(:post) }
      before(:each) do
        get :index
      end
        
      it "assigns posts" do
        expect(assigns(:posts)).to eq([post])
      end

      it { is_expected.to respond_with 200 }
      it { is_expected.to render_template :index }
    end

    describe "GET show" do
      let(:post) { create(:post) }
      before(:each) do
        get :show, id: post.id
      end
      
      it "assigns post" do
        expect(assigns(:post)).to eq(post)
      end

      it { is_expected.to respond_with 200 }
      it { is_expected.to render_template :show }
    end
  end
end
