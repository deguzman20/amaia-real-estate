class AddSiteDevelopmentPlanToUnits < ActiveRecord::Migration[5.0]
  def change
    add_column :units, :site_development_plan, :string
  end
end
