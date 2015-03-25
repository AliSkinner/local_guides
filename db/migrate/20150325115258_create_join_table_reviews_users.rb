class CreateJoinTableReviewsUsers < ActiveRecord::Migration
  def change
    create_join_table :reviews, :users
  end
end
