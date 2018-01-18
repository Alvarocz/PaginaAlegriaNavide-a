class AddCreatedAtColumn < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :created_at, :datetime
    add_column :comments, :updated_at, :datetime

    add_column :images, :created_at, :datetime
    add_column :images, :updated_at, :datetime

    add_column :presentations, :created_at, :datetime
    add_column :presentations, :updated_at, :datetime

    add_column :videos, :created_at, :datetime
    add_column :videos, :updated_at, :datetime
  end
end
