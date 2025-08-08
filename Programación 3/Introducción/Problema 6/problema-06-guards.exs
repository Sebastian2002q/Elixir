defmodule Descuento do
  def main do
    antiguedad = "Ingrese la antiguedad del cliente= "
    |> Util.ingresar(:entero)
    |> porcentaje_descuento()
    |> generar_mensaje
    |> Util.mostrar_mensaje()
  end

  defp porcentaje_descuento(antiguedad) when antiguedad < 1, do: "0%"
  defp porcentaje_descuento(antiguedad) when antiguedad <= 2, do: "10%"
  defp porcentaje_descuento(antiguedad) when antiguedad <= 6, do: "14%"
  defp porcentaje_descuento(_), do: "17%"

  defp generar_mensaje(descuento) do
    "El porcentaje de descuento es= #{descuento}"
  end
end

Descuento.main()
