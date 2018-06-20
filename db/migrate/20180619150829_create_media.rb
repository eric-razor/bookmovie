class CreateMedia < ActiveRecord::Migration[5.2]
  def change
    create_table :media do |t|
      t.string :name
      t.string :media_type
      t.string :director_author
      t.text :snippet
      t.text :review
      t.integer :rating
      t.integer :franchise_id

      t.timestamps
    end
  end
end
