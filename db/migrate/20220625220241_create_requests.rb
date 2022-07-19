class CreateRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :requests do |t|
      t.string :title
      t.text :description
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
