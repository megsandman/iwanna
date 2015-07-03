class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :venue_id
      t.integer :neighborhood_id
      t.integer :genre_id

      t.timestamps
    end
  end
end
