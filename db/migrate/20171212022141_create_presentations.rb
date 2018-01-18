class CreatePresentations < ActiveRecord::Migration[5.1]
  def change
    create_table :presentations do |t|
      t.string :title
      t.string :site
      t.string :comment
      t.datetime :datetime
      t.string :contributors
    end
  end
end
