require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Sherman St. Hill Portfolio"}

  describe "Home page" do

    it "should have the content 'Sherman St. Hill'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sherman St. Hill')
    end
  end

  describe "Resume page" do

    it "should have the content 'Resume'" do
      visit '/static_pages/resume'
      expect(page).to have_content('Resume')
    end
  end

  describe "Contact page" do

    it "should have the content 'Contact Me'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact Me')
    end
  end

  describe "Projects page" do

    it "should have the content 'My Projects'" do
      visit '/static_pages/projects'
      expect(page).to have_content('My Projects')
    end
  end

  describe "About page" do

    it "should have the content 'About Me'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Me')
    end
  end
end
