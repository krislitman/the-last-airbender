require 'rails_helper'

RSpec.describe 'As a user visiting root_path' do
  describe 'When I select "Fire Nation" from select field' do
    it 'Takes me to /search page' do
      visit root_path

      select 'Fire Nation',  from: 'nation'
      click_button 'Search For Members'

      expect(current_path).to eq('/search')
    end
    it 'Should show total number of people in Fire Nation' do
      visit root_path

      select 'Fire Nation',  from: 'nation'
      click_button 'Search For Members'

      expect(page).to have_content("Total Number of people in Fire Nation: 97")
    end
    it 'Should have a list of detailed info for first 25 members' do 
      visit root_path

      select 'Fire Nation',  from: 'nation'
      click_button 'Search For Members'

      within('#first_members') do
        expect(page).to have_content("Name: Afiko")
        expect(page).to have_content("Affiliation: Fire Nation")
        expect(page).to have_content("Allies: Fire Nation")
        expect(page).to have_content("Enemies: Aang")
      end
    end
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