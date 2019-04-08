# Contrato Digital
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
+ Limitación de generación o envío por correo dle contrato mientras el contrato no haya sido registrado en Siicon.

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