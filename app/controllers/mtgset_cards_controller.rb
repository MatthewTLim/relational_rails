class MtgsetCardsController < ApplicationController
  def index
    @mtgset = Mtgset.find(params[:id])
    @cards = @mtgset.cards
  end

  def new
    @mtgset = Mtgset.find(params[:id])
    @card = @mtgset.cards.new

  end

  def create
    @mtgset = Mtgset.find(params[:id])
    @card = @mtgset.cards.create(mtgset_cards_params)
    redirect_to "/mtgsets/#{@mtgset.id}/cards"
  end

  def mtgset_cards_params
    params.permit(:name, :type_id, :color_id, :rarity, :set_number, :format_legality)
  end

end

