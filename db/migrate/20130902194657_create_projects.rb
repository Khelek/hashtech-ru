class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.integer :partner_id
      t.boolean :completed
      t.string :site
      t.string :repository

      t.timestamps
    end
  end
end
