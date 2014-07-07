class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :notes
      t.references :list, index: true
      t.references :user, index: true
      t.boolean :done

      t.timestamps
    end
  end
end
