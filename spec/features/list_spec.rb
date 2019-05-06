require 'rails_helper'


feature 'list',type: :feature do
  let(:user) {create(:user)}

  scenario 'post list' do
    visit root_path
    expect(page).to have_no_content('めもづくり')
    visit new_user_session_path
    fill_in 'user_email', with: user.email
    fill_in 'user_password',with: user.password
    find('input[name="commit"]').click

  end
end
