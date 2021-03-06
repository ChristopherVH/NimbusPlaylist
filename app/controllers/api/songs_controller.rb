# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  title      :string           not null
#  artist     :string           not null
#  genre      :string           not null
#  image_url  :string
#  audio_url  :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Api::SongsController < ApplicationController
  before_action :require_signed_in!, only: [:create, :destroy, :update]

  def create
    @song = current_user.songs.new(song_params)

    if @song.save
      render :show
    else
      render json: @song.errors.full_messages
    end
  end

  def destroy
    @song = Song.find(params[:id])
    if @song.user_id == current_user.id && @song.destroy
      render :index
    else
      render json: "This song cannot be deleted by you"
    end
  end

  def update
    @song = Song.find(params[:id])
    if @song.user_id == current_user.id && @song.update
      render :show
    else
      render json: "This song cannot be updated by you"
    end
  end

  def show
    @song = Song.find(params[:id])
  end

  def index
    @user = User.find_by(id: params[:user_id])
    if @user
      @songs = @user.songs
    else
      @songs = Song.order(created_at: :desc)
    end
  end

  def trending
    @songs = Song.joins(:likes).group(:id).order("count(likes.song_id) desc")
  end

  private
  def song_params
    params.require(:song).permit(:title, :artist, :genre, :image_url, :audio_url)
  end
end
