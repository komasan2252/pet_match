class Animal < ApplicationRecord
    has_many :messages, dependent: :destroy

end
