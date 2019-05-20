class AddYoutubeId < ActiveRecord::Migration[5.2]
  def change
    add_column :quotes, :youtube_id, :string
  end
end
