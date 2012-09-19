require 'spec_helper'

describe "StaticPages" do
  describe "Test home" do
    it "test static_pages/home" do
      visit '/static_pages/home' 
      page.should have_css("body", text: "Sample App")
    end
  end
  describe "Test help" do
    it "test staticpages/help" do
      visit '/static_pages/help' 
      page.should have_content("Help")
    end
  end
  describe "Test about" do
    it "test static_pages/about" do
      visit '/static_pages/about' 
      page.should have_content("About Us")
    end
  end
end
