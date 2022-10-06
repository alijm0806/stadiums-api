class LatToStadiums < ActiveRecord::Migration[7.0]
  def change
    add_column :stadia, :lat, :float
  end
end
