class AddPresentationIdToImages < ActiveRecord::Migration[5.0]
  def change
    add_column :images, :presentation_id, :integer, blank: true
  end
end
