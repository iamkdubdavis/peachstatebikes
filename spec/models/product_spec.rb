require "rails_helper"

RSpec.describe Product, :type => :model do
    before do
      @product = Product.create!(name: "Mountain Bike", description: "Mens Mountain Bike", colour: "red")
    end
    
    subject { @product }
    
    it "should return name description and colour" do
      expect(@product.name).to eq "Mountain Bike"
      expect(@product.description).to eq "Mens Mountain Bike"
      expect(@product.colour).to eq "red"
    end
  end