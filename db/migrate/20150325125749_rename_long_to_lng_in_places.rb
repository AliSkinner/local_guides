class RenameLongToLngInPlaces < ActiveRecord::Migration
  def change
    rename_column :places, :long, :lng
  end
end
