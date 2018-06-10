class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def show
    genre = Genre.find(params[:id])
    @cds = genre.cds.all.order(created_at: 'desc')
    render "admins/top"
  end

  def edit
  end

  def update
  end

  def destoy
  end
end
