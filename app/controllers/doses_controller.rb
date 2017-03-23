class DosesController < ApplicationController


  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    # @dose.docktail_id = params[:cocktail_id]
    @dose = Dose.new(dose_params)
    @dose.save
  end

  def edit

  end

  def update
  end

  def destroy
  end

private

  def dose_params
    params.require(:dose).permit(:description)
  end


end
