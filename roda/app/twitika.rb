require 'roda'
require_relative '../lib/twitter_client.rb'

class Twitika < Roda
  opts[:unsupported_block_result] = :raise
  opts[:unsupported_matcher] = :raise
  opts[:verbatim_string_matcher] = true

  plugin :default_headers,
    'Content-Type' => 'text/html',
    'Content-Security-Policy' => "default-src 'self' https://oss.maxcdn.com/ https://maxcdn.bootstrapcdn.com https://ajax.googleapis.com ",
    #'Strict-Transport-Security'=>'max-age=16070400;', # Uncomment if only allowing https:// access
    'X-Frame-Options' => 'deny',
    'X-Content-Type-Options' => 'nosniff',
    'X-XSS-Protection' => '1; mode=block'

  plugin :forme
  plugin :partials, :views => 'views'

  route do |r|
    r.root do
      view 'index'
    end

    r.on 'search' do
      r.get do
        query = r.params["search"]

        @tweets = TwitterClient.search(query)
        view 'search', tweets: @tweets
      end
    end
  end
end
