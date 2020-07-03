#pets index spec

require 'rails_helper'

RSpec.describe 'As a visitor' do
  describe 'when I visit the pets index page' do
    it 'shows a list of all pets and their attributes' do

      shelter_1 = Shelter.create!(name: "Denver Animal Shelter",
                        address: "3301 Navajo Street",
                        city: "Denver",
                        state: "CO",
                        zip: 80021)
      shelter_2 = Shelter.create!(name: "Monterey Animal Shelter",
                        address: "2520 Crimson Road",
                        city: "Monterey",
                        state: "CA",
                        zip: 35872)
      pet_1 =  Pet.create!(name: "Winnie",
                        approximate_age: 3,
                        sex: "Female",
                        image: "https://imgur.com/r/puppies/cYqJGNo",
                        adoption_status: "Available",
                        shelter_id: shelter_1.id)
      pet_2 =  Pet.create!(name: "Sir Maximum",
                        approximate_age: 1,
                        sex: "Male",
                        image: "https://imgur.com/r/puppies/JGDU9mi",
                        adoption_status: "Available",
                        shelter_id: shelter_2.id)

      visit '/pets'

      expect(page).to have_content (pet_1.name)
      expect(page).to have_content (shelter_1.name)
      expect(page).to have_content (pet_1.sex)
      expect(page).to have_content (pet_2.name)
      expect(page).to have_content (shelter_2.name)
      expect(page).to have_content (pet_2.sex)
    end
  end
end
