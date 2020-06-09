class AddPositionToSellers < ActiveRecord::Migration[5.1]
  def change
    add_column :sellers, :position, :string
    add_column :sellers, :prc, :string
    add_column :sellers, :hlurb, :string
    add_column :sellers, :fb_link, :string
  end
end
