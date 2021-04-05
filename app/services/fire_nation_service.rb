class FireNationService
  def self.search(term, quantity = 100)
    response = conn.get('api/v1/characters',
      { 'affiliation': "#{term}", 'perPage': "#{quantity}" }) 
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