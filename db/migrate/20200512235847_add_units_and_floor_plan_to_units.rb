class AddUnitsAndFloorPlanToUnits < ActiveRecord::Migration[5.0]
  def change
    add_column :units, :units_and_floor_plan, :string
  end
end
