class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :title
      t.text :description
      t.text :address
      t.string :image
      t.decimal :long
      t.decimal :lat

      t.timestamps null: false
    end
  end
end
