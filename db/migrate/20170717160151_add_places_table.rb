class AddPlacesTable < ActiveRecord::Migration[5.1]
  def change
    create_table :places do |t|
      t.column :city, :string
      t.column :country, :string

      t.timestamps
    end
  end
end
