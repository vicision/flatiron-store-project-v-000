class AddColumnsToLineItems < ActiveRecord::Migration
  def change
    add_column :line_items, :item_id, :integer
    add_column :line_items, :cart_id, :integer
  end
end
