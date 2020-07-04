class PetsController < ApplicationController

  def index
    @pets = Pet.all
  end

  def pet_list
    shelter = Shelter.find(params[:id])
    @shelter_pets = shelter.pets
  end

end
