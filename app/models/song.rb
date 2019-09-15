class Song < ApplicationRecord
  belongs_to :playlist
  validates_presence_of :artist
  validates_presence_of :name
end
