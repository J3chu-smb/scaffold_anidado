class User < ApplicationRecord
    has_many :playlists
    validates_presence_of :name
    validates_presence_of :email, uniqueness: true
end
