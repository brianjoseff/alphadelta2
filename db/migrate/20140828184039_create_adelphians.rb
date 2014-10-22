class CreateAdelphians < ActiveRecord::Migration
  def change
    create_table :adelphians do |t|

      t.timestamps
    end
  end
end
