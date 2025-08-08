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

  defp aplica_descuento?(cedula) when rem(cedula, @año) == 0, do: true
  defp aplica_descuento?(_), do: false
end

Descuento.main()
