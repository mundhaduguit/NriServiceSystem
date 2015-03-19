class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.integer :imageable_id
      t.string :imageable_type
      t.timestamps
    end
    add_attachment :pictures, :avatar
    add_attachment :services, :avatar
  end
end
