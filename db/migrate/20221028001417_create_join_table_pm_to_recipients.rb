class CreateJoinTablePmToRecipients < ActiveRecord::Migration[7.0]
  def change
    create_table :join_table_pm_to_recipients do |t|
      t.references :private_message, index: true
      t.references :recipient, index: true

      t.timestamps
    end
  end
end
