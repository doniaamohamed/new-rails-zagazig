class User < ApplicationRecord
  validates :name, presence: true
  validates :DOB, presence: true
  validates :phone_number, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
end