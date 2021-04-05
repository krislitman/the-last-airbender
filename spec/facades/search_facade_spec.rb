require 'rails_helper'

RSpec.describe SearchFacade do
  it "Returns members of fire nation" do
    search_term = "fire_nation"

    expected = SearchFacade.search(search_term)

    expect(expected).to be_an Array
    expect(expected.length).to eq 97
  end
  it "Can return less members" do
    search_term = "fire_nation"
    quantity = 10

    expected = SearchFacade.search(search_term, quantity)

    expect(expected.length).to eq 10
  end
end