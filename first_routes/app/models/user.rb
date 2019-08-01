class User < ApplicationRecord
  has_many :artworks,
  foreign_key: :artist_id,
  class_name: :Artwork,
  dependent: :destroy

  has_many :shared_viewers,
  foreign_key: :viewer_id,
  class_name: :ArtworkShare

  has_many :shared_artworks,
  through: :shared_viewers,
  source: :artwork,
  dependent: :destroy

  has_many :comments,
  foreign_key: :user_id,
  class_name: :Comment,
  dependent: :destroy

  validates :username, presence: true, uniqueness: true
end