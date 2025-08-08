defmodule NumeroMayor do
  def main() do
    lista =
      [0, 1, 2, 3, 4]
      |> IO.inspect()

    lista
    |> buscar_numero_mayor()
    |> Util.mostrar_mensaje()
  end

  def buscar_numero_mayor([elemento]), do: elemento

  def buscar_numero_mayor(lista) do
    mitad = div(length(lista), 2)
    {izquierda, derecha} = Enum.split(lista, mitad)
    max_izquierda = buscar_numero_mayor(izquierda)
    max_derecha = buscar_numero_mayor(derecha)
    max(max_izquierda, max_derecha)
  end
end

NumeroMayor.main()
