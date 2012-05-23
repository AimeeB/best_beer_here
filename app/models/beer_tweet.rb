class BeerTweet
  
  def self.get_default_tweets
    tweets = []
    tweets = (Twitter.user_timeline("BeerAdvocate")[0..3] + Twitter.user_timeline("DrinkCraftBeer")[0..3] + Twitter.user_timeline("BrewBound")[0..3]).map{|tweet| {:user => tweet.from_user, :tweet_content => tweet.text, :tweet_time => tweet.created_at} }
    tweets.flatten.sort_by { |tweet| tweet[:tweet_time] }.reverse
  end
  
  def self.get_search_tweets
    tweets = []
    tweets += Twitter.search("#craftbeer -rt", :rpp => 12).map{|tweet| {:user => tweet.from_user, :tweet_content => tweet.text, :tweet_time => tweet.created_at } }
    # Twitter.search("#craftbeer", :rpp => 50, :result_type => 'recent').map do |status|
    #   if Twitter.user(status.from_user).location.include? 'Boston' || 'MA' || 'Massachusetts'
    #     tweets += status
    #   end
    # end
    tweets.sort_by { |tweet| tweet[:tweet_time] }.reverse
  end
  
  def self.get_brewery_feed(brewery_twitter_handle)
    tweets = (Twitter.user_timeline(brewery_twitter_handle)[0..11]).map{|tweet| {:user => tweet.from_user, :tweet_content => tweet.text, :tweet_time => tweet.created_at} }
    tweets.sort_by { |tweet| tweet[:tweet_time] }.reverse
  end  
end