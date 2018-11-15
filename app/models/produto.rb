class Produto < ApplicationRecord
  #establish_connection "master_production"
  establish_connection(:master_production)
end
