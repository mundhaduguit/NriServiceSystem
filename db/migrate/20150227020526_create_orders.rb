class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.integer :service_id
      t.integer :employee_id
      t.date :service_date
      t.integer :relative_id
      t.string :state
      t.text :user_comment
      t.text :employee_comment
      t.integer :order_rating
      t.text :feedback

      t.timestamps
    end
  end
end
