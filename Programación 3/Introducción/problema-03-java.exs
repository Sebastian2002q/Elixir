defmodule EntradaEnteros do
  def main do
    valor_total = "Ingrese el valor total de la factura: $"
    |> UtilJava.ingresar(:entero)

    valor_entregado = "Ingrese el valor entregado por el cliente: $"
    |> UtilJava.ingresar(:entero)

    calcular_devuelta(valor_total, valor_entregado)
    |> generar_mensaje()
    |> UtilJava.mostrar_mensaje()
  end

  defp calcular_devuelta(valor_total, valor_entregado) do
    valor_entregado-valor_total
  end

  defp generar_mensaje(devuelta) do
    "La devuelta es de: $#{devuelta}"
  end

end

EntradaEnteros.main()
