class CreateBookSites < ActiveRecord::Migration[6.0]
  def change
    create_table :book_sites do |t|
      t.string :title
      t.int :page_count
      t.int :rating

      t.timestamps
    end
  end
end
