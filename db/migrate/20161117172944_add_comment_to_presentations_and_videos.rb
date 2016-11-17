class AddCommentToPresentationsAndVideos < ActiveRecord::Migration[5.0]
  def change
    add_column :presentations, :comment, :string
    add_column :videos, :comment, :string
  end
end
