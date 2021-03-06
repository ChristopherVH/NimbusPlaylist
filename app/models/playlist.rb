# == Schema Information
#
# Table name: playlists
#
#  id          :integer          not null, primary key
#  user_id     :integer          not null
#  title       :string           not null
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Playlist < ActiveRecord::Base
  validates :user_id, :title, presence: true
  belongs_to :user
  has_many :playlist_songs
  has_many :songs, through: :playlist_songs, source: :song

  def self.search(query)
    where("lower(title) like ?", "%#{query}%").limit(5)
  end

  def songhash
    songs = Hash.new()
    self.playlist_songs do |song|
      songhash[song.id] = song.title
    end
    return songs
  end

end
