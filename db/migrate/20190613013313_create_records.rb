class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.text :order
      t.datetime :deadline

      t.timestamps
    end
  end
end
