class CreateNetworks < ActiveRecord::Migration
  def change
    create_table :networks do |t|
      t.integer :id
      t.string :name
      t.string :logo

      t.timestamps
    end
  end
end
