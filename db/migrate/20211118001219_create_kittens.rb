class CreateKittens < ActiveRecord::Migration[6.1]
  def change
    create_table :kittens do |t|
      t.string :name
      t.string :breed
      t.integer :age
      t.integer :weight

      t.timestamps
    end
  end
end
