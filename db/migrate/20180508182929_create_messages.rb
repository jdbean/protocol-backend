class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.belongs_to :user
      t.string :message
      t.belongs_to :channel
      t.timestamps
    end
  end
end
