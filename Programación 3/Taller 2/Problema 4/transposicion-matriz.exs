defmodule TransposicionMatriz do
  @doc """
  Funcion que realiza la transpuesta de una matriz
  """

  def main() do
    matriz =
      [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
      |> IO.inspect(charlists: :as_lists)
      |> transponer_matriz()
      |> IO.inspect(charlists: :as_lists)
  end

  # Si la lista esta vacia, retorna una lista vacia
  def transponer_matriz([]), do: []

  # Si el primer es una lista vacia no nos importa el resto, retorna una lista vacia, caso base
  def transponer_matriz([[] | _]), do: []


  def transponer_matriz(matriz) do
    # Con Enum.map(matriz, &hd/1)] se forma una nueva lista con el primer elemento de cada fila, creando la primera fila
    # de la transpuesta y se hace una llamada recursiva, con Enum.map(matriz, &tl/1) se quita el primer elemento de cada fila
    [Enum.map(matriz, &hd/1)] ++ transponer_matriz(Enum.map(matriz, &tl/1))
  end
end

TransposicionMatriz.main()
