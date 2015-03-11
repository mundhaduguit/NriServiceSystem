class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      
      t.timestamps
    end
    add_attachment :pictures, :avatar
  end
end
