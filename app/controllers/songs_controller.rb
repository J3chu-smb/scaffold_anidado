class SongsController < ApplicationController

def create
song = Song.new(song_params)
song.playlist_id = params[:playlist_id]

  if song.save
    redirect_to song.playlist, notice: 'La canción se ha creado con éxito!.'
  else
    redirect_to playlists_path, notice: 'La canción no fue creada.'
  end
end

def destroy
  song = Song.find(params[:id])
  playlist = song.playlist
  song.delete
redirect_to song.playlist, notice: 'La canción se ha eliminado con éxito!'
end

private

def song_params
      params.require(:song).permit(:name, :artist)
    end
end
