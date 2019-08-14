require 'rails_helper'

Rails.describe 'StaticPages', type: :system do
  let (:basetitle) {  "Ruby on Rails Tutorial Sample App" }

  describe 'Home' do
    it 'タイトル内容の表示' do
      visit root_path
      expect(page).to have_title basetitle
    end
  end

  describe 'Help' do
    it 'タイトル内容の表示' do
      visit static_pages_help_path
      expect(page).to have_title "Help | #{basetitle}"
    end
  end

  describe 'About' do
    it 'タイトル内容の表示' do
      visit static_pages_about_path
      expect(page).to have_title "About | #{basetitle}"
    end
  end

  describe 'About' do
    it 'タイトル内容の表示' do
      visit static_pages_contact_path
      expect(page).to have_title "Contact | #{basetitle}"
    end
  end
end
