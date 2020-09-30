class ChangeDatatypes < ActiveRecord::Migration[5.1]
  def self.up
    change_table :units do |t|
      t.change :faq, :text
      t.change :units_and_floor_plan, :text
    end
  end

  def self.down
    change_table :units do |t|
      t.change :faq, :string
      t.change :units_and_floor_plan, :string
    end
  end
end
