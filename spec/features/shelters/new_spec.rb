require 'rails_helper'

RSpec.describe 'As a visitor' do
  describe 'When I click on the New Shelter link on the index page' do
    describe 'I fill out a form on /shelters/new' do
      it 'then a new shelter is created' do

      visit '/shelters'

      click_link 'New Shelter'
      expect(current_path).to eq('/shelters/new')

      end 
    end
  end
end
