class Remove < ActiveRecord::Migration[5.2]
  def change
    drop_table :books
  end
end
