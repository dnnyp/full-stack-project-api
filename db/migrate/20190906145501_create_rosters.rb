class CreateRosters < ActiveRecord::Migration[5.2]
  def change
    create_table :rosters do |t|
      t.string :name, null: false
      t.string :season, null: false
      t.integer :league_size, null: false
      t.string :scoring_format, null: false
      t.references :user, index: true, foreign_key: true, null: false

      t.timestamps
    end
  end
end
