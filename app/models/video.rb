class Video < ApplicationRecord

    belongs_to :category

    validates :url, presence: true
    validates :title, length: { minimum: 4 }
end
