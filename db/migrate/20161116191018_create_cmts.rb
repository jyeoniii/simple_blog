class CreateCmts < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text :msg
      t.integer :post_id

      t.timestamps
    end
  end
end
