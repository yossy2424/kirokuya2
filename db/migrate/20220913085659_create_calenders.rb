class CreateCalenders < ActiveRecord::Migration[6.0]
  def change
    create_table :calenders do |t|
      t.datetime :start_time
      t.references :user, foreign_key: true
      t.references :record, foreign_key: true
      t.timestamps
    end
  end
end
