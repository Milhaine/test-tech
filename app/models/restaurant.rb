class Restaurant < ApplicationRecord
  validates :name, :address, :phone_number, presence: true
  validates :category, inclusion: { in: %w(chinese italian japanese belgian french) }
  has_many :reviews, dependent: :destroy
end
