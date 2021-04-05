class SearchController < ApplicationController
  def index
    SearchFacade.search(params[:nation])
  end
end