﻿# Contrato Digital
*Arquitecto de sistemas: Luis Robles*

*Proyect Manager: Juan Pablo Alviar*

Sistema para la generación y administración de contratos digitales de Autofinanciera.

## Instalación
- Visual Studio 2019 Community Edition (16.0)
-.NET Core 2.2.3 con SDK 2.2.105
- C# 7.3
- HTML5, CSS3, Javascript
- CentOS 7.4 x64
- PHP 7.2
- MariaDB 10.3
- SQL Server 2017 x64
- Kestrel Server 2.1
- Nginx 10.3


## Librerias
+ jQuery 3.3.1
+ Bootstrap 4.3.1
+ iTextt 7.1.5 
+ FontAwesome 5.3.6
+ AOS 1.8.6
+ jQuery Validation
+ jQuery UI
+ Mailkit 2.1.3
+ Newtonsoft Json 11.0.2
+ Google Fonts for Lato


# Versiones

## 1.0.3 (2019-08-06)
### Feature
+ Registro de los pagos en cierre comercial a medida que se van realizando.

## 1.0.2 (2019-08-05)
### Bugfix
+ Excepción de datos huéfanos en la vista indexada inicial de prospectos con un mensaje de                         advertencia de datos errados y reinserción de datos nuevamente.

## 1.0.1 (2019-08-02)
### Bugfix
+ Excepción condicional en caso que la confirmación del contrato no sea debidamente guardada en sistema y el contrato quede huérfano.
 
## 1.0 (2019-07-31)
### Feature
+ Contratos actualizados.
+ Version 1.0 producción.

## 0.1.9.73 (2019-07-30)
### Feature
+ Templates de correos electrónicos con el arte de Qurii.

## 0.1.9.72 (2019-07-25)
### Bugfix
+ Reconstrucción de guías de pago a fonbienes y autofinanciera
+ Reconstrucción de cotizaciones a formato preliminar nuevo.
+ Reconstrucción del manual del suscriptor.

## 0.1.9.70 (2019-07-25)
### Bugfix
+ Inclusión de tipo de bien cuota fija o variable de forma explicita.
+ Inclusión de mensajes de respuesta del Siicon vacío.

## 0.1.9.64 (2019-07-24)
### Bugfix
+ Adecuación de reación de usuarios según el Siicon.


## 0.1.9.63 (2019-07-24)
### Bugfix
+ Creación de usuarios


## 0.1.9.62 (2019-07-24)
### Feature
+ Se agrega la pantalla de "Mis prospectos" donde se filtra por usuario y por agencia automáticamente.
+ Se organizan las listas de prospectos y contratos por fecha de creación.
+ Se redirige el correo con el contrato a digital@autofinanciera.com.co
+ Se agrega el tipo de bien al nombre del bien (usado o nuevo)

## 0.1.9.61 (2019-07-23)
### Bugfixes
+ Se replica todas las barras de menú en la parte superior de cada pantalla de detalles de prospecto y contrato
+ Se cambia todo el detalle de colores a verde
+ se agregan los fondos empresariales.
+ Se cambia el color de las barras a negro
+ Se permite cargar un pago no convencional el mismo día
+ Se hace homogéneo el título de las referencias de pago
+ Se cambia el nombre del PDF a Guía de pago


## 0.1.9.59 (2019-07-18)
### Bugfixes
+ Se elimina la alerta del CAC
+ Se reorganiza el CAC
+ Se corrige el nombre del correo para el plan KIA.

## 0.1.9.58 (2019-07-18)
### Bugfixes
+ Ajuste pantalla de errores.
+ Ajuste de búsqueda de prospectos para evitar datos huérfanos.


## 0.1.9.57 (2019-07-17)
### Feature
+ Edición de usuarios
+ Datos extra del prospecto en forma de cara a cara


## 0.1.9.50 (2019-07-13)
### Feature
+ Correos modelo de correo Kia Plan

## 0.1.9.48 (2019-07-05)
### Feature
+ Advertencia visual si el cliente no gana más de la cuota inicial
+ Auditoria generalizada en toda la aplicación.
+ Reconstrucción de la UIX del contrato.

## 0.19.44 (2019-06-26)
### Feature

+ Restructuración  de toda la interfaz con los colores y la marca correcta.
+ Restructuración esttructural de la presentación visual de la información.

## 0.19.39 (2019-06-20)
### Feature

+ Alerta cuando el cierre coemrcial no está asignado en la plataforma.

## 0.19.27 (2019-05-30)
### Feature
#### Duplicidad de datos del prospecto

+ Al salvar el prospecto se valida que:
  + Número de documento no sea igual a cero.
  + Número de documento no haya sido registrado previamente.
  + Correo electrónico no haya sido registrado previamente.
+ Al cargar la visa de creación de prospectos, se limpian todos los 
 campos de texto, y se vacían todos los campos de selección múltiple, 
 de forma tal que falle la validación del formulario y haya que 
 rellenar todos los campos requeridos nuevamente, evitando así 
 duplicida de datos o reenvío del DOM lleno.


## 0.1.9.26 (2019-05-28)
### Features
+ Se bloquea el elemento de selección simple para los asesores, solo puedan seleccionarse a si mismos.

## 0.1.9.25 (2019-05-27)
### Features
+ Se bloquea el elemento de selección simple para los asesores, solo puedan seleccionarse a si mismos.

