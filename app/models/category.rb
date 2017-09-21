class Category < ApplicationRecord
  has_many :sprinkles, dependent: :destroy
  def to_param
    name
  end 
end
