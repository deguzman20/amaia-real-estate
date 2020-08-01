class AddFieldsToPromos < ActiveRecord::Migration[5.1]
  def change
    add_column :promos, :specific_location, :string
    add_column :promos, :price_from, :string
    add_column :promos, :price_to, :string
    add_column :promos, :unit_size_from, :string
    add_column :promos, :unit_size_to, :string
  end
end
