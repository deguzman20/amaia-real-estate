class CreateImageGalleries < ActiveRecord::Migration[5.1]
  def change
    create_table :image_galleries do |t|
      t.integer :unit_id
      t.string :image

      t.timestamps
    end
  end
end
