class AddReviewsToPlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.column :author, :string
      t.column :content, :text
      t.column :place_id, :integer

      t.timestamps
    end
  end
end
