defmodule EntradaReales do
  def main do
    valor_producto =
      "Ingrese el valor del producto: $"
      |> UtilJava.ingresar(:entero)

    porcentaje_descuento =
      "Ingrese el porcentaje de descuento: %"
      |> UtilJava.ingresar(:real)

    calcular_valor_final(valor_producto, porcentaje_descuento)
    |> generar_mensaje()
    |> UtilJava.mostrar_mensaje()
  end

  defp calcular_valor_descuento(valor_producto, porcentaje_descuento) do
    valor_producto * (porcentaje_descuento / 100)
  end

  defp calcular_valor_final(valor_producto, porcentaje_descuento) do
    valor_producto - calcular_valor_descuento(valor_producto, porcentaje_descuento)
  end

  defp generar_mensaje(valor_final) do
    valor_final = :erlang.float_to_binary(valor_final, [:compact, {:decimals, 1}])

    "El precio final es de : $#{valor_final}"
  end
end

EntradaReales.main()
