require 'rails_helper'

RSpec.describe CalculatorController, type: :controller do
  let(:calculator) { Calculator.new}

  describe "GET index" do
    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end

  it "Calculates monthly loan payment amount correctly from user input" do
    calculator.loan = 1000
    calculator.time = 12
    calculator.rate =  0.05
    calculator.generate
    expect(calculator.generate).to eq(85.61)
  end
end
