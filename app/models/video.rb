class Video < ApplicationRecord
    has_many :comments
    belongs_to :category, optional: true

    validates :url, :category, presence: true
    validates :title, presence: true, length: { minimum: 4 }
end
