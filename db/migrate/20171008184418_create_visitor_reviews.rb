class CreateVisitorReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :visitor_reviews do |t|

      t.timestamps
    end
  end
end
