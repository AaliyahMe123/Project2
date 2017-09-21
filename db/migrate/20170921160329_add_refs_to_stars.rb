class AddRefsToStars < ActiveRecord::Migration[5.1]
  def change
    add_reference :stars, :user, foreign_key: true
    add_reference :stars, :sprinkle, foreign_key: true
  end
end
