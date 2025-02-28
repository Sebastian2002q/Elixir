defmodule CalculoConsumo do
  def main do
    nombre_conductor =
      "Ingrese el nombre del conductor= "
      |> Util.ingresar(:texto)

    distancia_recorrida =
      "Ingrese la distancia recorrida en km= "
      |> Util.ingresar(:real)

    combustible_consumido =
      "Ingrese el combustible consumido en litros= "
      |> Util.ingresar(:real)

    rendimiento = calcular_rendimiento(distancia_recorrida, combustible_consumido)

    generar_mensaje(rendimiento, nombre_conductor)
    |> Util.mostrar_mensaje()
  end

  def calcular_rendimiento(distancia_recorrida, combustible_consumido),
    do: distancia_recorrida / combustible_consumido

  def generar_mensaje(rendimiento, nombre_conductor) do
    rendimiento = rendimiento |> Float.round(2)
    "#{nombre_conductor} el rendimiento de su vehículo es de #{rendimiento} km/l"
  end
end

CalculoConsumo.main()
