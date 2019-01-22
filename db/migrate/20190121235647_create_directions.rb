class CreateDirections < ActiveRecord::Migration[5.2]
  def change
    create_table :directions do |t|
      t.text :step
      t.integer :post_id
      t.timestamps
    end
  end
end
