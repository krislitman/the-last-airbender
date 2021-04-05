class SearchController < ApplicationController
  def index
    @members = SearchFacade.search(params[:nation], params[:perPage])
  end
end