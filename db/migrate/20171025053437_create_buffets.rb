class CreateBuffets < ActiveRecord::Migration[5.1]
  def change
    create_table :buffets do |t|
      t.string :title

      t.timestamps
    end
  end
end
