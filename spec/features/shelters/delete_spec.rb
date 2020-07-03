require 'rails_helper'

RSpec.describe 'As a visitor' do
  describe 'When I click on the delete button by the artist on the index page' do
    it 'then the artist it deletes, and the index page is refreshed' do

      shelter_1 =  Shelter.create!(name: "Denver Animal Shelter",
                        address: "3301 Navajo Street",
                        city: "Denver",
                        state: "CO",
                        zip: 80021)
      shelter_2 = Shelter.create!(name: "Monterey Animal Shelter",
                        address: "2520 Crimson Road",
                        city: "Monterey",
                        state: "CA",
                        zip: 35872)

      visit '/shelters'
      expect(page).to have_content(shelter_2.name)
      click_on 'Delete Monterey Animal Shelter'

      expect(current_path).to eq('/shelters')
      expect(page).to_not have_content(shelter_2.name)
      expect(page).to have_content(shelter_1.name)
    end
  end
end
 
