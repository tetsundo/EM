class AdminsController < ApplicationController
  def top
    if @results
   @cds = @results
   else
    @cds = Cd.all
  end
  end

  def edit
  end
  def show
  	@cd = Cd.find(params[:id])
    @songs = @cd.songs.all
  end

  private
  def search_params
    params.require(:q).permit!
  end
end
