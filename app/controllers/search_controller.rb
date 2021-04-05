class SearchController < ApplicationController
  def index
    @members = SearchFacade.search(params[:nation])
  end
end