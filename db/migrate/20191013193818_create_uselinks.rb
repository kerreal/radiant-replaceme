class CreateUselinks < ActiveRecord::Migration[5.2]
  def change
    create_table :uselinks do |t|
      t.string :title
      t.string :url_link
      t.integer :user_id
      t.timestamps
    end
  end
end
