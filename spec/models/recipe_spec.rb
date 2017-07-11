require "rails_helper"

RSpec.describe Recipe, :type => :model do
  it "orders by last name" do
    lindeman = Recipe.create!(tittle: "Andy", instructions: "Lindeman")
    chelimsky = Recipe.create!(tittle: "David", instructions: "Chelimsky")

    expect(Recipe.all.order(:tittle)).to eq([lindeman, chelimsky])
  end
end
