
class WelcomeController < ApplicationController
  def index
    @states= Dealer.select(:state).uniq.order('state ')
  end
  
    
end
