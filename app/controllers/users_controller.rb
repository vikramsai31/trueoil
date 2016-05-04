class UsersController < ApplicationController
   before_filter :authenticate_user!
  before_action :set_user, only: [:show]

  def index
    redirect_to root_path
  end

  def show
     @makes= User.getmakes 
     @models = User.getmodels(params[:makeid])
     @years = User.getyears(params[:model_name],params[:makeid])
     @user = set_user
     @cars = @user.cars
  end
  
  def getmodel
     @models = User.getmodels(params[:makeid].to_f)
      render :partial => "models", :locals => { :models => @models}  
  end
  
  def getyear
     @years = User.getyears(params[:modelid],params[:makeid].to_f)
     render :partial => "years", :locals => { :years => @years} 
  end
  
  def addcar
     makemodel=User.getmakemodel(params[:make].to_i,params[:models])    
    @cars=UserCar.new do |u|
      u.user_id=params[:id]
      u.make=makemodel['make']
      u.model=makemodel['model']
      u.year=params[:years]
    end
   @cars.save!
   
   redirect_to user_path(params[:id]) 
  end
  
  def addservice
    @user = set_user
    
    @userservice=UserCarService.new do |u|
      u.user_id=params[:id]
      u.car_id=params[:car]
      u.mileage =params[:mileage]
      u.service_type=params[:service_type]
      u.service_date=params[:service_date]
      u.reminder_date=params[:reminder_date]
    end
   @userservice.save!
   redirect_to addservice_path(params[:id]) 
  end
  
  def showservice
    @user = set_user
    @cars = @user.cars
    @services=DealerService.all
    
  end
  
  def addreminder
    @user = set_user
    
    @userremind=UserReminder.new do |u|
      u.user_id=params[:id]
      u.car_id=params[:car]
      u.service_type=params[:service_type]
      u.reminder_date=params[:reminder_date]
      u.active_status=0
    end
   @userremind.save!
   redirect_to addreminder_path(params[:id]) 
   
  end
  
  def showreminder
    @user = set_user
    @cars = @user.cars
    @services=DealerService.all
    
  end
 
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
      #@user=user_path(current_user.id)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:email, :roles => [])
    end
end