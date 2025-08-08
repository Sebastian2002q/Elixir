defmodule Descuento do
  def main do
    antiguedad = "Ingrese la antiguedad del cliente= "
    |> Util.ingresar(:entero)
    |> porcentaje_descuento()
    |> generar_mensaje
    |> Util.mostrar_mensaje()
  end

  defp porcentaje_descuento(antiguedad) do
    if antiguedad >= 1 && antiguedad <=2 do
      "10%"
    else
      if antiguedad >= 3 && antiguedad <= 6 do
        "14%"
      else
        if (antiguedad > 6) do
          "17%"
        else
          "No aplica"
        end
      end
    end
  end

  defp generar_mensaje(descuento) do
    "El porcentaje de descuento es #{descuento}"
  end
end

Descuento.main()
