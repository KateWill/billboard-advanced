class SongsController < ApplicationController
  before_action  :set_board_id
  before_action :set_song_id, only: [:show, :edit, :update, :destroy]
 
  def index
    @songs = @board.songs
  end

  def create
    @song = @board.songs.new(song_params)

    if @song.save
      redirect_to [@board, @song]
    else
      render :new
    end
  end

  def show
  end

  def new
    @song = @board.songs.new
    # render partial: 'layouts/song-form'
  end

  def edit
    # render partial: 'layouts/song-form'
  end

  def update
    if @song.update(song_params)
      redirect_to [@board, @song]
    else
      render :edit
    end
  end

  def destroy
    @song.destroy
    redirect_to board_songs_path
  end

  private

  def set_song_id
    @song = Song.find(params[:id])
  end

  def set_board_id
    @board = Board.find(params[:board_id])
  end 

  # t.integer "artist_id"
  # t.integer "billboard_id"
  # t.string "name"
  # t.integer "rank"
  # t.bigint "boards_id"
  # t.bigint "artists_id"
  # t.datetime "created_at", null: false
  # t.datetime "updated_at", null: false
  # t.index ["artists_id"], name: "index_songs_on_artists_id"
  # t.index ["boards_id"], name: "index_songs_on_boards_id"
  def song_params
    params.require(:song).permit(:artist_id, :billboard_id, :name, :rank, :boards_id, :artists_id )
  end
end
