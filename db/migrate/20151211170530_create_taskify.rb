class CreateTaskify < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :priority
      t.string :author
      t.string :content

      t.timestamps
    end
  end
end
