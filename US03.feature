Feature: US03: Añadir actividades
    Como universitario de pregrado
    quiero añadir actividades
    para registrar un horario compacto

    Scenario: SC05: El usuario añade cualquier tipo de actividades
        AC06: Actividad añadida
        Given que el usuario quiere añadir una actividad
        When ingrese al apartado correspondiente y la define
        Then la actividad aparece en la lista de pendientes con sus principales descripciones.

        Examples:
            | Actividad      | Descripción        | Botón 'Guardar' | Mensaje en pantalla |
            | Trabajo grupal | 17:00h, Curso: IHC | Presionado      | ¡Actividad añadida! |

    Scenario: SC05: El usuario tiene dificultades para agregar una actividad
        AC07: Error al añadir actividad
        Given el usuario quiere implementar una actividad
        When añada la actividad de manera incorrecta
        Then se guarda como borrador y aparece en un mensaje de advertencia.

        Examples:
            | Actividad | Descripción        | Botón 'Guardar' | Mensaje en pantalla              |
            | -         | 17:00h, Curso: IHC | Presionado      | Ingrese un nombre a su actividad |