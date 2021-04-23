class CreatePages < ActiveRecord::Migration[6.1]
  def change
    create_table :pages do |t|
      t.string :url,           null: false, unique: true
      t.string :shortenUrl,    null: false, unique: true

      t.timestamps
    end

    change_column :pages, :id, :bigint
  end
end
