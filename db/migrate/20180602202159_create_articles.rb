class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :link
      t.integer :journalist_id

      t.timestamps
    end
  end
end
