class Animal < ApplicationRecord
    has_many :messages, dependent: :destroy
    has_one_attached :image
    validates :image, presence: true
end
