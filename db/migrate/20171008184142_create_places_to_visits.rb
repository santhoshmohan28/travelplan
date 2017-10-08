class CreatePlacesToVisits < ActiveRecord::Migration[5.1]
  def change
    create_table :places_to_visits do |t|

      t.timestamps
    end
  end
end
