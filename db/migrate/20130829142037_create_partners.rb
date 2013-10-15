class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
      t.string :name
      t.string :site
      t.text :description
      t.string :logo

      t.timestamps
    end
  end
end
