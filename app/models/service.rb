class Service < ApplicationRecord
  belongs_to :provider

  validates :title, presence: true
  validates :price, presence: true
  has_one_attached :icon
end
