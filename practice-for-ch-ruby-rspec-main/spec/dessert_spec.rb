require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }

  subject(:dessert) {Dessert.new('cake', 60, 'Chef Leah')}

  describe "#initialize" do
    it "sets a type" do
      expect(dessert.type).to eq('cake')
    end

    it "sets a quantity" do
      expect(dessert.quantity).to eq(60)
    end

    it "starts ingredients as an empty array" do 
      expect(dessert.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do 
      expect {Dessert.new('cake','many', chef)}.to raise_error(ArgumentError)
    end

  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      expect(dessert.ingredients).to_not include('chocolate')
      dessert.add_ingredient('chocolate')
      expect(dessert.ingredients).to include('chocolate')
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      ingredients = ['flour', 'eggs', 'vanilla']

      ingredients.each do |ingredient|
        dessert.add_ingredient(ingredient)
      end

      expect(dessert.ingredients).to eq(ingredients)
      dessert.mix!
      expect(dessert.ingredients).not_to eq(ingredients)
      expect(dessert.ingredients.sort).to eq(ingredients.sort)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      expect(dessert.eat(50)).to eq(10)
    end
      
    it "raises an error if the amount is greater than the quantity" do
      expect {dessert.eat(61)}.to raise_error(ArgumentError)
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end