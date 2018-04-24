class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :name
      t.text :body
      t.text :description
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
