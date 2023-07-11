class AddMtgsetReferenceToCards < ActiveRecord::Migration[7.0]
  def change
    add_reference :cards, :mtgset, null: false, foreign_key: true
  end
end
