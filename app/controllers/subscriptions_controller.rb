class SubscriptionsController < ApplicationController
  def new
    @subscription=Subscription.new
    
  end

  def create
    @subscription = Subscription.new(params[:user])
    if @subscription.save
      redirect_to root_path
    else
      # This line overrides the default rendering behavior, which
      # would have been to render the "create" view.
      render "new"
    end
  end
  
 
  
   private
    # Using a private method to encapsulate the permissible parameters
    # is just a good pattern since you'll be able to reuse the same
    # permit list between create and update. Also, you can specialize
    # this method with per-user checking of permissible attributes.
    def user_params
      params.require(:subscription).permit(:name, :email,:zip,:address,:zip,:state)
    end
end
