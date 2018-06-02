class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def show
    @gernre = Genre.find(params[:id])
    @cds = @genre.cds
  end

  def edit
  end

  def update
  end

  def destoy
  end
end
