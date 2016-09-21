class CreatePresentations < ActiveRecord::Migration[5.0]
  def change
    create_table :presentations do |t|
      t.string :site
      t.date :date
      t.string :contributors

      t.timestamps
    end
  end
end
