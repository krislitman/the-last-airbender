require 'rails_helper'

RSpec.describe 'As a user visiting root_path' do
  describe 'When I select "Fire Nation" from select field' do
    it 'Takes me to /search page'
    it 'Should show total number of people in Fire Nation'
    it 'Should have a list of detailed info for first 25 members'
    it 'For each member see name & photo, allies, enemies, and affiliations'
  end
end


# As a user,
# When I visit "/"
# And I Select "Fire Nation" from the select field
# (Note: Use the existing select field)
# And I click "Search For Members"
# Then I should be on page "/search"
# Then I should see the total number of people who live in the Fire Nation. (should be close to 100)
# And I should see a list with the detailed information for the first 25 members of the Fire Nation.
# And for each of the members I should see:
# - The name of the member (and their photo, if they have one)
# - The list of allies or "None"
# - The list of enemies or "None"
# - Any affiliations that the member has