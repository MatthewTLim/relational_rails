class MtgsetCardsController < ApplicationController
  def index
    @mtgset = Mtgset.find(params[:id])
    @cards = @mtgset.cards
  end

end