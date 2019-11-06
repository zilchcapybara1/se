class CreateHouseholds < ActiveRecord::Migration[5.2]
  def change
    create_table :households do |t|
      t.string :name
      t.string :address
      t.integer :phone
      t.text :log
      t.date :date_of_residency

      t.timestamps
    end
  end
end
