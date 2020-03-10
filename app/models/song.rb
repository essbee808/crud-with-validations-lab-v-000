class Song < ApplicationRecord
 validates :title, :artist_name, presence: true
 validates :title, uniqueness: true
 validates_inclusion_of :released, :in => %w()
end
