class Dealer < ActiveRecord::Base
  attr_accessible :business_name,:city,:state,:latitude,:longitude
  geocoded_by :full_address
after_validation :geocode 
  
 has_many :prices, class_name:"DealerPrice", foreign_key: "dealer_id"

def full_address
  [address, city, state].compact.join(',')
end

def self.dealers_by_city(search)
  rev=[]
  puts search[:city]
  puts search[:state]
  sql_str=where("city like  '#{search[:city]}%' and state='#{search[:state]}'")
  sql_str.each do | id|
    rev << id 
   # rev + dealer_by_phone(id.phone)
  end
  rev
end

def self.dealer_by_phone(id)
  rev={}
  fetch_url(id)["businesses"].each do |res|
      rev['review_count']=res["review_count"]
      rev['rating_image_url']=res["rating_img_url"]
      rev['avg_rating']=res["avg_rating"]
      rev['photo_url']=res["photo_url"]
  end
  rev
end

def self.fetch_url(id)
   uri= URI("http://api.yelp.com/phone_search?phone=#{id}&ywsid=JAz2Jk7D2qjDgf08BCLBmQ")
    result = Net::HTTP.get(uri)
    return JSON.parse(result)
  end

end
