class AddTitleToPresentations < ActiveRecord::Migration[5.0]
  def change
    add_column :presentations, :title, :string
  end
end
