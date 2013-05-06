require 'spec_helper'


describe "Static pages" do
  let(:base_title) { "Ruby on Rails Tutorial Sample App | " }
  describe "Home page" do
    it "should have the content 'Sample application'" do
     visit 'http://0.0.0.0:3000/static_pages/home'
     page.should have_content('Sample application')
    end
    it "should have the right title" do 
 	visit "/static_pages/home"
 	page.should have_selector('title', :text => "#{base_title}Home")
    end
  end

 describe "Help page" do 
 	it "should have the content 'help'" do 
 		visit 'http://0.0.0.0:3000/static_pages/help'
 		page.should have_content('help')
 	end
 	it "should have the right title" do 
 	visit "/static_pages/help"
 	page.should have_selector('title', :text => "#{base_title}Help")
    end 
end
 describe "About page" do 
 	it "shoyuld have the content 'About Us'" do 
 		visit 'http://0.0.0.0:3000/static_pages/about'
 		page.should have_content('About Us')
 	end 
 	it "should have the right title" do 
 	visit "/static_pages/about"
 	page.should have_selector('title', :text => "#{base_title}About Us")
    end
 end
   

end