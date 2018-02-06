class CreateCheeses < ActiveRecord::Migration[5.1]
  def change
    create_table :cheeses do |t|
      t.string :url
      t.integer :index
    end
  end
end
