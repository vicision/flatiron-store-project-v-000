class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.string :title

    end
  end
end
