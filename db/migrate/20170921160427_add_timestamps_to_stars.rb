class AddTimestampsToStars < ActiveRecord::Migration[5.1]
  def change
    add_column :stars, :created_at, :datetime
    add_column :stars, :updated_at, :datetime
  end
end
