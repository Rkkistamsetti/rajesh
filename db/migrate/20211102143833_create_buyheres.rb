class CreateBuyheres < ActiveRecord::Migration[6.1]
  def change
    create_table :buyheres do |t|

      t.timestamps
    end
  end
end
