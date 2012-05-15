class Ingredient
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Slug
  
  field :name, :type => String
  slug :name
  field :ing_type, :type => String
  field :description, :type => String
  field :resource_url, :type => String
  
  has_and_belongs_to_many :beers
  has_and_belongs_to_many :styles
  
end