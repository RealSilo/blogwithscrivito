require 'rails_helper'

feature "creating post" do
  let(:user) { create(:user) }

  scenario "successfully" do
    sign_in(user)
    visit new_post_path
    fill_in "post[title]", with: "my first post"
    fill_in "post[body]", with: "this awesome post"
    click_on "Create Post"
    expect(page).to have_content("my first post")    
  end
end