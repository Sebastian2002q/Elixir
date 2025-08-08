defmodule Matrushka do
  def main() do
    n =
      "Ingrese el numero de muñecas= "
      |> Util.ingresar(:entero)

    matrushka(n, 0)
    |> Util.mostrar_mensaje()
  end

  defp matrushka(n, aux) do
    if n < 0 do
      if abs(n) >= aux do
        nil
      else
        "Cerrando matrushka #{abs(n)}"
        |> Util.mostrar_mensaje()

        matrushka(n - 1, aux)
      end
    else
      "Abriendo matrushka #{n}"
      |> Util.mostrar_mensaje()
      matrushka(n - 1, aux + 1)
    end
  end
end

Matrushka.main()
