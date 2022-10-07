class AddVideoToStadiums < ActiveRecord::Migration[7.0]
  def change
    add_column :stadia, :video_url, :string
  end
end
