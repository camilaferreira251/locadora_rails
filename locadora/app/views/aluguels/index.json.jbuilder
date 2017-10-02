json.array!(@aluguels) do |aluguel|
  json.extract! aluguel, :id, :veiculo_id, :usuario_id, :dataInicio, :datafim
  json.url aluguel_url(aluguel, format: :json)
end
