class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, uniqueness: true, presence: true
  validates :category, presence: true
end
