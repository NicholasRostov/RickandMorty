class FixingCharacterColumn < ActiveRecord::Migration[5.0]
  def change
    change_column :ricks, :chraracter, :character
  end
end
