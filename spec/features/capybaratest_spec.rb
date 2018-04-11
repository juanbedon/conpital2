require 'rails_helper'

RSpec.describe "Login in", type: :feature do
  before do
  end

  scenario "The login page exists" do
    visit new_user_session_path
  end
end