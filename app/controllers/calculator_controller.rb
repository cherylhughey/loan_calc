class CalculatorController < ApplicationController
  def index
  end

  def new
    calculator = Calculator.new
    calculator.loan = params[:loan].to_i
    calculator.rate = params[:rate].to_f/100
    calculator.time = params[:time].to_i
    @payment = calculator.payment
    render :index
  end
end
