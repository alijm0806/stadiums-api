class AddCapacityToStadiums < ActiveRecord::Migration[7.0]
  def change
    add_column :stadia, :capacity, :integer
  end
end
