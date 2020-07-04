class PetsController < ApplicationController

  def index
    @pets = Pet.all
  end

  def pet_list
    @shelter_identifier = Shelter.find(params[:id])
    @shelter_pets = @shelter_identifier.pets
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def new
    @shelter = Shelter.find(params[:id])
  #  @shelterid = params[:shelterid]
  end

  def create
  #  new_pet = shelter.pets.create(pet_params)
  #  @shelterid = params[:shelterid]
    new_pet = Pet.create(pet_params)

    redirect_to("/shelters/#{new_pet.shelter_id}/pets")
  end

  private
  def pet_params
    params.permit(:name, :image, :description, :approximate_age, :sex, :shelter_id)
  end

end
