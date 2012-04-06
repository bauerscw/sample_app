require 'spec_helper'

describe "Static Pages" do

  title='Ruby on Rails Tutorial Sample App'

  describe "Home page" do
    before(:each) do
      visit root_path
    end
    it "should have the h1 'Sample App'" do
      page.should have_selector('h1',:text => 'Sample App')
    end
    it "should have the base title" do
      page.should have_selector('title',
        :text => "#{title}")
    end
    it "should not have a custom page title" do
      page.should_not have_selector('title',:text => '| Home')
    end
  end

  describe "Help page" do
    before(:each) do
      visit help_path
    end
    it "should have the content 'Help'" do
      page.should have_selector('h1',:text => 'Help')
    end
    it "should have the right title" do
      page.should have_selector('title',:text => "#{title} | Help")
    end
  end

  describe "About page" do
    before(:each) do
      visit about_path
    end
    it "should have the content 'About Us'" do
      page.should have_selector('h1',:text => 'About Us')
    end
    it "should have the base title" do
      page.should have_selector('title',
       :text => "#{title} | About Us")
    end
  end

  describe "Contact" do
    before(:each) do
      visit contact_path
    end
    it "should have the content 'Sample App'" do
      page.should have_selector('h1',:text => 'Contact')
    end
    it "should have the right title" do
      page.should have_selector('title',
        :text => "#{title} | Contact")
    end
  end

end
