class AddDescriptionToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :description, :text
    add_column :pictures, :heading, :string
  end
end
