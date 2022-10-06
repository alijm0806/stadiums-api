class LonToStadiums < ActiveRecord::Migration[7.0]
  def change
    add_column :stadia, :lon, :float
  end
end
