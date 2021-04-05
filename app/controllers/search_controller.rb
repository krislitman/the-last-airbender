class SearchController < ApplicationController
  def index
    response = conn.get('api/v1/characters?affiliation=Fire Nation',
    { 'affiliation': 'Fire Nation', 'perPage': '100' }) 
    data = JSON.parse(response.body, symbolize_names: true)
    @members = data.map do |fire|
      FireNation.new(fire)
    end
  end

  private

  def conn
    Faraday.new(
      url: 'http://last-airbender-api.herokuapp.com',
    )
  end
end