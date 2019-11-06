class CreateHealthRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :health_records, ::primary_key => :user_id do |t|
      t.string :name
      t.date :birthday
      t.text :diagnosis
      t.string :recorded_by
      t.text :history

      t.timestamps
    end
  end
end
