defmodule NodoServidor do
  @nombre_servicio_local :servicio_cadenas

  def main() do
    Util.mostrar_mensaje("Proceso Secundario")

    registrar_servicio(@nombre_servicio_local)

    procesar_mensajes()
  end

  defp registrar_servicio(nombre_servicio_local) do
    Process.register(self(), nombre_servicio_local)
  end

  defp procesar_mensajes() do
    receive do
      {productor, mensaje} ->
        respuesta = procesar_mensaje(mensaje)
        send(productor, respuesta)
        if respuesta != :fin, do:  procesar_mensajes()
    end
  end

  defp procesar_mensaje(:fin), do: :fin
  defp procesar_mensaje({:mayusculas, mensaje}), do: String.upcase(mensaje)
  defp procesar_mensaje({:minusculas, mensaje}), do: String.downcase(mensaje)
  defp procesar_mensaje({funcion, mensaje}) when is_function(funcion, 1), do: funcion.(mensaje)
  defp procesar_mensaje(mensaje), do: "El mensaje \"#{mensaje}\" es desconocido."
end

NodoServidor.main()
