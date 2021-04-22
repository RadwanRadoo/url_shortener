class CreatePages < ActiveRecord::Migration[6.1]
  def change
    create_table :pages do |t|
      t.bigint :id
      t.string :url
      t.string :shortenUrl

      t.timestamps
    end
  end
end
