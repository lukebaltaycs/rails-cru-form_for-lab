class GenresController < ApplicationController

    def index
        @genres = Genre.all
    end

    def show
        @genre = Genre.find(params[:id])
    end

    def new
        @genre = Genre.new
    end

    def create
        @genre = Genre.create(name: params[:genre][:name])
        redirect_to genre_path(@genre)
    end

    def destroy
        @genre = Genre.find(params[:id])
        redirect_to genres_path
    end

    def edit
        @genre = Genre.find(params[:id])
    end

    def update
        @genre = Genre.find(params[:id])
        @genre.update(name: params[:genre][:name])
        redirect_to genre_path(@genre)
    end

end
