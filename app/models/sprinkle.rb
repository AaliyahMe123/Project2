class Sprinkle < ApplicationRecord
  belongs_to :category
  validates :quote, presence: true
  validates :author presence: true
  belongs_to :user
  has_many :stars, dependent: :destroy
  has_many :users, through: :stars
end
