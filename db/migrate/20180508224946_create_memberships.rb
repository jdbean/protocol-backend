class CreateMemberships < ActiveRecord::Migration[5.2]
  def change
    create_table :memberships do |t|
      t.belongs_to :user
      t.belongs_to :channel

      t.timestamps
    end
  end
end
