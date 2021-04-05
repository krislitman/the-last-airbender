require 'rails_helper'

RSpec.describe FireNationService do
  it 'Makes API call' do
    term = "Fire Nation"
    quantity = 97

    expected = FireNationService.search(term, quantity)

    expect(expected).to be_an Array
    expect(expected.length).to eq 97
    expect(expected[0]).to be_an_instance_of FireNation
  end
end