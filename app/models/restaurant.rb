class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :delete_all
  validates :name, :address, :phone_number, :category, presence: true
  validates :category, inclusion: { in: %w[chinese italian japanese french belgian] }
end
