Feature: US16: Conexión con gadgets
    Como usuario
    quiero conectar la app con mi reloj inteligente
    para controlarla alejada del teléfono.

    Scenario: SC09: Enlace mediante Bluetooth
        AC06: App enlazada a Google Home
        Given el usuario aceptó los permisos de integración con otros dispositivos
        When conecte su asistente virtual
        Then podrá manipular la app de manera remota.

        Examples:
            | Conexiones  | Botón 'Conectar' | Mensaje en pantalla                 |
            | Google Home | Presionado       | Dispositivo 'Google Home' conectado |

    Scenario: SC10: Fallos para conectarse
        AC11: Error de enlace
        Given el usuario  denegó el enlace la aplicación con otro dispositivo
        When intente contectar su app a su asistente virtual
        Then aparecerá un mensaje de error de conexión.

        Examples:
            | Conexiones  | Botón 'Denegar' | Mensaje en pantalla                 |
            | Google Home | Presionado      | Dispositivo 'Google Home' rechazado |