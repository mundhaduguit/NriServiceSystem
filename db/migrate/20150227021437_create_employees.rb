class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.integer :region_id
      t.integer :user_id
      t.timestamps
    end
  end
end
