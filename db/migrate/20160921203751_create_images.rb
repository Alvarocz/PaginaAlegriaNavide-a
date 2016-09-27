class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.date :date
      t.string :route
      t.string :title

      t.timestamps
    end
  end
end
