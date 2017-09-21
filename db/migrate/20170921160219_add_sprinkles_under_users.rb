class AddSprinklesUnderUsers < ActiveRecord::Migration[5.1]
  def change
    add_reference :sprinkles, :user, foreign_key: true
  end
end
