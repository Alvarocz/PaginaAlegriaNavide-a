class CreatePresentations < ActiveRecord::Migration[5.0]
  def change
    create_table :presentations do |t|
      t.string :site
      t.string :p_type
      t.datetime :datetime
      t.string :contributors

      t.timestamps
    end
  end
end
