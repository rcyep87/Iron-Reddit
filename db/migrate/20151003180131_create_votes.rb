class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :vote_count, default: 0
      t.belongs_to :link, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
