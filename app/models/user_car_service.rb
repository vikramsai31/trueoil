class UserCarService < ActiveRecord::Base
  belongs_to :user
  belongs_to :user_car
  
end
