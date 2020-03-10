class Song < ApplicationRecord
 validates :title, presence: true uniqueness: true
end
