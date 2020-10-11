class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :name
      t.decimal :price, precision: 2, scale: 6

      t.timestamps
    end
  end
end
