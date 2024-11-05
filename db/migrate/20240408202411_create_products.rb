class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :amount
      t.references :category, null: false, foreign_key: true
      t.boolean :status

      t.timestamps
    end
  end
end
