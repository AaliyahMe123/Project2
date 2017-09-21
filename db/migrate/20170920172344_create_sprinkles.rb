class CreateSprinkles < ActiveRecord::Migration[5.1]
  def change
    create_table :sprinkles do |t|
      t.string :quote
      t.string :author
      t.timestamps
    end
  end
end
