class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :tittle
      t.text :instructions

      t.timestamps
    end
  end
end
