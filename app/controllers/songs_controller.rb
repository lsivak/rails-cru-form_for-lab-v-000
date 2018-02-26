class SongsController < ApplicationController
    
def show
    @song = Song.find(param[:id])
end

def create
    @song = Song.new(song_params(:name, :artist_id, :genre_id))
    @song.save
    redirect_to song_path(@song)
end

def update
   @song = Song.find(params[:id])
  @song.update(song_params(:song))
  redirect_to song_path(@song)
end 
    
    
def song_params(*args)
		params.require(:song).permit(*args)
	end
	end