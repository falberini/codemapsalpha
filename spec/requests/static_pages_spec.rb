require 'spec_helper'

describe "StaticPages" do
  describe "Home Page" do
    it "Should have the content 'learncode'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit "/"
      expect(page).to have_content('learncode')
    end
  end
end
