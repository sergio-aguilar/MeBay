class Ad < ActiveRecord::Base
  attr_accessible :description, :email, :img_url, :name, :price, :seller_id
  validates_presence_of :price
  validates_presence_of :name
end
