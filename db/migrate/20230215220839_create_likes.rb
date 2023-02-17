class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|
      t.integer: user_id, index:{unique:true}
      t.timestamps
    end
  end
end
