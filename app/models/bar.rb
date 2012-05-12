class Bar
  include Mongoid::Document
  
  field :name
  field :address
  field :url
  field :image_url
  
  has_many :beers
  
end