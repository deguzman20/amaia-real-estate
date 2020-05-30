class CreateSellers < ActiveRecord::Migration[5.0]
  def change
    create_table :sellers do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :image

      t.timestamps
    end
  end
end
