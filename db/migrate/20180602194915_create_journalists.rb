class CreateJournalists < ActiveRecord::Migration[5.2]
  def change
    create_table :journalists do |t|
      t.string :first
      t.string :last

      t.timestamps
    end
  end
end