## 0.1.9.23 (2019-04-16)
### Features
+ Reporte legal.
+ Separation of Concerns para todos los archivos de JS.
### Bugfixes
+ Corrección del botón de actualizar la vista de detalles.
+ Corrección de la etiqueta de creación y registro de contrato nuevo, cambiando el verbo a Diligenciar.


## 0.1.9.16 (2019-04-12)
### Features
+ El campo de correo se hace solo lectura para evitar que el autocompletar de google chrome lo modifique.



## 0.1.9.15 (2019-04-11)
### Features
+ Se limita el valor del abono y la generación referencia al saldo restante.

## 0.1.9.14 (2019-04-09)
### Minor Bugfixes
+ Reconstrucción del botón de actualización de estado del contrato.
+ Texto de la confirmación de recepción de ampliado siendo más específico.
+ Corrección de validación en la edición del prospecto.
+ Corrección de redireccionamiento al editar un prospecto desde la búsqueda discriminada.
+ Se oculta la emisión de recibos una vez pagado en su totalidad.

## 0.1.9.13 (2019-04-08)
### Bugfix
+ Corrección del botón de reenvío de condiciones del contrato.

## 0.1.9.12 (2019-04-08)
### Feature
+ Unicidad de número de cédula a nivel de prospectos.

## 0.1.9.11 (2019-04-08)
### Bugfixes
+ Límite de acceso para la lógica matemática que redirecciona en caso de:
  + Intentar generar un contrato sin que el prospecto tenga la confirmación  de tratamiento de datos.
  + Intentar generar un contrato sin que el último esté debidamente pagado y  registrado en el Siicon.
  + Validar que al intentar generar un contrato, este sea el primero, si no lo es, validar que el  último contrato registrado se encuentre cerrado (pagado, registrado en Siicon).
### Features
+ Los recibos emiten ahora dos referencias, una específica para Bancolombia y otra para el resto  de los medios de pago.
+ Actualización de arte: toda la tipografía se convierte a Lato (Regular y Bold, normal y oblicua)

## 0.1.9.10 (2019-03-18)
### Bugfixes
+ Limitación y comprobación de registro de pagos manuales a valores repetidos.
+ Limitación a tamaño de la cédula.
+ Conversión automática a 0 en los campos correspondientes al ingreso y egreso.
+ Limitación de creación y registro de contratos nuevos, mientras el último contrato no esté pagado y registrado en Siicon.
+ Limitación de generación o envío por correo del contrato mientras el contrato no haya sido registrado en Siicon.

## 0.1.9.9 (2019-03-18)
### Bugfixes
+ Corrección de PDFs
+ FREEZEE.

## 0.1.9.7 (2019-03-11)
### Features
+ Registro de pagos automatizados de tu compra.
+ Actualización del modelo de datos

## 0.1.8.81 (2019-03-08)
### Bugfixes
+ Limpieza en cascada del formulario de la liquidación.
+ Actualización de la vista de detalle y la vista de indexación del contrato, conteniendo datos extra, la definición de las ciudades y departamentos, y el estado del contrato como tal.
+ Actualización de vista resumen con los pagos manuales, automáticos y bancarios, realizando la sumatoria en cada caso individual.
+ Modificación de las reglas de validación: no se pueden tener dos contratos abiertos al mismo tiempo hasta que el último de ellos no haya terminado la validación y se encuentre en estado cerrado.
+ Un prospecto puede tener tantos contratos como sea posible.
+ Limitación de las reglas de validación y continuación del contrato.
+ Modificación de forma de los PDFs.
+ Inclusión de generación de pagos para promociones.
+ Registro ordenado de los pagos manuales directamente con el contrato completo.

## 0.1.6 (2018-08-29)
+ Conexión con SIICON, envío de personas.

## 0.1.5.8 (2018-08-27)
### Features
+ Creación del Dashboard.
+ Creación de la interfaz de usuarios.
+ Creación de la conexión de método generador.
+ Conexión con SIICON, envío de personas.

## 0.1.5.7 (2018-08-08)
### Features
+ Versión de los PDFs con la hoja de autorizaciones
+ Campo de compañía guardada en base de datos
+ Base de datos a versión 1.5.7
+ Actualización versión JS base 1.0.4
+ Actualización Bootstrap a V4.1.3

## 0.1.5 (2018-07-13)
### Features
+ Creación webservice local hacia Siicon
+ Conexión de jQuery contra el servicio de Siicon
+ Conexión y rellenado de los métodos con Siicon.
+ Carga del documento de identidad
+ Carga de emails individuales
+ Separación de la cédula en su propia tabla
+ Reedición de todos los PDF's

## 0.1.4 (2018-07-10)
### Features
+ Confirmación del corrreo y aceptación del contrato.
+ Conformación de los contratos PDFs

## 0.1.3 (2018-07-06)
### Features
+ Envío del recibo y del contrato por correo.

## 0.1.1
### Features
+ Creación del método de encriptación del código de barras Code128 escrito originalmente en VisualBasic Script.
+ Creación del recibo de pago con el código de barras para llevarlo a confirmar por el banco.

## 0.1.0
### Features
+ Creación del PDF.
+ Rellenado del PDF.
+ Exportación del PDF por el navegador.