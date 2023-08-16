class Restaurant < ApplicationRecord
  CATEGORY = %w[chinese italian japanese french belgian].freeze
  validates :name, :address, :phone_number, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORY }
  has_many :reviews, dependent: :destroy
end
