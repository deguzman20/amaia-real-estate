class CreateCityUnits < ActiveRecord::Migration[5.0]
  def change
    create_table :city_units do |t|
      t.integer :city_id
      t.integer :unit_id

      t.timestamps
    end
  end
end
