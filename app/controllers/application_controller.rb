class ApplicationController < ActionController::Base
  before_filter :get_tweets
  require 'application_helper'
  
  protect_from_forgery
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end
  
  def get_tweets
    @brewery = Brewery.find_by_slug(params[:id])
    if @brewery
      @tweets = BeerTweet.get_brewery_feed(@brewery.twitter_handle)
    else
      @tweets = BeerTweet.get_default_tweets
    end
  end
    
end
