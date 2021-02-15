class CreateSeeks < ActiveRecord::Migration[6.1]
  def change
    create_table :seeks do |t|
      t.timestamps

      t.references :exchange
      t.references :game
      t.integer :exchange_type, index: true, default: 0
      t.decimal :price, precision: 10, sclae: 2
    end
  end
end
