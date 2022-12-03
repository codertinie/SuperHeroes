class HeroesController < ApplicationController

  def index
    render json: Hero.all
  end

  def show
    hero = Hero.find_by(id: params[:id])
    if hero
    render json: hero, serializer: HerowithpowersSerializer
    else
      render json: {error: "Hero not found"}, status: :not_found
    end
  end
end
