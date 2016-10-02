class CreateDataBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :data_blogs do |t|
      t.string :title
      t.string :content
      t.integer :amountOfSee
      t.timestamps
    end
  end
end
