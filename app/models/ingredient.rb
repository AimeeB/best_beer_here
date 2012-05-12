class Ingredient
  include Mongoid::Document
  
  field :name, :type => String
  field :ing_type, :type => String
  field :description, :type => String
  field :resource_url, :type => String
  
  has_and_belongs_to_many :beers
  has_and_belongs_to_many :styles
  
end