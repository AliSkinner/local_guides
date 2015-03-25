class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :body
      t.integer :reviewer_id
      t.integer :subject_id

      t.timestamps null: false
    end
  end
end
