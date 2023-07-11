class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :type_id
      t.string :color_id
      t.string :rarity
      t.integer :set_number
      t.boolean :format_legality

      t.timestamps
    end
  end
end
