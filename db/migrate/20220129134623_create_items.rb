class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.integer :task_id
      t.string :task_name
      t.text :task_description
      t.integer :bucket_id
      t.string :bucket_name
      t.datetime :date_added
      t.datetime :deadline
      t.boolean :task_completed
      t.integer :user_id

      t.timestamps
    end
  end
end
