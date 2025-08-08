defmodule ContarPares do
  @doc """
  Función recursiva para contar cuantos pares hay en una lista
  """

  def main() do
    lista =
      [1, 2, 3, 4, 5, 6, 7, 8, 9]
      |> IO.inspect()
      |> contar_pares()
      |> generar_mensaje()
      |> Util.mostrar_mensaje()
  end

  def generar_mensaje(n), do: "El número de elementos pares de la lista es= #{n}"

  # Si la lista es una lista vacía, se retorna 0, caso base
  def contar_pares([]), do: 0

  # Se separa la lista en cabeza y cola
  def contar_pares([h | t]) do
    # Se analiza la cabeza de la lista
    if rem(h, 2) == 0 do
      # Si es par se suma 1 y se hace un llamado a contar_pares enviando solo la cola de la lista
      1 + contar_pares(t)
    else
      # Si no es par solo se hace llamado a contar_pares enviando la cola de la lista
      contar_pares(t)
    end
  end
end

ContarPares.main()
