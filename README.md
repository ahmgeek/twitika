# Twitika
A strongly stripped down rails, to search and display tweets.

# Rails

### Dependencies

  * Ruby 2.4.x
  * Twitter tokens for the twitter http client:
    * Mainly follow [these steps](https://github.com/sferik/twitter#configuration)
    * Add your tokens inside `.env` file.

### Install

  * Clone the repository `git clone git@github.com:ahmgeek/twitika.git`
  * `bundle install`
  * `foreman start -p 3000`

### Test

run `rspec` from project root directory

  > Note: Controller didn't stub the request for fetching the tweets

### Directory Structure

The partials and views are places inside `Frontend` Directory.
Making it easier to be maintained.

A small rendering helper method inside `ApplicationHelper` makes
the interface for rendering easier.

A generator to generate such components is placed inside `lib` Directory.
You can run it with `rails g component header` for instance, the outcome:
  * `Frontend/componenet/_header.html.erb`
  * `Frontend/componenet/header.js`
  * `Frontend/componenet/header.css`

Webpacker is used to maintain the `frontend` assets.

### What is stripped

You won't find any `models`, or most of the `action-*` or `active-*` gems, no need for them
for such small project.

The client initialization happens inside `config/initializers/twitter.rb` and assigned to
a `Constant` which is used for fetching the tweets.

> Most of the frontend tricks inspired and taken from [evilmartians](http://evilmartians.com/)


# Syro
