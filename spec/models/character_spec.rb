require 'rails_helper'

RSpec.describe Character, type: :model do

  before(:each) do
    @character = FactoryBot.create(:character)
  end

  it "has a valid factory" do
    # teste toujours tes factories pour voir si elles sont valides
    expect(build(:character)).to be_valid
  end

  context "validations" do

    it "is valid with valid attributes" do
      expect(@character).to be_a(Character)
    end

    describe "attributes" do
      it "should have a name" do
        expect(@character).to validate_presence_of(:name)
      end

      it "should have life_points" do
        expect(@character).to validate_presence_of(:life_points)
      end

      it "should have numbers as life_points" do
        expect(@character).to validate_numericality_of(:life_points)
      end

      it "should have attack_points" do
        expect(@character).to validate_presence_of(:attack_points)
      end

      it "should have numbers as attack_points" do
        expect(@character).to validate_numericality_of(:attack_points)
      end
    end

  end


  context "associations" do

    describe "some associations" do

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
