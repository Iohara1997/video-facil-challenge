class Video < ApplicationRecord
    validates :url, presence: true
    validates :title, length: { minimum: 4 }
end
