class AddImageToKittens < ActiveRecord::Migration[6.1]
  def change
    add_column :kittens, :image, :string
  end
end
