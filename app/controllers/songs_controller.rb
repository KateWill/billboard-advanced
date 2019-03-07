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
      # board_song_path(@board, @song)
    else
      render :new
    end
  end

  def new
    @song = @board.songs.new
    #@song = Song.new
    # render 'layouts/song-form'
  end

  def show
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

  # t.string "name"
  # t.string "rank"
  # t.bigint "board_id"
  # t.bigint "artist_id"
  # t.datetime "created_at", null: false
  # t.datetime "updated_at", null: false
  # t.index ["artist_id"], name: "index_songs_on_artist_id"
  # t.index ["board_id"], name: "index_songs_on_board_id"
  def song_params
    params.require(:song).permit(:name, :rank)
  end
end
