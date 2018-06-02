class AdminsController < ApplicationController
  def top
  	@cd = Cd.new
  	@cd.songs.build
  	@cds = Cd.all
  	@genres = Genre.all
  end

  def edit
  end
  def show
  	@cd = Cd.find(params[:id])
    @songs = @cd.songs.all
  end
end
