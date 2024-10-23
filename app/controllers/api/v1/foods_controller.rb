class Api::V1::FoodsController < ApplicationController
  def index
    @foods = Food.all
    json_response @foods
  end 

  def show
    @food = Food.find params[:id]
    json_response @food
  end
end
