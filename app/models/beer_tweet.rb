class BeerTweet
  
  def self.get_tweets
    tweets = []
    cb_seach_tweets = Twitter.search('craft beer -rt', :rpp => 10).map{|tweet| {:user => tweet.from_user, :tweet_content => tweet.text, :tweet_time => tweet.created_at} }
    cb_hash_tweets = Twitter.search('#craftbeer -rt', :rpp => 10).map{|tweet| {:user => tweet.from_user, :tweet_content => tweet.text, :tweet_time => tweet.created_at} }
    cb_beer_adv_tweets = Twitter.user_timeline("BeerAdvocate").map{|tweet| {:user => tweet.from_user, :tweet_content => tweet.text, :tweet_time => tweet.created_at} }
    cb_dcb_tweets = Twitter.user_timeline("DrinkCraftBeer").map{|tweet| {:user => tweet.from_user, :tweet_content => tweet.text, :tweet_time => tweet.created_at} }
    cb_brew_bound_tweets = Twitter.user_timeline("DrinkCraftBeer").map{|tweet| {:user => tweet.from_user, :tweet_content => tweet.text, :tweet_time => tweet.created_at} }
    tweets << cb_seach_tweets << cb_hash_tweets << cb_beer_adv_tweets << cb_dcb_tweets << cb_brew_bound_tweets
    tweets.flatten
  end
  
end