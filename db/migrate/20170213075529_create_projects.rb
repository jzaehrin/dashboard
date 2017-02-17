class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :short_description
      t.integer :status
      t.date :deadline
      t.string :tags
      t.integer :nbr_people
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
