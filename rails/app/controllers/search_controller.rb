class SearchController < ApplicationController
  def index
  end

  def search
    query = params[:search]

    @tweets = Twitika::Client.search(query)

    render action: 'index'
  end
end
