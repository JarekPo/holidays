class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :name
      t.text :notes
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end