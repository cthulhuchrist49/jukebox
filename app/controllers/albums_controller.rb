class AlbumsController < ApplicationController
    def index
        @albums = Album.all
        @artist = Artist.all
        @songs = Song.all
        
    end

    def show 
        @album = Album.find(params[:id])
        @artist = Artist.find(@album.artist_id)
        @songs = Song.where(album_id: (params[:id]))
       

    end

   
end
