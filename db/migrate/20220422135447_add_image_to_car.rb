class AddImageToCar < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :car_picture, :string
  end
end
