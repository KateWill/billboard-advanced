class BoardsController < ApplicationController
  before_action :set_board_id, only: [:show, :edit, :update, :destroy]

  def index
    @boards = Board.all
  end

  def create
    @board = Board.new(board_params)

    if @board.save
      redirect_to boards_path
    else
      render :new
    end
  end

  def show
    # @board.songs = @board.songs.order(:rank)
    # @board.songs = @board.songs.sort_by { |song| song[:rank]}
    # @board
    # @board.songs.order(:rank)
    # @board = Board.includes(:song).order("songs.rank asc")
    # Board.all.by_rank
    # Board.songs.by_rank
    # @board.sort
    @ranks = @board.by_rank(@board.songs)
    # by_rank
  end

  def new
    @board = Board.new
  end

  def edit
  end

  def update
    if @board.update(board_params)
      redirect_to boards_path
    else
      render :edit
    end
  end

  def destroy
    @board.destroy
    redirect_to boards_path
  end

  private

  def set_board_id
    @board = Board.find(params[:id])
  end

  def board_params
    params.require(:board).permit(:title)
  end
end
