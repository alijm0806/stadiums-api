class AddBuiltYearToStadiums < ActiveRecord::Migration[7.0]
  def change
    add_column :stadia, :built_year, :integer
  end
end
