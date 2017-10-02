class Aluguel < ActiveRecord::Base
  has_one :veiculo
  has_one :usuario
end
