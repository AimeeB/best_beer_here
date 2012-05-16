class Bar
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Slug
  
  field :name
  slug :name
  field :address
  field :url
  field :yelp_url
  field :image_url
  
  has_and_belongs_to_many :beers
  
end