defmodule ConversionUnidades do
  def main do
    nombre_usuario =
      "Ingrese su nombre= "
      |> Util.ingresar(:texto)

    temperatura_celcius = "Ingrese la temperatura en °C = "
    |> Util.ingresar(:real)

    temperatura_farenheit = convertir_unidades(temperatura_celcius, :farenheit)

    temperatura_kelvin = convertir_unidades(temperatura_celcius, :kelvin)

    generar_mensaje(nombre_usuario, temperatura_farenheit, temperatura_kelvin)
    |> Util.mostrar_mensaje()
  end

  def generar_mensaje(nombre_usuario, temperatura_farenheit, temperatura_kelvin) do
    temperatura_farenheit = temperatura_farenheit |> Float.round(1)
    temperatura_kelvin = temperatura_kelvin |> Float.round(1)
    "#{nombre_usuario} la temperatura es:\n#{temperatura_farenheit} °F\n#{temperatura_kelvin}°K"
  end

  def convertir_unidades(temperatura_celcius, :farenheit),
    do: convertir_unidades(temperatura_celcius, &ConversionUnidades.celcius_a_farenheit/1, :farenheit)

  def convertir_unidades(temperatura_celcius, :kelvin),
    do: convertir_unidades(temperatura_celcius, &ConversionUnidades.celcius_a_kelvin/1, :kelvin)

  defp convertir_unidades(temperatura_celcius, conversion, _) do
    temperatura_celcius
    |> conversion.()
  end

  def celcius_a_farenheit(temperatura_celcius) do
    temperatura_celcius * (9 / 5) + 32
  end

  def celcius_a_kelvin(temperatura_celcius) do
    temperatura_celcius + 273.15
  end
end

ConversionUnidades.main()
