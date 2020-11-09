class PagesController < ApplicationController
  def home
  end 

  def dashboard
    @plants = Plant.all
    @orders = Order.all 
  end  
end
