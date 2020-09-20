class RenameSiteDevelopmentPlanToUnits < ActiveRecord::Migration[5.1]
  def change
    change_table :units do |t|
      t.rename :site_development_plan, :faq
    end
  end
end
