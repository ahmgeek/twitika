# Twitika
A strongly stripped down rails, to search and display tweets.

# Dependencies

  * Ruby 2.4.x
  * Twitter tokens for the twitter http client:
    * Mainly follow [these steps](https://github.com/sferik/twitter#configuration)
    * Add your tokens inside `.env` file.

# Install

  * Clone the repository `git clone `
  * `bundle install`
  * `foreman start -p 3000`

# Test

run `rspec` from project root directory

Not: Controller didn't stub the request for fetching the tweets
