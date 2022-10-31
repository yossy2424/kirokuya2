class ChangeRecords < ActiveRecord::Migration[6.0]
  def change
    remove_column :records, :weight
    remove_column :records,:body_fat_percentage
    add_column :records,:name, :string, null: :false, after: :id
    add_column :records,:value, :float, null: :false, after: :name
  end
end
