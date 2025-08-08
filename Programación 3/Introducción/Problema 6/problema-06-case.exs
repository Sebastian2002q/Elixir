defmodule Descuento do
  def main do
    antiguedad = "Ingrese la antiguedad del cliente= "
    |> Util.ingresar(:entero)
    |> porcentaje_descuento()
    |> generar_mensaje
    |> Util.mostrar_mensaje()
  end

  defp porcentaje_descuento(antiguedad) do
    case antiguedad do
      antiguedad when antiguedad < 1 -> "0%"
      antiguedad when antiguedad <= 2 -> "10%"
      antiguedad when antiguedad <= 6 -> "14%"
      _ -> "17%"
    end
  end

  defp generar_mensaje(descuento) do
    "El porcentaje de descuento es #{descuento}"
  end
end

Descuento.main()
