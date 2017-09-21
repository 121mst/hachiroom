class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def new
      @genre = Genre.new
    end

  def create
    Genre.create(genres_params)
    redirect_to genres_path
  end

    private
      def genres_params
        params.require(:genre).permit(:name)
      end

end
