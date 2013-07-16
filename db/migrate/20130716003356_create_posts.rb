class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.string :price
      t.string :email
      t.references :category
      t.timestamps
    end

    create_table :categories do |t|
      t.string :name
      t.timestamps
    end
  end
end
