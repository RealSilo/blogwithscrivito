require 'rails_helper'

feature "deleting post" do
  let(:user) { create(:user) }
  let(:post) { create(:post, user: user) }

  scenario "successfully" do
    sign_in(user)
    visit post_path(post)
    click_on "Delete"
    page.accept_confirm do
      click_link('OK')
    end    
    expect(page).to have_content("this updated post")
  end
end