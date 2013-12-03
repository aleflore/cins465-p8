class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.text :description
      t.string :picture
      t.integer :profile_id

      t.timestamps
    end
    add_index :profiles, :profile_id
  end
end
