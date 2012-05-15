class Bar
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Slug
  
  field :name
  slug :name
  field :address
  field :url
  field :image_url
  
  has_many :beers
  
end