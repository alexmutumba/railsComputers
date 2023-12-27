class CreateDevices < ActiveRecord::Migration[7.1]
  def change
    create_table :devices do |t|
      t.string :name
      t.string :make
      t.string :mode
      t.string :color
      t.integer :size

      t.timestamps
    end
  end
end
