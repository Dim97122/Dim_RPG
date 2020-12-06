require 'rails_helper'

RSpec.describe Turn, type: :model do

  before(:each) do
    @Turn = FactoryBot.create(:turn)
  end

  it "has a valid factory" do
    # teste toujours tes factories pour voir si elles sont valides
    expect(build(:turn)).to be_valid
  end

  context "validations" do

    it "is valid with valid attributes" do
      expect(@turn).to be_a(Turn)
    end

    describe "attributes" do
      it "should have home_character_life_points" do
        expect(@turn).to validate_presence_of(:home_character_life_points)
      end

      it "should have numbers as home_life_points" do
        expect(@turn).to validate_numericality_of(:home_character_life_points)
      end

      it "should have away_character_life_points" do
        expect(@turn).to validate_presence_of(:away_character_life_points)
      end

      it "should have numbers as attack_points" do
        expect(@turn).to validate_numericality_of(:away_character_life_points)
      end
    end

  end


  context "associations" do

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
