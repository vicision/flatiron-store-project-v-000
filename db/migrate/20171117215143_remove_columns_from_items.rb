class RemoveColumnsFromItems < ActiveRecord::Migration
  def change
    remove_column :items, :line_item_id
  end
end
