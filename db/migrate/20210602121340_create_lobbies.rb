class CreateLobbies < ActiveRecord::Migration[6.1]
  def change
    create_table :lobbies do |t|
      t.string :name
      t.string :document
      t.string :company
      t.string :board
      t.datetime :entry
      t.datetime :exit
      t.text :obs

      t.timestamps
    end
  end
end
