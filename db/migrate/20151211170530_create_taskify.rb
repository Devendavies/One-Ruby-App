class CreateTaskify < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.references :user, index: true
      t.string :priority
      t.string :content
      t.boolean :completed

      t.timestamps
    end
  end
end
