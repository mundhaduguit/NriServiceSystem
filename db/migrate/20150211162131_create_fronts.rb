class CreateFronts < ActiveRecord::Migration
  def change
    create_table :fronts do |t|

      t.timestamps
    end
  end
end
