class Brewery
  include Mongoid::Document
  
  field :name, :type => String
  field :address1, :type => String
  field :city, :type => String
  field :state, :type => String
  field :zip, :type => String
  field :address2, :type => String
  field :address3, :type => String
  field :description, :type => String
  field :yr_founded, :type => Integer
  field :brewers, :type => String
  field :image_url
  field :url, :type => String
  
  has_many :beers
  
end