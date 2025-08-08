defmodule Descuento do
  @año 1991
  def main do
    cedula =
      "Ingrese la cédula= "
      |> Util.ingresar(:entero)

    cedula
    |> aplica_descuento?()
    |> Util.mostrar_mensaje()
  end

  defp aplica_descuento?(cedula) do
    case rem(cedula, @año) do
      0 -> true
      _ -> false
    end
  end
end

Descuento.main()
