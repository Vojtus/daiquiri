class StaticPagesController < ApplicationController

  def home
    @drinks = Drink.all
    @slider = @drinks.sample(7)
  end

  def program
    #
  end

  def novinky
    #
  end

  def o_daiquiri
    #
  end

  def galerie
    #
  end

  def napojovy_listek
    #
  end

  def provozni_rad
    #
  end

  def o_baru_daiquiri
    #
  end

  def kontakt
    #
  end
end
