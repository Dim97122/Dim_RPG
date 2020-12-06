require 'rails_helper'

RSpec.describe Game, type: :model do

  before(:each) do
    @game = FactoryBot.create(:game) do |game|
      game.turns.create(attributes_for(:turn))
    end
  end

  it "has a valid factory" do
    # teste toujours tes factories pour voir si elles sont valides
    expect(build(:game)).to be_valid
  end

  context "validations" do

    it "is valid with valid attributes" do
      # création qui est valide
    end

    describe "#some_attribute" do
      # teste cet attribut, en fonction de la validation que tu lui as donnée
    end

  end


  context "associations" do

    describe "turns" do
      it "should have at least one turn" do
        expect(@game).to have_many(:turns)
      end
    end

  end


  context "callbacks" do

    describe "some callbacks" do
      # teste ce callback
    end

  end


  context "public instance methods" do

    describe "#some_method" do
      # teste cette méthode
    end

  end


  context "public class methods" do

    describe "self.some_method" do
      # teste cette méthode
    end

  end

end
