class InitSchema < ActiveRecord::Migration

  def self.up

    create_table :users do |t|
      t.string :uuid, :unique => true
      t.timestamps
    end

    create_table :messages do |t|
      t.belongs_to :user
      t.integer :user_id
      t.string :uuid, :unique => true
      t.timestamps
    end

  end

  def self.down

     drop_table :users
     drop_table :messages

  end

end

