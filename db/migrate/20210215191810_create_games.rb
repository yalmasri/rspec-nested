class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.timestamps

      t.string :name
    end
  end
end
