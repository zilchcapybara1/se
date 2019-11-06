class CreateIncidents < ActiveRecord::Migration[5.2]
  def change
    create_table :incidents do |t|
      t.string :address
      t.string :reported_by
      t.string :phone
      t.datetime :date
      t.text :details

      t.timestamps
    end
  end
end
