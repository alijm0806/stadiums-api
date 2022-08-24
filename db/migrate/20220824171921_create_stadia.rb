class CreateStadia < ActiveRecord::Migration[7.0]
  def change
    create_table :stadia do |t|
      t.string :name
      t.string :city
      t.string :address
      t.string :image

      t.timestamps
    end
  end
end
