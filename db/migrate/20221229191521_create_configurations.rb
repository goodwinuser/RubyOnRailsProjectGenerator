class CreateConfigurations < ActiveRecord::Migration[7.0]
  def change
    create_table :configurations do |t|
      t.string :MinRubyVersion
      t.string :MaxRubyVersion
      t.string :MinRailsVersion
      t.string :MaxRailsVersion
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
