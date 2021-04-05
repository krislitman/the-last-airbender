class SearchController < ApplicationController
  def index
    @members = SearchFacade.search(params[:nation], params[:perPage])
    @nation = SearchFacade.format_nation(params[:nation])
  end
end