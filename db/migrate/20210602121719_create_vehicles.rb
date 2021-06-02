class CreateVehicles < ActiveRecord::Migration[6.1]
  def change
    create_table :vehicles do |t|
      t.string :driver
      t.string :board
      t.datetime :entry
      t.datetime :exit
      t.text :obs

      t.timestamps
    end
  end
end
