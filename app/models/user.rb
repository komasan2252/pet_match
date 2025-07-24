class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable


has_many :messages, dependent: :destroy
has_many :rooms


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
