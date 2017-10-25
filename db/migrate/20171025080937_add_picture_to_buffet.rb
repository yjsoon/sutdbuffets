class AddPictureToBuffet < ActiveRecord::Migration[5.1]
  def change
    add_column :buffets, :picture, :string
  end
end
