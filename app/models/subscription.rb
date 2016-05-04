class Subscription < ActiveRecord::Base
  attr_accessible :name,:email,:zip,:state,:city,:address
end
