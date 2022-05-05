class CreateResponses < ActiveRecord::Migration[6.0]
  def change
    create_table :responses do |t|
      t.string :link_title, null: false
      t.string :link, null: false
      t.belongs_to :request, null: false, foreign_key: true
      t.timestamps
    end
  end
end
