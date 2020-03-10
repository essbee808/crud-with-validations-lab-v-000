class SongsController < ApplicationController
  before_action :set_song!, only: [:show, :edit, :update]

  def index
  end

  def show
  end

  def new
  end

  def create
  end

  private

  def set_song!
    @song = Song.find(params[:id])
  end

end
