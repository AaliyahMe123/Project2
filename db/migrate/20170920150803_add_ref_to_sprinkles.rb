class AddRefToSprinkles < ActiveRecord::Migration[5.1]
  def change
    add_reference :sprinkles, :category, index: true, foreign_key: true
  end
end
