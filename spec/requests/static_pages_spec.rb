require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do

    it "should have the content Sample App" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "should have the right title" do
    	visit '/static_pages/home'
    	expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
    end

  end

  describe "Help page" do
  	it "should have the content help" do
  		visit '/static_pages/help'
  		expect(page).to have_content('Help')
  	end

  	it "should have right title" do
  		visit '/static_pages/help'
  		expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
  	end

  end

  describe "About page" do
  	it "should have the content 'About me' " do
  		visit '/static_pages/about'
  		expect(page).to have_content('About me')
  	end

  	it "should have right title" do
  		visit '/static_pages/about'
  		expect(page).to have_title("Ruby on Rails Tutorial Sample App | About")
  	end

  end


  describe "Contact page" do
  	it "should have the content 'Contact me' " do
  		visit '/static_pages/contact'
  		expect(page).to have_content('Contact me')
  	end

  	it 'should have right title' do
  		visit '/static_pages/contact'
  		expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
  	end
  end



end
