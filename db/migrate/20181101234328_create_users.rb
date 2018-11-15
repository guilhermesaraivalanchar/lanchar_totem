class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :nome
      t.string :codigo
      t.string :desconto_id
      t.string :cartao_id
      t.string :tipo_user_id
      t.decimal :saldo, precision: 10, scale: 2
      t.integer :credito

      t.timestamps
    end
  end
end
