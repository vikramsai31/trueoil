require 'json'
class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  attr_accessible :email, :password, :password_confirmation, :zip,:provider, :uid
  devise :database_authenticatable, :registerable,:omniauthable,
         :recoverable, :rememberable, :trackable, :validatable
   has_many :cars, :class_name => "UserCar", :foreign_key =>'user_id'
   has_many :reminders , :class_name => "UserReminder", :foreign_key => 'user_id'
   has_many :services , :class_name => "UserCarService", :foreign_key => 'user_id'
    
  def self.find_for_google_oauth2(access_token, signed_in_resource=nil)
    data = access_token.info
    user = User.where(:provider => access_token.provider, :uid => access_token.uid ).first
    if user
      return user
    else
      registered_user = User.where(:email => access_token.info.email).first
      if registered_user
        return registered_user
      else
        user = User.create(name: data["name"],
          provider:access_token.provider,
          email: data["email"],
          uid: access_token.uid ,
          password: Devise.friendly_token[0,20]
        )
      end
    end
   end
   
   def self.getmakes
     json = File.read(Rails.root.join('config/cars_list.json'))
     car = JSON.parse(json)
     return car
   end
   
   def self.getmodels(makeid)
     models=[]
     json = File.read(Rails.root.join('config/cars_list.json'))
     car = JSON.parse(json)
     puts "************"
       puts makeid
       puts "***********"
     car['makes'].each do |s|
       #puts s['id']
       
       if s['id'] == makeid
         puts "true"
      models = s['models'].map {|h1| [h1['name'],h1['id']]}
       end
     end
     models
   end
   
   def self.getyears( model_name,makeid)
     years=[]
     json = File.read(Rails.root.join('config/cars_list.json'))
     car = JSON.parse(json)
     car['makes'].each do |s|
       if s['id'] == makeid
           s['models'].each do |model|
              if model['id']== model_name
                years = model['years'].map{|f1| [f1['year'],f1['year']]}
              end
           end
       end
     end
     years
   end
   
   def self.getmakemodel(makeid,model_name)
     json = File.read(Rails.root.join('config/cars_list.json'))
     mycar={}
     car = JSON.parse(json)
     car['makes'].each do |s|
       if s['id'].to_i == makeid
         mycar['make']= s['name']
         end
         s['models'].each do |model|
              if model['id']== model_name
                mycar['model']=model['name']
              end
           end 
       end
       mycar
   end
end
