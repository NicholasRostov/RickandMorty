class Fix < ActiveRecord::Migration[5.0]
  def change
    rename_column :ricks, :chraracter, :character
    change_column :ricks, :character, :string
  end
end
