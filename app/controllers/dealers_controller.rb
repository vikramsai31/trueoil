require 'net/http'
require 'json'
class DealersController < ApplicationController
  
  def index  
     @states= Dealer.select(:state).uniq.order('state ')
    @dealers = Dealer.dealers_by_city(params)   
  end
  
   def update_city_select
     
     @cities= Dealer.select(:city).uniq.where("state=?",params[:state]).order('city ')
     render :partial => "cities", :locals => { :cities => @cities }  
   end 
  
 
 
end
