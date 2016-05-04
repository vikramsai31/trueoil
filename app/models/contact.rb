class Contact < ActiveRecord::Base
  attr_accessible :name,:email,:zip,:description
end
