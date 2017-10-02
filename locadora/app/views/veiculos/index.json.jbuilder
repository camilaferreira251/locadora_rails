json.array!(@veiculos) do |veiculo|
  json.extract! veiculo, :id, :placa, :marca, :modelo, :cor, :arCondicionado, :vidroEletrico, :travaEletrica, :cambioAutomatio, :valorDiaria
  json.url veiculo_url(veiculo, format: :json)
end
