class PetsController < ApplicationController

  def index
    @pets = Pet.all
  end

  def pet_list
    shelter = Shelter.find(params[:id])
    @shelter_pets = shelter.pets
  end

  def show
    @pet = Pet.find(params[:id])
  end

end
