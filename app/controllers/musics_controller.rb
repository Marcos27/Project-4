class MusicsController < ApplicationController
  def index
    @musics = Music.all
  end

  def new
  @music = Music.new
  end

  def create
    @music = Music.new(music_params)

    if @music.save
      redirect_to musics_path
    else
      render :new
    end
  end
  def edit
   @music = Music.find(params[:id])
  end

  def update
    @music = Music.find(params[:id])

    if @music.update_attributes(music_params)
      redirect_to musics_path
    else
      render :edit
    end
  end

  def destroy
    @music = Music.find(params[:id])
    @music.destroy
    redirect_to musics_path
  end
  private
  def music_params
    params.require(:music).permit(:genre, :artist, :songs, :bio, :song_url)
  end
end
