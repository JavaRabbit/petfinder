class AnimalsController < ApplicationController
  def index
    @animal = Animal.all
  end

  def contact
  end
end
