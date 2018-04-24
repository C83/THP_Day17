class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.belongs_to :article, index: true
      t.timestamps
    end

  	create_table :articles_categories, id: false do |t|
      t.belongs_to :article, index: true
      t.belongs_to :categorie, index: true
    end

  end
end
