class Beer
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :name, :type => String
  field :abv, :type => Float
  field :description, :type => String
  field :image_url
  field :ba_url, :type => String
  field :rb_url, :type => String
  field :beer_url, :type => String
  
  belongs_to :brewery, index: true
  has_and_belongs_to_many :bars
  belongs_to :style
  has_and_belongs_to_many :ingredients
  
end