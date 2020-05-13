class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, :phone_number, :address, presence: true

  allowed_categories = %w[chinese italian japanese french belgian]
  validates :category, inclusion: { in: allowed_categories }
end
