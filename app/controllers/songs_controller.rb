class SongsController < ApplicationController

    def index
        @songs = Song.all
    end

    def show
        @song = Song.find(params[:id])
    end

    def new
        @song = Song.new
    end

    def create
        Song.create(name: params[:song][:name], artist: Artist.find_by(name: params[:song][:artist]), genre: Genre.find_by(name: params[:song][:genre]))
        redirect_to song_path(@song)
    end

    def destroy
        @song = Song.find(params[:id])
        @song.destroy
        redirect_to songs_path
    end

    def edit
        @song = Song.find(params[:id])
    end

    def update
        @song = Song.find(params[:id])
        @song.update(name: params[:song][:name], artist: Artist.find_by(name: params[:song][:artist]), genre: Genre.find_by(name: params[:song][:genre]))
        redirect_to song_path(@song)
    end

end
