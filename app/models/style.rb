class Style
  include Mongoid::Document
  
  field :name
  field :description
  field :origin
  field :resource_url
  
  has_and_belongs_to_many :ingredients
  has_many :beers
  
end