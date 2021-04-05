class SearchFacade
  def self.search(term)
    term = term.split("_").join(" ").titleize

    response = conn.get('api/v1/characters',
      { 'affiliation': "#{term}", 'perPage': '100' }) 
      data = JSON.parse(response.body, symbolize_names: true)
      data.map do |fire|
        FireNation.new(fire)
      end
  end

  private

  def self.conn
    Faraday.new(
      url: 'http://last-airbender-api.herokuapp.com',
    )
  end
end