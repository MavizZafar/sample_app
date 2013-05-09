require 'spec_helper'


describe "Static pages" do
  let(:base_title) { "Ruby on Rails Tutorial Sample App | " }
  subject { page }
  describe "Home page" do
    before { visit root_path}
    it { should have_selector('title', text: "#{base_title}Home") }
     it { should have_selector('h1', text: "Sample Application") }  
  end

 describe "Help page" do 
  before { visit help_path }
 	it { should have_selector('title', text: "#{base_title}Help")}
  it {should have_selector('h1', text: "help")}
end

 describe "About page" do 
  before { visit about_path}
  it { should have_selector('title', text: "#{base_title}About")}
  it {should have_selector('h1', text: "About Us")}
 end

 describe "Contact page" do 
   before { visit contact_path}
   it {should have_selector('title', text: "#{base_title}Contact")}
   it {should have_selector('h1'), text: "Contact"}
  end
end