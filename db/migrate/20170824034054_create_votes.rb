class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.references :contractable, polymorphic: true, index: true
      t.string :votable_type
      t.integer :votable_id
      t.integer :weight
      t.timestamps
    end
  end
end
