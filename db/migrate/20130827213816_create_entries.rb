class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.text :message
      t.string :location
      t.integer :user_id

      t.timestamps
    end

    add_index :entries, :user_id
  end
end
