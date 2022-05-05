class CreateKeyWords < ActiveRecord::Migration[6.0]
  def change
    create_table :key_words do |t|
      t.string :body, null: false
      t.belongs_to :request, null: false, foreign_key: true
      t.timestamps
    end
  end
end
