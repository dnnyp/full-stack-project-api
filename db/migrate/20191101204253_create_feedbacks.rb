class CreateFeedbacks < ActiveRecord::Migration[5.2]
  def change
    create_table :feedbacks do |t|
      t.string :comment
      t.integer :rating

      t.timestamps
    end
  end
end
