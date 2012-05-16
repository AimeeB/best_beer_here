class Beer
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Slug
  
  field :name, :type => String
  slug :name
  field :abv, :type => Float
  field :description, :type => String
  field :image_url
  field :ba_url, :type => String
  field :rb_url, :type => String
  field :beer_url, :type => String
  
  belongs_to :brewery, index: true
  has_and_belongs_to_many :bars, index: true
  belongs_to :style, index: true
  has_and_belongs_to_many :ingredients, index: true
  
end