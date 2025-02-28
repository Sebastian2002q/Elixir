defmodule UtilJava do
  def mostrar_mensaje(mensaje) do
    System.cmd("java", ["-cp", ".", "Mensaje", mensaje])
  end

  def ingresar(mensaje, :texto) do
    case System.cmd("java", ["-cp", ".", "Mensaje", "input", mensaje]) do
      {output, 0} ->
        "Texto ingresado correctamente.\nEntrada: #{output}"
        |> IO.puts()

        String.trim(output)

      {error, code} ->
        IO.puts("Error al ingresar el texto. Código: #{code}")
        IO.puts("Detalles: #{error}")
        nil
    end
  end

  def ingresar(mensaje, :real), do: ingresar(mensaje, &String.to_float/1, :real)
  def ingresar(mensaje, :entero), do: ingresar(mensaje, &String.to_integer/1, :entero)

  def ingresar(mensaje, parser, tipo_dato) do
    case System.cmd("java", ["-cp", ".", "Mensaje", "input", mensaje]) do
      {output, 0} ->
        try do
          output
          |> String.trim()
          |> parser.()
        rescue
          ArgumentError ->
            "Error, se espera que ingrese un número #{tipo_dato}"
            |> mostrar_error()

            mensaje
            |> ingresar(parser, tipo_dato)
        end
    end
  end

  defp mostrar_error(mensaje) do
    IO.puts(:standard_error, mensaje)
  end
end
