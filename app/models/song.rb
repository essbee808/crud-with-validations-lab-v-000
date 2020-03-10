class Song < ApplicationRecord
 validates :title, :artist_name, :release_year, presence: true
 validates :title, uniqueness: true
 validates :released, inclusion: { in: [true, false] }
 validates :release_year, 
end
