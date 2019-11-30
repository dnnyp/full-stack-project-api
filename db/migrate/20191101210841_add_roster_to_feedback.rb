class AddRosterToFeedback < ActiveRecord::Migration[5.2]
  def change
    add_reference :feedbacks, :roster, foreign_key: true
  end
end
