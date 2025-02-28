defmodule Peaje do

  def main do
    placa_vehiculo =
      "Ingrese la placa del vehículo= "
      |> Util.ingresar(:texto)

    tipo_vehiculo =
      "Ingrese el tipo de vehículo= "
      |> Util.ingresar(:texto)

    peso_vehiculo =
      "Ingrese el peso del vehículo (toneladas)= "
      |> Util.ingresar(:real)

    precio_total = calcular_precio_peaje(tipo_vehiculo, peso_vehiculo)

    generar_mensaje(placa_vehiculo, tipo_vehiculo, precio_total)
    |> Util.mostrar_mensaje()
  end

  defp generar_mensaje(placa_vehiculo, tipo_vehiculo, precio_total) do
    precio_total = :erlang.float_to_binary(precio_total, [:compact, {:decimals, 1}])
    "Vehículo #{placa_vehiculo} (#{tipo_vehiculo}) debe pagar = $#{precio_total}"
  end

  def calcular_precio_peaje(tipo_vehiculo, peso_vehiculo) do
    case tipo_vehiculo do
      "Carro" ->
        10000.0

      "Moto" ->
        5000.0

      "Camion" ->
        20000.0 + 2000 * peso_vehiculo
    end
  end
end

Peaje.main()
