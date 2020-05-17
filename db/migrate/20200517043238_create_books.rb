class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :name
      t.string :thumbnail
      t.string :author
      t.string :url
      t.boolean :is_read
      t.string :note

      t.timestamps
    end
  end
end
