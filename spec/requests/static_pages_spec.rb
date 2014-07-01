require 'spec_helper'

describe "StaticPages" do

subject { page }

  describe "Home page" do
    before { visit root_path }
    it { should have_content('Sample App') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }

  end

  describe "Help page" do
    before{ visit help_path }
  	it { should have_content('Help') }
    it { should have_title(full_title('Help')) }
  end

  describe "About page" do
    before{ visit about_path }
    it { should have_content('About me') }
    it { should have_title(full_title('About me')) }
  end


  describe "Contact page" do
    before{ visit contact_path }
  	it "should have the content 'Contact' " do
  		expect(page).to have_content('Contact')
  	end

  	it 'should have right title' do
  		expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
  	end
  end



end
