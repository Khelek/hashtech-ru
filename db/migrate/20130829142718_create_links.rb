class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.integer :partner_id
      t.text :value
      t.integer :network_id

      t.timestamps
    end
  end
end
