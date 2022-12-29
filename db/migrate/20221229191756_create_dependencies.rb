class CreateDependencies < ActiveRecord::Migration[7.0]
  def change
    create_table :dependencies do |t|
      t.string :name
      t.string :version
      t.string :GemName
      t.references :configuration, null: false, foreign_key: true

      t.timestamps
    end
  end
end
