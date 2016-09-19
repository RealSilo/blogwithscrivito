require 'rails_helper'

feature "updating post" do
  let(:user) { create(:user) }
  let(:post) { create(:post, user: user) }

  scenario "successfully" do
    sign_in(user)
    visit edit_post_path(post)
    fill_in "post[body]", with: "this updated post"
    click_on "Update Post"
    expect(page).to have_content("this updated post")
  end
end