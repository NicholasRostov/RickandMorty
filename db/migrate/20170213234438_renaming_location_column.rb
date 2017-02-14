class RenamingLocationColumn < ActiveRecord::Migration[5.0]
  def change
    rename_column :ricks, :location, :dimension
  end
end
