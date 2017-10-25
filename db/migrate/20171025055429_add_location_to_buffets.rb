class AddLocationToBuffets < ActiveRecord::Migration[5.1]
  def change
    add_column :buffets, :location, :text
  end
end
