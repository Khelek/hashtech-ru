class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
      t.integer :id
      t.string :name
      t.text :description
      t.string :logo

      t.timestamps
    end
  end
end
