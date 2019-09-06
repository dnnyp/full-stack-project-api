class CreateRosters < ActiveRecord::Migration[5.2]
  def change
    create_table :rosters do |t|
      t.string :name
      t.string :season
      t.integer :league_size
      t.string :scoring_format
      t.references :user, index: true, foreign_key: true, null: false

      t.timestamps
    end
  end
end
