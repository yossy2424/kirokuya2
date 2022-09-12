class CreateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :records do |t|
      t.float :weight
      t.float :body_fat_percentage
      t.date :record_month
      t.date :racord_date
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end