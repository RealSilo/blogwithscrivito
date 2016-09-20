require 'rails_helper'

RSpec.describe PagesController, type: :controller do
  describe "GET about" do
    before(:each) do
      get :about
    end
      
    it { is_expected.to respond_with 200 }
    it { is_expected.to render_template :about }
  end
end