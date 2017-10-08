class CreatePlaceRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :place_ratings do |t|

      t.timestamps
    end
  end
end
