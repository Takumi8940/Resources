class RenameUserColumnToNema < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :nema, :name
  end
end
