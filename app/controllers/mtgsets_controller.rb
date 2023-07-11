class MtgsetsController < ApplicationController
  def index
    @mtgsets = Mtgset.all
  end

  def show
    @mtgset = Mtgset.find(params[:id])
  end

  def create
    @mtgset = Mtgset.new(mtgset_params)

    if @mtgset.save
      redirect_to "/mtgsets"
    else
      redirect_to "/mtgsets/new"
    end
  end

  def edit
    @mtgset = Mtgset.find(params[:id])
  end

  def update
    @mtgset = Mtgset.find(params[:id])

    @mtgset.update(mtgset_params)
    redirect_to "/mtgsets/#{@mtgset.id}"
  end
  private

  def mtgset_params
    params.require(:mtgset).permit(:set_name, :collection_number, :current_set)
  end


end