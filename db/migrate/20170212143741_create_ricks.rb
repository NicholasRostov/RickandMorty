class CreateRicks < ActiveRecord::Migration[5.0]
  def change
    create_table :ricks do |t|
      t.string :chraracter
      t.string :location
      t.string :quote

      t.timestamps
    end
  end
end
