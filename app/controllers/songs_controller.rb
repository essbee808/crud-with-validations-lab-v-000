class SongsController < ApplicationController
  before_action :set_song!, only: [:show, :edit, :update]

  def index
    @songs = Song.all
  end

  def show
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_params(:title, :released, :release_year, :artist_name, :genre))

    if @song.valid?
      redirect_to song_path(@song)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @song.update(song_params(:title, :released, :release_year, :artist_name, :genre))
    redirect_to song_path(@song)
  end

  def destroy
  ed

  private

  def song_params(*args)
    params.require(:song).permit(*args)
  end

  def set_song!
    @song = Song.find(params[:id])
  end

end
