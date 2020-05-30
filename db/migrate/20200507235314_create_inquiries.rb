class CreateInquiries < ActiveRecord::Migration[5.0]
  def change
    create_table :inquiries do |t|
      t.string :guest_name
      t.string :address
      t.string :contact_number
      t.string :email
      t.integer :unit_id
      t.text :message

      t.timestamps
    end
  end
end
