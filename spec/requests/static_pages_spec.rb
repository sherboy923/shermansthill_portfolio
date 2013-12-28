require 'spec_helper'

describe "Static pages" do
  subject { page }
  let(:base_title) { "Sherman St. Hill Portfolio"}

  describe "Home page" do
    before { visit root_path }

    it { should have_content('Sherman St. Hill Portfolio') }
    it { should have_title("Sherman St. Hill Portfolio") }
    it { should_not have_title('| Home') }
  end

  describe "Resume page" do
    before { visit resume_path }

    it { should have_content('Resume') }
    it { should have_title("#{base_title} | Resume") }
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_content('Contact Me') }
    it { should have_title("#{base_title} | Contact Me") }
  end

  describe "Projects page" do
    before { visit projects_path }

    it { should have_content('My Projects') }
    it { should have_title("#{base_title} | My Projects") }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_content('About Me') }
    it { should have_title("#{base_title} | About Me") }
  end
end
