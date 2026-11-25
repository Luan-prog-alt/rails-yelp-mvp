class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :category, inclusion: { in: %w[chinese italian japanese french belgian] }

  before_validation :normalize_category

  private

  def normalize_category
    self.category = category.downcase if category.present?
  end
end
