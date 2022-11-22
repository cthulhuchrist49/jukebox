class AlbumsController < ApplicationController
    def index
        @albums = Album.all
        @artist = Artist.all
        @songs = Song.all
        
    end

    def show 
        @album = Album.find(params[:id])
        @artist = Artist.find(params[:id])
        @songs = Song.where(album_id: (params[:id]))
       

    end

    def songselect
        @albums = Album.all
        @artist = Artist.all
        @songs = Song.all
    end
end
