defmodule InventarioLibreria do
  def main do
    titulo_libro =
      "Ingrese el nombre del libro= "
      |> Util.ingresar(:texto)

    unidades_disponibles =
      "Ingrese la cantidad de unidades disponibles= "
      |> Util.ingresar(:entero)

    precio_unitario =
      "Ingrese el precio unitario= "
      |> Util.ingresar(:real)

    precio_total = calcular_precio_total(unidades_disponibles, precio_unitario)

    generar_mensaje(titulo_libro, unidades_disponibles, precio_total  )
    |> Util.mostrar_mensaje()
  end

  defp generar_mensaje(titulo_libro, unidades_disponibles, precio_total) do
    precio_total = :erlang.float_to_binary(precio_total, [:compact, {:decimals, 1}])
    "El libro #{titulo_libro} tiene #{unidades_disponibles} unidades, con un valor total de $#{precio_total}"
  end

  defp calcular_precio_total(unidades_disponibles, precio_unitario),
    do: unidades_disponibles * precio_unitario
end

InventarioLibreria.main()
