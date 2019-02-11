$word_substitute = {}

def dictionary
  $word_substitute = {"hello" => "hi", "to" => "2", "two" => "2", "too" => "2", "for" => "4", "four" => "4", "be" => "b", "you" => "u", "at" => "@", "and" => "&"}
end

def word_substituter(string)
  word_array = string.split(" ")
  dictionary
  short_tweet = ""
  $word_substitute.each do |long_word, short_word|
    word_array.each do |word|
      if word == long_word
      word.replace(short_word)
      end
    end
  end
  short_tweet = word_array.join(" ")
  short_tweet
end

def bulk_tweet_shortener(array_of_tweets)
  array_of_short_tweets = []
  array_of_tweets.each do |tweet|
    array_of_short_tweets << word_substituter(tweet)
  end
  puts array_of_short_tweets
end


# Write your code here.