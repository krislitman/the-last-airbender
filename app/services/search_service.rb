class SearchService
  def self.search(term, quantity)
    response = conn.get('api/v1/characters',
      { 'affiliation': "#{term}", 'perPage': "#{quantity}" }) 
    data = JSON.parse(response.body, symbolize_names: true)
    data.map do |member_info|
      Member.new(member_info)
    end
  end

  private

  def self.conn
    Faraday.new(
      url: 'http://last-airbender-api.herokuapp.com',
    )
  end
end