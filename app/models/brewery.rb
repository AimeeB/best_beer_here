class Brewery
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Slug
  
  field :name, :type => String
  slug :name
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