class CreateUnits < ActiveRecord::Migration[5.0]
  def change
    create_table :units do |t|
      t.string :specific_location
      t.integer :type_id
      t.integer :city_id
      t.string :price_from
      t.string :price_to
      t.string :image
      t.string :unit_size_from
      t.string :unit_size_to
      t.text :project_concept
      t.text :location_and_vicinity
      t.text :amenities_and_facilities
      t.text :model_unit
      t.integer :unit_type_id
      t.boolean :pre_selling
      t.boolean :ready_for_occupancy

      t.timestamps
    end
  end
end
