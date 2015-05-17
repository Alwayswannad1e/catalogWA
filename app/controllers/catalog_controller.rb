class CatalogController < ApplicationController
  def index
    @animals = Animal.all
  end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.new(person_animal)
    @animal.save
    redirect_to root_path
  end

  def show
    @animal = Animal.find(params[:format])
  end

  def destroy
    @animal = Animal.find(params[:format])
    @animal.destroy
    redirect_to root_path
  
  end
  def person_animal
    params.require(:animal).permit(:name, :kingdom , :a_class , :phylum)
  end
end
