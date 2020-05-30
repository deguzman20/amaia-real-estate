class CreatePromos < ActiveRecord::Migration[5.0]
  def change
    create_table :promos do |t|
      t.integer :unit_id
      t.string :image

      t.timestamps
    end
  end
end
