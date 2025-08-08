defmodule Descuento do
  def main do
    antiguedad = "Ingrese la antiguedad del cliente= "
    |> Util.ingresar(:entero)
    |> porcentaje_descuento()
    |> generar_mensaje
    |> Util.mostrar_mensaje()
  end

  defp porcentaje_descuento(antiguedad) do
    cond do
      antiguedad < 1 -> "0%"
      antiguedad <= 2 -> "10%"
      antiguedad <= 6 -> "14%"
      true -> "17%"
    end
  end

  defp generar_mensaje(descuento) do
    "El porcentaje de descuento es= #{descuento}"
  end
end

Descuento.main()
