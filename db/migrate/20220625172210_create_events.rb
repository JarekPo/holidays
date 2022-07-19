class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :name
      t.text :notes
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
