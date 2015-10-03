class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :subject
      t.string :post
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
