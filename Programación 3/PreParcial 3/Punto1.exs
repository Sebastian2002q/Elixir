defmodule PrimerPunto do
  def main() do
    matriz = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    t1 = Task.async(fn -> suma_matriz_bajo_diagonal(Enum.drop(matriz, 1)) end)
    t2 = Task.async(fn -> promedio_arriba_diagonal(matriz) end)
    a = Task.await(t1)
    b = Task.await(t2)

    c = (a * b)

    Util.mostrar_mensaje(c)
  end

  def suma_matriz_bajo_diagonal(matriz) do
    suma_fila(matriz, 1)
  end

  defp suma_fila([], _), do: 0

  defp suma_fila([fila | resto], i) do
    suma =
      Enum.take(fila, i)
      |> Enum.sum()

    suma + suma_fila(resto, i + 1)
  end

  def promedio_arriba_diagonal(matriz) do
    {suma, cuenta} = recorrer_fila(matriz, 0)
    if cuenta != 0 do
      suma/cuenta
    else
      raise ArgumentError, "Error al obtener el promedio"
    end
  end

  defp recorrer_fila([],_), do: {suma, cuenta}
  defp recorrer_fila([fila | resto]) do
    Enum.with_index(fila)
  end
end

PrimerPunto.main()
