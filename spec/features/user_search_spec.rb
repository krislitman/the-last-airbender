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
        expect(page).to have_content("Affiliations: Fire Nation")
        expect(page).to have_content("Allies: Fire Nation")
        expect(page).to have_content("Enemies: Aang")
        expect(page).to have_content("Allies: None")
        expect(page).to have_content("Enemies: None")
      end
    end
  end
end