class Message < ApplicationRecord
  belongs_to :user
  belongs_to :animal
  belongs_to :room

  validates :content,presence: true
end
