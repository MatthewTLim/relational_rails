class CreateMtgsets < ActiveRecord::Migration[7.0]
  def change
    create_table :mtgsets do |t|
      t.string :set_name
      t.integer :collection_number
      t.boolean :current_set

      t.timestamps
    end
  end
end
