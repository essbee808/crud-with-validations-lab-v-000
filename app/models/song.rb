class Song < ApplicationRecord
 validates :title, :artist_name, presence: true
 validates :title, uniqueness: true
end
