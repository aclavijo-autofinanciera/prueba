/*USE ContratoDigital
GO
DBCC CHECKIDENT ('Estado', RESEED, 16);  
GO*/
-- Estados
/*
INSERT INTO estado(IdTipoEstado,IdSiicon,Descripcion) VALUES(3, 00, 'SIN DEPARTAMENTO')
INSERT INTO estado(IdTipoEstado,IdSiicon,Descripcion) VALUES(3, 05, 'ANTIOQUIA')
INSERT INTO estado(IdTipoEstado,IdSiicon,Descripcion) VALUES(3, 08, 'ATLÁNTICO')
INSERT INTO estado(IdTipoEstado,IdSiicon,Descripcion) VALUES(3, 11, 'D.C.')
INSERT INTO estado(IdTipoEstado,IdSiicon,Descripcion) VALUES(3, 13, 'BOLÍVAR')
INSERT INTO estado(IdTipoEstado,IdSiicon,Descripcion) VALUES(3, 15, 'BOYACÁ')
INSERT INTO estado(IdTipoEstado,IdSiicon,Descripcion) VALUES(3, 17, 'CALDAS')
INSERT INTO estado(IdTipoEstado,IdSiicon,Descripcion) VALUES(3, 18, 'CAQUETÁ')
INSERT INTO estado(IdTipoEstado,IdSiicon,Descripcion) VALUES(3, 19, 'CAUCA')
INSERT INTO estado(IdTipoEstado,IdSiicon,Descripcion) VALUES(3, 20, 'CESAR')
INSERT INTO estado(IdTipoEstado,IdSiicon,Descripcion) VALUES(3, 23, 'CÓRDOBA')
INSERT INTO estado(IdTipoEstado,IdSiicon,Descripcion) VALUES(3, 25, 'CUNDINAMARCA')
INSERT INTO estado(IdTipoEstado,IdSiicon,Descripcion) VALUES(3, 27, 'CHOCÓ')
INSERT INTO estado(IdTipoEstado,IdSiicon,Descripcion) VALUES(3, 41, 'HUILA')
INSERT INTO estado(IdTipoEstado,IdSiicon,Descripcion) VALUES(3, 44, 'LA GUAJIRA')
INSERT INTO estado(IdTipoEstado,IdSiicon,Descripcion) VALUES(3, 47, 'MAGDALENA')
INSERT INTO estado(IdTipoEstado,IdSiicon,Descripcion) VALUES(3, 50, 'META')
INSERT INTO estado(IdTipoEstado,IdSiicon,Descripcion) VALUES(3, 52, 'NARIÑO')
INSERT INTO estado(IdTipoEstado,IdSiicon,Descripcion) VALUES(3, 54, 'NORTE DE SANTANDER')
INSERT INTO estado(IdTipoEstado,IdSiicon,Descripcion) VALUES(3, 63, 'QUINDÍO')
INSERT INTO estado(IdTipoEstado,IdSiicon,Descripcion) VALUES(3, 66, 'RISARALDA')
INSERT INTO estado(IdTipoEstado,IdSiicon,Descripcion) VALUES(3, 68, 'SANTANDER')
INSERT INTO estado(IdTipoEstado,IdSiicon,Descripcion) VALUES(3, 70, 'SUCRE')
INSERT INTO estado(IdTipoEstado,IdSiicon,Descripcion) VALUES(3, 73, 'TOLIMA')
INSERT INTO estado(IdTipoEstado,IdSiicon,Descripcion) VALUES(3, 76, 'VALLE DEL CAUCA')
INSERT INTO estado(IdTipoEstado,IdSiicon,Descripcion) VALUES(3, 81, 'ARAUCA')
INSERT INTO estado(IdTipoEstado,IdSiicon,Descripcion) VALUES(3, 85, 'CASANARE')
INSERT INTO estado(IdTipoEstado,IdSiicon,Descripcion) VALUES(3, 86, 'PUTUMAYO')
INSERT INTO estado(IdTipoEstado,IdSiicon,Descripcion) VALUES(3, 88, 'SAN ANDRÉS Y PROVIDENCIA')
INSERT INTO estado(IdTipoEstado,IdSiicon,Descripcion) VALUES(3, 91, 'AMAZONAS')
INSERT INTO estado(IdTipoEstado,IdSiicon,Descripcion) VALUES(3, 94, 'GUAINÍA')
INSERT INTO estado(IdTipoEstado,IdSiicon,Descripcion) VALUES(3, 95, 'GUAVIARE')
INSERT INTO estado(IdTipoEstado,IdSiicon,Descripcion) VALUES(3, 97, 'VAUPÉS')
INSERT INTO estado(IdTipoEstado,IdSiicon,Descripcion) VALUES(3, 99, 'VICHADA')*/

/*USE ContratoDigital
GO
DBCC CHECKIDENT ('Ciudades', RESEED, 0);  
GO*/
-- Ciudades
/*
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 00000, 00, 'SIN CIUDAD')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05001, 05, 'MEDELLIN')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05002, 05, 'ABEJORRAL')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05004, 05, 'ABRIAQUI')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05021, 05, 'ALEJANDRIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05030, 05, 'AMAGA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05031, 05, 'AMALFI')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05034, 05, 'ANDES')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05036, 05, 'ANGELOPOLIS')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05038, 05, 'ANGOSTURA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05040, 05, 'ANORI')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05042, 05, 'SANTA FE DE ANTIOQUIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05044, 05, 'ANZA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05045, 05, 'APARTADO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05051, 05, 'ARBOLETES')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05055, 05, 'ARGELIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05059, 05, 'ARMENIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05079, 05, 'BARBOSA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05086, 05, 'BELMIRA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05088, 05, 'BELLO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05091, 05, 'BETANIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05093, 05, 'BETULIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05101, 05, 'CIUDAD BOLIVAR')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05107, 05, 'BRICEÑO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05113, 05, 'BURITICA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05120, 05, 'CACERES')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05125, 05, 'CAICEDO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05129, 05, 'CALDAS')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05134, 05, 'CAMPAMENTO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05138, 05, 'CAÑASGORDAS')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05142, 05, 'CARACOLI')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05145, 05, 'CARAMANTA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05147, 05, 'CAREPA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05148, 05, 'EL CARMEN DE VIBORAL')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05150, 05, 'CAROLINA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05154, 05, 'CAUCASIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05172, 05, 'CHIGORODO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05190, 05, 'CISNEROS')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05197, 05, 'COCORNA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05206, 05, 'CONCEPCION')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05209, 05, 'CONCORDIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05212, 05, 'COPACABANA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05234, 05, 'DABEIBA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05237, 05, 'DONMATIAS')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05240, 05, 'EBEJICO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05250, 05, 'EL BAGRE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05264, 05, 'ENTRERRIOS')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05266, 05, 'ENVIGADO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05282, 05, 'FREDONIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05284, 05, 'FRONTINO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05306, 05, 'GIRALDO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05308, 05, 'GIRARDOTA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05310, 05, 'GOMEZ PLATA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05313, 05, 'GRANADA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05315, 05, 'GUADALUPE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05318, 05, 'GUARNE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05321, 05, 'GUATAPE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05347, 05, 'HELICONIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05353, 05, 'HISPANIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05360, 05, 'ITAGUI')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05361, 05, 'ITUANGO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05364, 05, 'JARDIN')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05368, 05, 'JERICO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05376, 05, 'LA CEJA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05380, 05, 'LA ESTRELLA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05390, 05, 'LA PINTADA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05400, 05, 'LA UNION')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05411, 05, 'LIBORINA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05425, 05, 'MACEO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05440, 05, 'MARINILLA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05467, 05, 'MONTEBELLO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05475, 05, 'MURINDO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05480, 05, 'MUTATA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05483, 05, 'NARIÑO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05490, 05, 'NECOCLI')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05495, 05, 'NECHI')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05501, 05, 'OLAYA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05541, 05, 'PEÑOL')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05543, 05, 'PEQUE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05576, 05, 'PUEBLORRICO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05579, 05, 'PUERTO BERRIO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05585, 05, 'PUERTO NARE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05591, 05, 'PUERTO TRIUNFO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05604, 05, 'REMEDIOS')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05607, 05, 'RETIRO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05615, 05, 'RIONEGRO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05628, 05, 'SABANALARGA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05631, 05, 'SABANETA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05642, 05, 'SALGAR')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05647, 05, 'SAN ANDRES DE CUERQUIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05649, 05, 'SAN CARLOS')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05652, 05, 'SAN FRANCISCO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05656, 05, 'SAN JERONIMO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05658, 05, 'SAN JOSE DE LA MONTAÑA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05659, 05, 'SAN JUAN DE URABA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05660, 05, 'SAN LUIS')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05664, 05, 'SAN PEDRO DE LOS MILAGROS')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05665, 05, 'SAN PEDRO DE URABA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05667, 05, 'SAN RAFAEL')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05670, 05, 'SAN ROQUE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05674, 05, 'SAN VICENTE FERRER')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05679, 05, 'SANTA BARBARA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05686, 05, 'SANTA ROSA DE OSOS')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05690, 05, 'SANTO DOMINGO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05697, 05, 'EL SANTUARIO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05736, 05, 'SEGOVIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05756, 05, 'SONSON')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05761, 05, 'SOPETRAN')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05789, 05, 'TAMESIS')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05790, 05, 'TARAZA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05792, 05, 'TARSO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05809, 05, 'TITIRIBI')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05819, 05, 'TOLEDO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05837, 05, 'TURBO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05842, 05, 'URAMITA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05847, 05, 'URRAO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05854, 05, 'VALDIVIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05856, 05, 'VALPARAISO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05858, 05, 'VEGACHI')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05861, 05, 'VENECIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05873, 05, 'VIGIA DEL FUERTE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05885, 05, 'YALI')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05887, 05, 'YARUMAL')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05890, 05, 'YOLOMBO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05893, 05, 'YONDO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 05895, 05, 'ZARAGOZA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 08001, 08, 'BARRANQUILLA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 08078, 08, 'BARANOA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 08137, 08, 'CAMPO DE LA CRUZ')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 08141, 08, 'CANDELARIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 08296, 08, 'GALAPA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 08372, 08, 'JUAN DE ACOSTA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 08421, 08, 'LURUACO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 08433, 08, 'MALAMBO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 08436, 08, 'MANATI')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 08520, 08, 'PALMAR DE VARELA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 08549, 08, 'PIOJO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 08558, 08, 'POLONUEVO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 08560, 08, 'PONEDERA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 08573, 08, 'PUERTO COLOMBIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 08606, 08, 'REPELON')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 08634, 08, 'SABANAGRANDE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 08638, 08, 'SABANALARGA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 08675, 08, 'SANTA LUCIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 08685, 08, 'SANTO TOMAS')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 08758, 08, 'SOLEDAD')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 08770, 08, 'SUAN')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 08832, 08, 'TUBARA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 08849, 08, 'USIACURI')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 11001, 11, 'BOGOTA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 13001, 13, 'CARTAGENA DE INDIAS')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 13006, 13, 'ACHI')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 13030, 13, 'ALTOS DEL ROSARIO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 13042, 13, 'ARENAL')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 13052, 13, 'ARJONA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 13062, 13, 'ARROYOHONDO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 13074, 13, 'BARRANCO DE LOBA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 13140, 13, 'CALAMAR')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 13160, 13, 'CANTAGALLO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 13188, 13, 'CICUCO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 13212, 13, 'CORDOBA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 13222, 13, 'CLEMENCIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 13244, 13, 'EL CARMEN DE BOLIVAR')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 13248, 13, 'EL GUAMO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 13268, 13, 'EL PEÑON')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 13300, 13, 'HATILLO DE LOBA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 13430, 13, 'MAGANGUE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 13433, 13, 'MAHATES')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 13440, 13, 'MARGARITA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 13442, 13, 'MARIA LA BAJA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 13458, 13, 'MONTECRISTO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 13468, 13, 'MOMPOS')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 13473, 13, 'MORALES')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 13490, 13, 'NOROSI')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 13549, 13, 'PINILLOS')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 13580, 13, 'REGIDOR')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 13600, 13, 'RIO VIEJO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 13620, 13, 'SAN CRISTOBAL')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 13647, 13, 'SAN ESTANISLAO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 13650, 13, 'SAN FERNANDO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 13654, 13, 'SAN JACINTO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 13655, 13, 'SAN JACINTO DEL CAUCA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 13657, 13, 'SAN JUAN NEPOMUCENO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 13667, 13, 'SAN MARTIN DE LOBA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 13670, 13, 'SAN PABLO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 13673, 13, 'SANTA CATALINA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 13683, 13, 'SANTA ROSA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 13688, 13, 'SANTA ROSA DEL SUR')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 13744, 13, 'SIMITI')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 13760, 13, 'SOPLAVIENTO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 13780, 13, 'TALAIGUA NUEVO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 13810, 13, 'TIQUISIO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 13836, 13, 'TURBACO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 13838, 13, 'TURBANA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 13873, 13, 'VILLANUEVA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 13894, 13, 'ZAMBRANO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15001, 15, 'TUNJA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15022, 15, 'ALMEIDA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15047, 15, 'AQUITANIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15051, 15, 'ARCABUCO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15087, 15, 'BELEN')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15090, 15, 'BERBEO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15092, 15, 'BETEITIVA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15097, 15, 'BOAVITA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15104, 15, 'BOYACA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15106, 15, 'BRICEÑO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15109, 15, 'BUENAVISTA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15114, 15, 'BUSBANZA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15131, 15, 'CALDAS')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15135, 15, 'CAMPOHERMOSO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15162, 15, 'CERINZA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15172, 15, 'CHINAVITA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15176, 15, 'CHIQUINQUIRA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15180, 15, 'CHISCAS')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15183, 15, 'CHITA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15185, 15, 'CHITARAQUE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15187, 15, 'CHIVATA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15189, 15, 'CIENEGA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15204, 15, 'COMBITA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15212, 15, 'COPER')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15215, 15, 'CORRALES')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15218, 15, 'COVARACHIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15223, 15, 'CUBARA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15224, 15, 'CUCAITA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15226, 15, 'CUITIVA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15232, 15, 'CHIQUIZA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15236, 15, 'CHIVOR')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15238, 15, 'DUITAMA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15244, 15, 'EL COCUY')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15248, 15, 'EL ESPINO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15272, 15, 'FIRAVITOBA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15276, 15, 'FLORESTA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15293, 15, 'GACHANTIVA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15296, 15, 'GAMEZA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15299, 15, 'GARAGOA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15317, 15, 'GUACAMAYAS')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15322, 15, 'GUATEQUE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15325, 15, 'GUAYATA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15332, 15, 'GÜICAN DE LA SIERRA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15362, 15, 'IZA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15367, 15, 'JENESANO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15368, 15, 'JERICO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15377, 15, 'LABRANZAGRANDE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15380, 15, 'LA CAPILLA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15401, 15, 'LA VICTORIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15403, 15, 'LA UVITA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15407, 15, 'VILLA DE LEYVA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15425, 15, 'MACANAL')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15442, 15, 'MARIPI')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15455, 15, 'MIRAFLORES')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15464, 15, 'MONGUA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15466, 15, 'MONGUI')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15469, 15, 'MONIQUIRA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15476, 15, 'MOTAVITA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15480, 15, 'MUZO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15491, 15, 'NOBSA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15494, 15, 'NUEVO COLON')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15500, 15, 'OICATA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15507, 15, 'OTANCHE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15511, 15, 'PACHAVITA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15514, 15, 'PAEZ')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15516, 15, 'PAIPA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15518, 15, 'PAJARITO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15522, 15, 'PANQUEBA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15531, 15, 'PAUNA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15533, 15, 'PAYA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15537, 15, 'PAZ DE RIO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15542, 15, 'PESCA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15550, 15, 'PISBA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15572, 15, 'PUERTO BOYACA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15580, 15, 'QUIPAMA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15599, 15, 'RAMIRIQUI')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15600, 15, 'RAQUIRA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15621, 15, 'RONDON')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15632, 15, 'SABOYA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15638, 15, 'SACHICA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15646, 15, 'SAMACA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15660, 15, 'SAN EDUARDO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15664, 15, 'SAN JOSE DE PARE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15667, 15, 'SAN LUIS DE GACENO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15673, 15, 'SAN MATEO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15676, 15, 'SAN MIGUEL DE SEMA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15681, 15, 'SAN PABLO DE BORBUR')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15686, 15, 'SANTANA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15690, 15, 'SANTA MARIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15693, 15, 'SANTA ROSA DE VITERBO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15696, 15, 'SANTA SOFIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15720, 15, 'SATIVANORTE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15723, 15, 'SATIVASUR')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15740, 15, 'SIACHOQUE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15753, 15, 'SOATA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15755, 15, 'SOCOTA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15757, 15, 'SOCHA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15759, 15, 'SOGAMOSO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15761, 15, 'SOMONDOCO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15762, 15, 'SORA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15763, 15, 'SOTAQUIRA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15764, 15, 'SORACA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15774, 15, 'SUSACON')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15776, 15, 'SUTAMARCHAN')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15778, 15, 'SUTATENZA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15790, 15, 'TASCO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15798, 15, 'TENZA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15804, 15, 'TIBANA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15806, 15, 'TIBASOSA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15808, 15, 'TINJACA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15810, 15, 'TIPACOQUE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15814, 15, 'TOCA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15816, 15, 'TOGÜI')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15820, 15, 'TOPAGA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15822, 15, 'TOTA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15832, 15, 'TUNUNGUA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15835, 15, 'TURMEQUE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15837, 15, 'TUTA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15839, 15, 'TUTAZA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15842, 15, 'UMBITA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15861, 15, 'VENTAQUEMADA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15879, 15, 'VIRACACHA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 15897, 15, 'ZETAQUIRA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 17001, 17, 'MANIZALES')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 17013, 17, 'AGUADAS')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 17042, 17, 'ANSERMA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 17050, 17, 'ARANZAZU')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 17088, 17, 'BELALCAZAR')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 17174, 17, 'CHINCHINA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 17272, 17, 'FILADELFIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 17380, 17, 'LA DORADA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 17388, 17, 'LA MERCED')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 17433, 17, 'MANZANARES')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 17442, 17, 'MARMATO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 17444, 17, 'MARQUETALIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 17446, 17, 'MARULANDA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 17486, 17, 'NEIRA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 17495, 17, 'NORCASIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 17513, 17, 'PACORA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 17524, 17, 'PALESTINA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 17541, 17, 'PENSILVANIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 17614, 17, 'RIOSUCIO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 17616, 17, 'RISARALDA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 17653, 17, 'SALAMINA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 17662, 17, 'SAMANA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 17665, 17, 'SAN JOSE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 17777, 17, 'SUPIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 17867, 17, 'VICTORIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 17873, 17, 'VILLAMARIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 17877, 17, 'VITERBO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 18001, 18, 'FLORENCIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 18029, 18, 'ALBANIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 18094, 18, 'BELEN DE LOS ANDAQUIES')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 18150, 18, 'CARTAGENA DEL CHAIRA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 18205, 18, 'CURILLO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 18247, 18, 'EL DONCELLO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 18256, 18, 'EL PAUJIL')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 18410, 18, 'LA MONTAÑITA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 18460, 18, 'MILAN')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 18479, 18, 'MORELIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 18592, 18, 'PUERTO RICO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 18610, 18, 'SAN JOSE DEL FRAGUA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 18753, 18, 'SAN VICENTE DEL CAGUAN')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 18756, 18, 'SOLANO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 18785, 18, 'SOLITA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 18860, 18, 'VALPARAISO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 19001, 19, 'POPAYAN')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 19022, 19, 'ALMAGUER')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 19050, 19, 'ARGELIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 19075, 19, 'BALBOA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 19100, 19, 'BOLIVAR')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 19110, 19, 'BUENOS AIRES')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 19130, 19, 'CAJIBIO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 19137, 19, 'CALDONO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 19142, 19, 'CALOTO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 19212, 19, 'CORINTO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 19256, 19, 'EL TAMBO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 19290, 19, 'FLORENCIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 19300, 19, 'GUACHENE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 19318, 19, 'GUAPI')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 19355, 19, 'INZA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 19364, 19, 'JAMBALO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 19392, 19, 'LA SIERRA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 19397, 19, 'LA VEGA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 19418, 19, 'LOPEZ DE MICAY')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 19450, 19, 'MERCADERES')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 19455, 19, 'MIRANDA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 19473, 19, 'MORALES')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 19513, 19, 'PADILLA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 19517, 19, 'PAEZ')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 19532, 19, 'PATIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 19533, 19, 'PIAMONTE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 19548, 19, 'PIENDAMO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 19573, 19, 'PUERTO TEJADA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 19585, 19, 'PURACE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 19622, 19, 'ROSAS')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 19693, 19, 'SAN SEBASTIAN')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 19698, 19, 'SANTANDER DE QUILICHAO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 19701, 19, 'SANTA ROSA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 19743, 19, 'SILVIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 19760, 19, 'SOTARA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 19780, 19, 'SUAREZ')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 19785, 19, 'SUCRE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 19807, 19, 'TIMBIO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 19809, 19, 'TIMBIQUI')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 19821, 19, 'TORIBIO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 19824, 19, 'TOTORO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 19845, 19, 'VILLA RICA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 20001, 20, 'VALLEDUPAR')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 20011, 20, 'AGUACHICA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 20013, 20, 'AGUSTIN CODAZZI')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 20032, 20, 'ASTREA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 20045, 20, 'BECERRIL')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 20060, 20, 'BOSCONIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 20175, 20, 'CHIMICHAGUA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 20178, 20, 'CHIRIGUANA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 20228, 20, 'CURUMANI')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 20238, 20, 'EL COPEY')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 20250, 20, 'EL PASO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 20295, 20, 'GAMARRA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 20310, 20, 'GONZALEZ')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 20383, 20, 'LA GLORIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 20400, 20, 'LA JAGUA DE IBIRICO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 20443, 20, 'MANAURE BALCON DEL CESAR')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 20517, 20, 'PAILITAS')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 20550, 20, 'PELAYA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 20570, 20, 'PUEBLO BELLO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 20614, 20, 'RIO DE ORO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 20621, 20, 'LA PAZ')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 20710, 20, 'SAN ALBERTO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 20750, 20, 'SAN DIEGO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 20770, 20, 'SAN MARTIN')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 20787, 20, 'TAMALAMEQUE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 23001, 23, 'MONTERIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 23068, 23, 'AYAPEL')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 23079, 23, 'BUENAVISTA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 23090, 23, 'CANALETE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 23162, 23, 'CERETE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 23168, 23, 'CHIMA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 23182, 23, 'CHINU')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 23189, 23, 'CIENAGA DE ORO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 23300, 23, 'COTORRA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 23350, 23, 'LA APARTADA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 23417, 23, 'LORICA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 23419, 23, 'LOS CORDOBAS')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 23464, 23, 'MOMIL')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 23466, 23, 'MONTELIBANO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 23500, 23, 'MOÑITOS')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 23555, 23, 'PLANETA RICA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 23570, 23, 'PUEBLO NUEVO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 23574, 23, 'PUERTO ESCONDIDO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 23580, 23, 'PUERTO LIBERTADOR')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 23586, 23, 'PURISIMA DE LA CONCEPCION')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 23660, 23, 'SAHAGUN')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 23670, 23, 'SAN ANDRES DE SOTAVENTO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 23672, 23, 'SAN ANTERO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 23675, 23, 'SAN BERNARDO DEL VIENTO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 23678, 23, 'SAN CARLOS')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 23682, 23, 'SAN JOSE DE URE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 23686, 23, 'SAN PELAYO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 23807, 23, 'TIERRALTA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 23815, 23, 'TUCHIN')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 23855, 23, 'VALENCIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25001, 25, 'AGUA DE DIOS')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25019, 25, 'ALBAN')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25035, 25, 'ANAPOIMA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25040, 25, 'ANOLAIMA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25053, 25, 'ARBELAEZ')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25086, 25, 'BELTRAN')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25095, 25, 'BITUIMA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25099, 25, 'BOJACA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25120, 25, 'CABRERA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25123, 25, 'CACHIPAY')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25126, 25, 'CAJICA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25148, 25, 'CAPARRAPI')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25151, 25, 'CAQUEZA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25154, 25, 'CARMEN DE CARUPA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25168, 25, 'CHAGUANI')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25175, 25, 'CHIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25178, 25, 'CHIPAQUE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25181, 25, 'CHOACHI')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25183, 25, 'CHOCONTA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25200, 25, 'COGUA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25214, 25, 'COTA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25224, 25, 'CUCUNUBA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25245, 25, 'EL COLEGIO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25258, 25, 'EL PEÑON')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25260, 25, 'EL ROSAL')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25269, 25, 'FACATATIVA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25279, 25, 'FOMEQUE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25281, 25, 'FOSCA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25286, 25, 'FUNZA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25288, 25, 'FUQUENE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25290, 25, 'FUSAGASUGA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25293, 25, 'GACHALA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25295, 25, 'GACHANCIPA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25297, 25, 'GACHETA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25299, 25, 'GAMA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25307, 25, 'GIRARDOT')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25312, 25, 'GRANADA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25317, 25, 'GUACHETA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25320, 25, 'GUADUAS')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25322, 25, 'GUASCA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25324, 25, 'GUATAQUI')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25326, 25, 'GUATAVITA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25328, 25, 'GUAYABAL DE SIQUIMA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25335, 25, 'GUAYABETAL')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25339, 25, 'GUTIERREZ')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25368, 25, 'JERUSALEN')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25372, 25, 'JUNIN')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25377, 25, 'LA CALERA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25386, 25, 'LA MESA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25394, 25, 'LA PALMA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25398, 25, 'LA PEÑA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25402, 25, 'LA VEGA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25407, 25, 'LENGUAZAQUE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25426, 25, 'MACHETA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25430, 25, 'MADRID')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25436, 25, 'MANTA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25438, 25, 'MEDINA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25473, 25, 'MOSQUERA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25483, 25, 'NARIÑO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25486, 25, 'NEMOCON')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25488, 25, 'NILO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25489, 25, 'NIMAIMA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25491, 25, 'NOCAIMA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25506, 25, 'VENECIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25513, 25, 'PACHO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25518, 25, 'PAIME')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25524, 25, 'PANDI')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25530, 25, 'PARATEBUENO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25535, 25, 'PASCA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25572, 25, 'PUERTO SALGAR')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25580, 25, 'PULI')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25592, 25, 'QUEBRADANEGRA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25594, 25, 'QUETAME')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25596, 25, 'QUIPILE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25599, 25, 'APULO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25612, 25, 'RICAURTE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25645, 25, 'SAN ANTONIO DEL TEQUENDAMA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25649, 25, 'SAN BERNARDO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25653, 25, 'SAN CAYETANO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25658, 25, 'SAN FRANCISCO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25662, 25, 'SAN JUAN DE RIOSECO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25718, 25, 'SASAIMA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25736, 25, 'SESQUILE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25738, 25, 'SIBERIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25740, 25, 'SIBATE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25743, 25, 'SILVANIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25745, 25, 'SIMIJACA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25754, 25, 'SOACHA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25758, 25, 'SOPO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25769, 25, 'SUBACHOQUE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25772, 25, 'SUESCA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25777, 25, 'SUPATA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25779, 25, 'SUSA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25781, 25, 'SUTATAUSA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25785, 25, 'TABIO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25793, 25, 'TAUSA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25797, 25, 'TENA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25799, 25, 'TENJO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25805, 25, 'TIBACUY')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25807, 25, 'TIBIRITA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25815, 25, 'TOCAIMA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25817, 25, 'TOCANCIPA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25823, 25, 'TOPAIPI')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25839, 25, 'UBALA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25841, 25, 'UBAQUE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25843, 25, 'UBATE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25845, 25, 'UNE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25851, 25, 'UTICA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25862, 25, 'VERGARA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25867, 25, 'VIANI')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25871, 25, 'VILLAGOMEZ')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25873, 25, 'VILLAPINZON')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25875, 25, 'VILLETA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25878, 25, 'VIOTA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25885, 25, 'YACOPI')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25898, 25, 'ZIPACON')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 25899, 25, 'ZIPAQUIRA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 27001, 27, 'QUIBDO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 27006, 27, 'ACANDI')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 27025, 27, 'ALTO BAUDO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 27050, 27, 'ATRATO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 27073, 27, 'BAGADO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 27075, 27, 'BAHIA SOLANO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 27077, 27, 'BAJO BAUDO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 27099, 27, 'BOJAYA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 27135, 27, 'EL CANTON DEL SAN PABLO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 27150, 27, 'CARMEN DEL DARIEN')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 27160, 27, 'CERTEGUI')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 27205, 27, 'CONDOTO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 27245, 27, 'EL CARMEN DE ATRATO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 27250, 27, 'EL LITORAL DEL SAN JUAN')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 27361, 27, 'ISTMINA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 27372, 27, 'JURADO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 27413, 27, 'LLORO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 27425, 27, 'MEDIO ATRATO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 27430, 27, 'MEDIO BAUDO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 27450, 27, 'MEDIO SAN JUAN')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 27491, 27, 'NOVITA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 27495, 27, 'NUQUI')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 27580, 27, 'RIO IRO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 27600, 27, 'RIO QUITO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 27615, 27, 'RIOSUCIO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 27660, 27, 'SAN JOSE DEL PALMAR')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 27745, 27, 'SIPI')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 27787, 27, 'TADO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 27800, 27, 'UNGUIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 27810, 27, 'UNION PANAMERICANA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 41001, 41, 'NEIVA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 41006, 41, 'ACEVEDO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 41013, 41, 'AGRADO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 41016, 41, 'AIPE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 41020, 41, 'ALGECIRAS')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 41026, 41, 'ALTAMIRA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 41078, 41, 'BARAYA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 41132, 41, 'CAMPOALEGRE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 41206, 41, 'COLOMBIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 41244, 41, 'ELIAS')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 41298, 41, 'GARZON')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 41306, 41, 'GIGANTE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 41319, 41, 'GUADALUPE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 41349, 41, 'HOBO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 41357, 41, 'IQUIRA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 41359, 41, 'ISNOS')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 41378, 41, 'LA ARGENTINA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 41396, 41, 'LA PLATA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 41483, 41, 'NATAGA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 41503, 41, 'OPORAPA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 41518, 41, 'PAICOL')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 41524, 41, 'PALERMO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 41530, 41, 'PALESTINA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 41548, 41, 'PITAL')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 41551, 41, 'PITALITO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 41615, 41, 'RIVERA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 41660, 41, 'SALADOBLANCO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 41668, 41, 'SAN AGUSTIN')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 41676, 41, 'SANTA MARIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 41770, 41, 'SUAZA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 41791, 41, 'TARQUI')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 41797, 41, 'TESALIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 41799, 41, 'TELLO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 41801, 41, 'TERUEL')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 41807, 41, 'TIMANA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 41872, 41, 'VILLAVIEJA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 41885, 41, 'YAGUARA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 44001, 44, 'RIOHACHA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 44035, 44, 'ALBANIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 44078, 44, 'BARRANCAS')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 44090, 44, 'DIBULLA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 44098, 44, 'DISTRACCION')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 44110, 44, 'EL MOLINO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 44279, 44, 'FONSECA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 44378, 44, 'HATONUEVO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 44420, 44, 'LA JAGUA DEL PILAR')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 44430, 44, 'MAICAO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 44560, 44, 'MANAURE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 44650, 44, 'SAN JUAN DEL CESAR')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 44847, 44, 'URIBIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 44855, 44, 'URUMITA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 44874, 44, 'VILLANUEVA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 47001, 47, 'SANTA MARTA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 47030, 47, 'ALGARROBO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 47053, 47, 'ARACATACA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 47058, 47, 'ARIGUANI')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 47161, 47, 'CERRO DE SAN ANTONIO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 47170, 47, 'CHIVOLO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 47189, 47, 'CIENAGA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 47205, 47, 'CONCORDIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 47245, 47, 'EL BANCO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 47258, 47, 'EL PIÑON')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 47268, 47, 'EL RETEN')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 47288, 47, 'FUNDACION')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 47318, 47, 'GUAMAL')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 47460, 47, 'NUEVA GRANADA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 47541, 47, 'PEDRAZA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 47545, 47, 'PIJIÑO DEL CARMEN')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 47551, 47, 'PIVIJAY')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 47555, 47, 'PLATO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 47570, 47, 'PUEBLOVIEJO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 47605, 47, 'REMOLINO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 47660, 47, 'SABANAS DE SAN ANGEL')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 47675, 47, 'SALAMINA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 47692, 47, 'SAN SEBASTIAN DE BUENAVISTA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 47703, 47, 'SAN ZENON')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 47707, 47, 'SANTA ANA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 47720, 47, 'SANTA BARBARA DE PINTO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 47745, 47, 'SITIONUEVO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 47798, 47, 'TENERIFE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 47960, 47, 'ZAPAYAN')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 47980, 47, 'ZONA BANANERA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 50001, 50, 'VILLAVICENCIO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 50006, 50, 'ACACIAS')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 50110, 50, 'BARRANCA DE UPIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 50124, 50, 'CABUYARO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 50150, 50, 'CASTILLA LA NUEVA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 50223, 50, 'CUBARRAL')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 50226, 50, 'CUMARAL')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 50245, 50, 'EL CALVARIO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 50251, 50, 'EL CASTILLO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 50270, 50, 'EL DORADO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 50287, 50, 'FUENTE DE ORO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 50313, 50, 'GRANADA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 50318, 50, 'GUAMAL')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 50325, 50, 'MAPIRIPAN')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 50330, 50, 'MESETAS')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 50350, 50, 'LA MACARENA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 50370, 50, 'URIBE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 50400, 50, 'LEJANIAS')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 50450, 50, 'PUERTO CONCORDIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 50568, 50, 'PUERTO GAITAN')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 50573, 50, 'PUERTO LOPEZ')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 50577, 50, 'PUERTO LLERAS')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 50590, 50, 'PUERTO RICO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 50606, 50, 'RESTREPO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 50680, 50, 'SAN CARLOS DE GUAROA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 50683, 50, 'SAN JUAN DE ARAMA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 50686, 50, 'SAN JUANITO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 50689, 50, 'SAN MARTIN')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 50711, 50, 'VISTAHERMOSA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52001, 52, 'PASTO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52019, 52, 'ALBAN')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52022, 52, 'ALDANA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52036, 52, 'ANCUYA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52051, 52, 'ARBOLEDA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52079, 52, 'BARBACOAS')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52083, 52, 'BELEN')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52110, 52, 'BUESACO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52203, 52, 'COLON')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52207, 52, 'CONSACA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52210, 52, 'CONTADERO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52215, 52, 'CORDOBA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52224, 52, 'CUASPUD')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52227, 52, 'CUMBAL')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52233, 52, 'CUMBITARA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52240, 52, 'CHACHAGÜI')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52250, 52, 'EL CHARCO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52254, 52, 'EL PEÑOL')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52256, 52, 'EL ROSARIO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52258, 52, 'EL TABLON DE GOMEZ')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52260, 52, 'EL TAMBO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52287, 52, 'FUNES')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52317, 52, 'GUACHUCAL')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52320, 52, 'GUAITARILLA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52323, 52, 'GUALMATAN')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52352, 52, 'ILES')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52354, 52, 'IMUES')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52356, 52, 'IPIALES')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52378, 52, 'LA CRUZ')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52381, 52, 'LA FLORIDA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52385, 52, 'LA LLANADA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52390, 52, 'LA TOLA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52399, 52, 'LA UNION')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52405, 52, 'LEIVA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52411, 52, 'LINARES')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52418, 52, 'LOS ANDES')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52427, 52, 'MAGÜI')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52435, 52, 'MALLAMA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52473, 52, 'MOSQUERA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52480, 52, 'NARIÑO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52490, 52, 'OLAYA HERRERA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52506, 52, 'OSPINA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52520, 52, 'FRANCISCO PIZARRO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52540, 52, 'POLICARPA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52560, 52, 'POTOSI')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52565, 52, 'PROVIDENCIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52573, 52, 'PUERRES')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52585, 52, 'PUPIALES')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52612, 52, 'RICAURTE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52621, 52, 'ROBERTO PAYAN')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52678, 52, 'SAMANIEGO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52683, 52, 'SANDONA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52685, 52, 'SAN BERNARDO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52687, 52, 'SAN LORENZO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52693, 52, 'SAN PABLO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52694, 52, 'SAN PEDRO DE CARTAGO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52696, 52, 'SANTA BARBARA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52699, 52, 'SANTACRUZ')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52720, 52, 'SAPUYES')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52786, 52, 'TAMINANGO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52788, 52, 'TANGUA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52835, 52, 'TUMACO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52838, 52, 'TUQUERRES')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 52885, 52, 'YACUANQUER')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 54001, 54, 'CUCUTA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 54003, 54, 'ABREGO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 54051, 54, 'ARBOLEDAS')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 54099, 54, 'BOCHALEMA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 54109, 54, 'BUCARASICA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 54125, 54, 'CACOTA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 54128, 54, 'CACHIRA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 54172, 54, 'CHINACOTA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 54174, 54, 'CHITAGA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 54206, 54, 'CONVENCION')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 54223, 54, 'CUCUTILLA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 54239, 54, 'DURANIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 54245, 54, 'EL CARMEN')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 54250, 54, 'EL TARRA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 54261, 54, 'EL ZULIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 54313, 54, 'GRAMALOTE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 54344, 54, 'HACARI')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 54347, 54, 'HERRAN')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 54377, 54, 'LABATECA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 54385, 54, 'LA ESPERANZA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 54398, 54, 'LA PLAYA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 54405, 54, 'LOS PATIOS')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 54418, 54, 'LOURDES')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 54480, 54, 'MUTISCUA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 54498, 54, 'OCAÑA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 54518, 54, 'PAMPLONA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 54520, 54, 'PAMPLONITA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 54553, 54, 'PUERTO SANTANDER')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 54599, 54, 'RAGONVALIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 54660, 54, 'SALAZAR')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 54670, 54, 'SAN CALIXTO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 54673, 54, 'SAN CAYETANO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 54680, 54, 'SANTIAGO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 54720, 54, 'SARDINATA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 54743, 54, 'SILOS')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 54800, 54, 'TEORAMA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 54810, 54, 'TIBU')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 54820, 54, 'TOLEDO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 54871, 54, 'VILLA CARO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 54874, 54, 'VILLA DEL ROSARIO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 63001, 63, 'ARMENIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 63111, 63, 'BUENAVISTA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 63130, 63, 'CALARCA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 63190, 63, 'CIRCASIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 63212, 63, 'CORDOBA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 63272, 63, 'FILANDIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 63302, 63, 'GENOVA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 63401, 63, 'LA TEBAIDA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 63470, 63, 'MONTENEGRO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 63548, 63, 'PIJAO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 63594, 63, 'QUIMBAYA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 63690, 63, 'SALENTO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 66001, 66, 'PEREIRA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 66045, 66, 'APIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 66075, 66, 'BALBOA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 66088, 66, 'BELEN DE UMBRIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 66170, 66, 'DOSQUEBRADAS')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 66318, 66, 'GUATICA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 66383, 66, 'LA CELIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 66400, 66, 'LA VIRGINIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 66440, 66, 'MARSELLA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 66456, 66, 'MISTRATO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 66572, 66, 'PUEBLO RICO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 66594, 66, 'QUINCHIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 66682, 66, 'SANTA ROSA DE CABAL')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 66687, 66, 'SANTUARIO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68001, 68, 'BUCARAMANGA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68013, 68, 'AGUADA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68020, 68, 'ALBANIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68051, 68, 'ARATOCA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68077, 68, 'BARBOSA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68079, 68, 'BARICHARA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68081, 68, 'BARRANCABERMEJA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68092, 68, 'BETULIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68101, 68, 'BOLIVAR')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68121, 68, 'CABRERA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68132, 68, 'CALIFORNIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68147, 68, 'CAPITANEJO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68152, 68, 'CARCASI')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68160, 68, 'CEPITA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68162, 68, 'CERRITO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68167, 68, 'CHARALA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68169, 68, 'CHARTA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68176, 68, 'CHIMA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68179, 68, 'CHIPATA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68190, 68, 'CIMITARRA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68207, 68, 'CONCEPCION')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68209, 68, 'CONFINES')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68211, 68, 'CONTRATACION')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68217, 68, 'COROMORO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68229, 68, 'CURITI')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68235, 68, 'EL CARMEN DE CHUCURI')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68245, 68, 'EL GUACAMAYO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68250, 68, 'EL PEÑON')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68255, 68, 'EL PLAYON')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68264, 68, 'ENCINO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68266, 68, 'ENCISO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68271, 68, 'FLORIAN')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68276, 68, 'FLORIDABLANCA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68296, 68, 'GALAN')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68298, 68, 'GAMBITA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68307, 68, 'GIRON')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68318, 68, 'GUACA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68320, 68, 'GUADALUPE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68322, 68, 'GUAPOTA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68324, 68, 'GUAVATA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68327, 68, 'GÜEPSA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68344, 68, 'HATO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68368, 68, 'JESUS MARIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68370, 68, 'JORDAN')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68377, 68, 'LA BELLEZA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68385, 68, 'LANDAZURI')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68397, 68, 'LA PAZ')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68406, 68, 'LEBRIJA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68418, 68, 'LOS SANTOS')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68425, 68, 'MACARAVITA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68432, 68, 'MALAGA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68444, 68, 'MATANZA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68464, 68, 'MOGOTES')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68468, 68, 'MOLAGAVITA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68498, 68, 'OCAMONTE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68500, 68, 'OIBA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68502, 68, 'ONZAGA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68522, 68, 'PALMAR')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68524, 68, 'PALMAS DEL SOCORRO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68533, 68, 'PARAMO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68547, 68, 'PIEDECUESTA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68549, 68, 'PINCHOTE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68572, 68, 'PUENTE NACIONAL')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68573, 68, 'PUERTO PARRA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68575, 68, 'PUERTO WILCHES')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68615, 68, 'RIONEGRO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68655, 68, 'SABANA DE TORRES')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68669, 68, 'SAN ANDRES')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68673, 68, 'SAN BENITO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68679, 68, 'SAN GIL')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68682, 68, 'SAN JOAQUIN')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68684, 68, 'SAN JOSE DE MIRANDA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68686, 68, 'SAN MIGUEL')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68689, 68, 'SAN VICENTE DE CHUCURI')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68705, 68, 'SANTA BARBARA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68720, 68, 'SANTA HELENA DEL OPON')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68745, 68, 'SIMACOTA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68755, 68, 'SOCORRO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68770, 68, 'SUAITA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68773, 68, 'SUCRE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68780, 68, 'SURATA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68820, 68, 'TONA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68855, 68, 'VALLE DE SAN JOSE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68861, 68, 'VELEZ')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68867, 68, 'VETAS')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68872, 68, 'VILLANUEVA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 68895, 68, 'ZAPATOCA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 70001, 70, 'SINCELEJO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 70110, 70, 'BUENAVISTA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 70124, 70, 'CAIMITO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 70204, 70, 'COLOSO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 70215, 70, 'COROZAL')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 70221, 70, 'COVEÑAS')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 70230, 70, 'CHALAN')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 70233, 70, 'EL ROBLE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 70235, 70, 'GALERAS')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 70265, 70, 'GUARANDA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 70400, 70, 'LA UNION')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 70418, 70, 'LOS PALMITOS')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 70429, 70, 'MAJAGUAL')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 70473, 70, 'MORROA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 70508, 70, 'OVEJAS')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 70523, 70, 'PALMITO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 70670, 70, 'SAMPUES')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 70678, 70, 'SAN BENITO ABAD')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 70702, 70, 'SAN JUAN DE BETULIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 70708, 70, 'SAN MARCOS')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 70713, 70, 'SAN ONOFRE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 70717, 70, 'SAN PEDRO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 70742, 70, 'SAN LUIS DE SINCE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 70771, 70, 'SUCRE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 70820, 70, 'SANTIAGO DE TOLU')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 70823, 70, 'TOLU VIEJO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 73001, 73, 'IBAGUE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 73024, 73, 'ALPUJARRA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 73026, 73, 'ALVARADO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 73030, 73, 'AMBALEMA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 73043, 73, 'ANZOATEGUI')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 73055, 73, 'ARMERO GUAYABAL')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 73067, 73, 'ATACO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 73124, 73, 'CAJAMARCA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 73148, 73, 'CARMEN DE APICALA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 73152, 73, 'CASABIANCA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 73168, 73, 'CHAPARRAL')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 73200, 73, 'COELLO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 73217, 73, 'COYAIMA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 73226, 73, 'CUNDAY')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 73236, 73, 'DOLORES')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 73268, 73, 'ESPINAL')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 73270, 73, 'FALAN')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 73275, 73, 'FLANDES')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 73283, 73, 'FRESNO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 73319, 73, 'GUAMO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 73347, 73, 'HERVEO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 73349, 73, 'HONDA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 73352, 73, 'ICONONZO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 73408, 73, 'LERIDA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 73411, 73, 'LIBANO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 73443, 73, 'MARIQUITA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 73449, 73, 'MELGAR')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 73461, 73, 'MURILLO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 73483, 73, 'NATAGAIMA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 73504, 73, 'ORTEGA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 73520, 73, 'PALOCABILDO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 73547, 73, 'PIEDRAS')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 73555, 73, 'PLANADAS')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 73563, 73, 'PRADO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 73585, 73, 'PURIFICACION')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 73616, 73, 'RIOBLANCO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 73622, 73, 'RONCESVALLES')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 73624, 73, 'ROVIRA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 73671, 73, 'SALDAÑA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 73675, 73, 'SAN ANTONIO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 73678, 73, 'SAN LUIS')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 73686, 73, 'SANTA ISABEL')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 73770, 73, 'SUAREZ')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 73854, 73, 'VALLE DE SAN JUAN')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 73861, 73, 'VENADILLO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 73870, 73, 'VILLAHERMOSA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 73873, 73, 'VILLARRICA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 76001, 76, 'CALI')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 76020, 76, 'ALCALA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 76036, 76, 'ANDALUCIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 76041, 76, 'ANSERMANUEVO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 76054, 76, 'ARGELIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 76100, 76, 'BOLIVAR')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 76109, 76, 'BUENAVENTURA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 76111, 76, 'GUADALAJARA DE BUGA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 76113, 76, 'BUGALAGRANDE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 76122, 76, 'CAICEDONIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 76126, 76, 'CALIMA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 76130, 76, 'CANDELARIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 76147, 76, 'CARTAGO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 76233, 76, 'DAGUA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 76243, 76, 'EL AGUILA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 76246, 76, 'EL CAIRO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 76248, 76, 'EL CERRITO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 76250, 76, 'EL DOVIO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 76275, 76, 'FLORIDA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 76306, 76, 'GINEBRA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 76318, 76, 'GUACARI')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 76364, 76, 'JAMUNDI')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 76377, 76, 'LA CUMBRE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 76400, 76, 'LA UNION')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 76403, 76, 'LA VICTORIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 76497, 76, 'OBANDO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 76520, 76, 'PALMIRA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 76563, 76, 'PRADERA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 76606, 76, 'RESTREPO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 76616, 76, 'RIOFRIO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 76622, 76, 'ROLDANILLO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 76670, 76, 'SAN PEDRO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 76736, 76, 'SEVILLA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 76823, 76, 'TORO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 76828, 76, 'TRUJILLO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 76834, 76, 'TULUA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 76845, 76, 'ULLOA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 76863, 76, 'VERSALLES')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 76869, 76, 'VIJES')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 76890, 76, 'YOTOCO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 76892, 76, 'YUMBO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 76895, 76, 'ZARZAL')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 81001, 81, 'ARAUCA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 81065, 81, 'ARAUQUITA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 81220, 81, 'CRAVO NORTE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 81300, 81, 'FORTUL')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 81591, 81, 'PUERTO RONDON')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 81736, 81, 'SARAVENA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 81794, 81, 'TAME')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 85001, 85, 'YOPAL')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 85010, 85, 'AGUAZUL')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 85015, 85, 'CHAMEZA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 85125, 85, 'HATO COROZAL')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 85136, 85, 'LA SALINA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 85139, 85, 'MANI')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 85162, 85, 'MONTERREY')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 85225, 85, 'NUNCHIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 85230, 85, 'OROCUE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 85250, 85, 'PAZ DE ARIPORO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 85263, 85, 'PORE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 85279, 85, 'RECETOR')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 85300, 85, 'SABANALARGA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 85315, 85, 'SACAMA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 85325, 85, 'SAN LUIS DE PALENQUE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 85400, 85, 'TAMARA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 85410, 85, 'TAURAMENA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 85430, 85, 'TRINIDAD')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 85440, 85, 'VILLANUEVA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 86001, 86, 'MOCOA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 86219, 86, 'COLON')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 86320, 86, 'ORITO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 86568, 86, 'PUERTO ASIS')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 86569, 86, 'PUERTO CAICEDO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 86571, 86, 'PUERTO GUZMAN')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 86573, 86, 'PUERTO LEGUIZAMO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 86749, 86, 'SIBUNDOY')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 86755, 86, 'SAN FRANCISCO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 86757, 86, 'SAN MIGUEL')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 86760, 86, 'SANTIAGO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 86865, 86, 'VALLE DEL GUAMUEZ')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 86885, 86, 'VILLAGARZON')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 88001, 88, 'SAN ANDRES')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 88564, 88, 'PROVIDENCIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 91001, 91, 'LETICIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 91263, 91, 'EL ENCANTO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 91405, 91, 'LA CHORRERA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 91407, 91, 'LA PEDRERA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 91430, 91, 'LA VICTORIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 91460, 91, 'MIRITI - PARANA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 91530, 91, 'PUERTO ALEGRIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 91536, 91, 'PUERTO ARICA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 91540, 91, 'PUERTO NARIÑO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 91669, 91, 'PUERTO SANTANDER')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 91798, 91, 'TARAPACA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 94001, 94, 'INIRIDA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 94343, 94, 'BARRANCO MINAS')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 94663, 94, 'MAPIRIPANA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 94883, 94, 'SAN FELIPE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 94884, 94, 'PUERTO COLOMBIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 94885, 94, 'LA GUADALUPE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 94886, 94, 'CACAHUAL')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 94887, 94, 'PANA PANA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 94888, 94, 'MORICHAL')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 95001, 95, 'SAN JOSE DEL GUAVIARE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 95015, 95, 'CALAMAR')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 95025, 95, 'EL RETORNO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 95200, 95, 'MIRAFLORES')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 97001, 97, 'MITU')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 97161, 97, 'CARURU')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 97511, 97, 'PACOA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 97666, 97, 'TARAIRA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 97777, 97, 'PAPUNAUA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 97889, 97, 'YAVARATE')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 99001, 99, 'PUERTO CARREÑO')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 99524, 99, 'LA PRIMAVERA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 99624, 99, 'SANTA ROSALIA')
INSERT INTO Ciudades (IdTipoEstado, IdSiicon, IdDepartamentoSiicon, Descripcion) VALUES (4, 99773, 99, 'CUMARIBO')*/


USE [ContratoDigital]
GO
SET IDENTITY_INSERT [dbo].[TipoEstados] ON 
GO
INSERT [dbo].[TipoEstados] ([IdTipoEstado], [Descripcion]) VALUES (1, N'Tipo Persona')
GO
INSERT [dbo].[TipoEstados] ([IdTipoEstado], [Descripcion]) VALUES (2, N'Tipo Identificación')
GO
INSERT [dbo].[TipoEstados] ([IdTipoEstado], [Descripcion]) VALUES (3, N'Departamento')
GO
INSERT [dbo].[TipoEstados] ([IdTipoEstado], [Descripcion]) VALUES (4, N'Ciudad')
GO
INSERT [dbo].[TipoEstados] ([IdTipoEstado], [Descripcion]) VALUES (5, N'Sexo')
GO
INSERT [dbo].[TipoEstados] ([IdTipoEstado], [Descripcion]) VALUES (6, N'Estado Civil')
GO
SET IDENTITY_INSERT [dbo].[TipoEstados] OFF
GO
SET IDENTITY_INSERT [dbo].[Estados] ON 
GO
INSERT [dbo].[Estados] ([IdEstado], [IdTipoEstado], [IdSiicon], [Descripcion]) VALUES (1, 1, 1, N'No Aplica')
GO
INSERT [dbo].[Estados] ([IdEstado], [IdTipoEstado], [IdSiicon], [Descripcion]) VALUES (2, 1, 2, N'Natural')
GO
INSERT [dbo].[Estados] ([IdEstado], [IdTipoEstado], [IdSiicon], [Descripcion]) VALUES (3, 1, 3, N'Jurídica')
GO
INSERT [dbo].[Estados] ([IdEstado], [IdTipoEstado], [IdSiicon], [Descripcion]) VALUES (4, 2, 1, N'Cédula de ciudadanía')
GO
INSERT [dbo].[Estados] ([IdEstado], [IdTipoEstado], [IdSiicon], [Descripcion]) VALUES (5, 2, 3, N'Cédula de extranjería')
GO
INSERT [dbo].[Estados] ([IdEstado], [IdTipoEstado], [IdSiicon], [Descripcion]) VALUES (6, 2, 3, N'Número de identificación tributaria')
GO
INSERT [dbo].[Estados] ([IdEstado], [IdTipoEstado], [IdSiicon], [Descripcion]) VALUES (7, 2, 4, N'No aplica')
GO
INSERT [dbo].[Estados] ([IdEstado], [IdTipoEstado], [IdSiicon], [Descripcion]) VALUES (8, 5, 1, N'Femenino')
GO
INSERT [dbo].[Estados] ([IdEstado], [IdTipoEstado], [IdSiicon], [Descripcion]) VALUES (9, 5, 2, N'Masculino')
GO
INSERT [dbo].[Estados] ([IdEstado], [IdTipoEstado], [IdSiicon], [Descripcion]) VALUES (10, 5, 3, N'No aplica')
GO
INSERT [dbo].[Estados] ([IdEstado], [IdTipoEstado], [IdSiicon], [Descripcion]) VALUES (11, 6, 1, N'Soltero')
GO
INSERT [dbo].[Estados] ([IdEstado], [IdTipoEstado], [IdSiicon], [Descripcion]) VALUES (12, 6, 2, N'Divorciado')
GO
INSERT [dbo].[Estados] ([IdEstado], [IdTipoEstado], [IdSiicon], [Descripcion]) VALUES (13, 6, 3, N'Casado')
GO
INSERT [dbo].[Estados] ([IdEstado], [IdTipoEstado], [IdSiicon], [Descripcion]) VALUES (14, 6, 4, N'Viudo')
GO
INSERT [dbo].[Estados] ([IdEstado], [IdTipoEstado], [IdSiicon], [Descripcion]) VALUES (15, 6, 5, N'No aplica')
GO
INSERT [dbo].[Estados] ([IdEstado], [IdTipoEstado], [IdSiicon], [Descripcion]) VALUES (16, 6, 6, N'Unión libre')
GO
INSERT [dbo].[Estados] ([IdEstado], [IdTipoEstado], [IdSiicon], [Descripcion]) VALUES (17, 3, 0, N'SIN DEPARTAMENTO')
GO
INSERT [dbo].[Estados] ([IdEstado], [IdTipoEstado], [IdSiicon], [Descripcion]) VALUES (18, 3, 5, N'ANTIOQUIA')
GO
INSERT [dbo].[Estados] ([IdEstado], [IdTipoEstado], [IdSiicon], [Descripcion]) VALUES (19, 3, 8, N'ATLÁNTICO')
GO
INSERT [dbo].[Estados] ([IdEstado], [IdTipoEstado], [IdSiicon], [Descripcion]) VALUES (20, 3, 11, N'D.C.')
GO
INSERT [dbo].[Estados] ([IdEstado], [IdTipoEstado], [IdSiicon], [Descripcion]) VALUES (21, 3, 13, N'BOLÍVAR')
GO
INSERT [dbo].[Estados] ([IdEstado], [IdTipoEstado], [IdSiicon], [Descripcion]) VALUES (22, 3, 15, N'BOYACÁ')
GO
INSERT [dbo].[Estados] ([IdEstado], [IdTipoEstado], [IdSiicon], [Descripcion]) VALUES (23, 3, 17, N'CALDAS')
GO
INSERT [dbo].[Estados] ([IdEstado], [IdTipoEstado], [IdSiicon], [Descripcion]) VALUES (24, 3, 18, N'CAQUETÁ')
GO
INSERT [dbo].[Estados] ([IdEstado], [IdTipoEstado], [IdSiicon], [Descripcion]) VALUES (25, 3, 19, N'CAUCA')
GO
INSERT [dbo].[Estados] ([IdEstado], [IdTipoEstado], [IdSiicon], [Descripcion]) VALUES (26, 3, 20, N'CESAR')
GO
INSERT [dbo].[Estados] ([IdEstado], [IdTipoEstado], [IdSiicon], [Descripcion]) VALUES (27, 3, 23, N'CÓRDOBA')
GO
INSERT [dbo].[Estados] ([IdEstado], [IdTipoEstado], [IdSiicon], [Descripcion]) VALUES (28, 3, 25, N'CUNDINAMARCA')
GO
INSERT [dbo].[Estados] ([IdEstado], [IdTipoEstado], [IdSiicon], [Descripcion]) VALUES (29, 3, 27, N'CHOCÓ')
GO
INSERT [dbo].[Estados] ([IdEstado], [IdTipoEstado], [IdSiicon], [Descripcion]) VALUES (30, 3, 41, N'HUILA')
GO
INSERT [dbo].[Estados] ([IdEstado], [IdTipoEstado], [IdSiicon], [Descripcion]) VALUES (31, 3, 44, N'LA GUAJIRA')
GO
INSERT [dbo].[Estados] ([IdEstado], [IdTipoEstado], [IdSiicon], [Descripcion]) VALUES (32, 3, 47, N'MAGDALENA')
GO
INSERT [dbo].[Estados] ([IdEstado], [IdTipoEstado], [IdSiicon], [Descripcion]) VALUES (33, 3, 50, N'META')
GO
INSERT [dbo].[Estados] ([IdEstado], [IdTipoEstado], [IdSiicon], [Descripcion]) VALUES (34, 3, 52, N'NARIÑO')
GO
INSERT [dbo].[Estados] ([IdEstado], [IdTipoEstado], [IdSiicon], [Descripcion]) VALUES (35, 3, 54, N'NORTE DE SANTANDER')
GO
INSERT [dbo].[Estados] ([IdEstado], [IdTipoEstado], [IdSiicon], [Descripcion]) VALUES (36, 3, 63, N'QUINDÍO')
GO
INSERT [dbo].[Estados] ([IdEstado], [IdTipoEstado], [IdSiicon], [Descripcion]) VALUES (37, 3, 66, N'RISARALDA')
GO
INSERT [dbo].[Estados] ([IdEstado], [IdTipoEstado], [IdSiicon], [Descripcion]) VALUES (38, 3, 68, N'SANTANDER')
GO
INSERT [dbo].[Estados] ([IdEstado], [IdTipoEstado], [IdSiicon], [Descripcion]) VALUES (39, 3, 70, N'SUCRE')
GO
INSERT [dbo].[Estados] ([IdEstado], [IdTipoEstado], [IdSiicon], [Descripcion]) VALUES (40, 3, 73, N'TOLIMA')
GO
INSERT [dbo].[Estados] ([IdEstado], [IdTipoEstado], [IdSiicon], [Descripcion]) VALUES (41, 3, 76, N'VALLE DEL CAUCA')
GO
INSERT [dbo].[Estados] ([IdEstado], [IdTipoEstado], [IdSiicon], [Descripcion]) VALUES (42, 3, 81, N'ARAUCA')
GO
INSERT [dbo].[Estados] ([IdEstado], [IdTipoEstado], [IdSiicon], [Descripcion]) VALUES (43, 3, 85, N'CASANARE')
GO
INSERT [dbo].[Estados] ([IdEstado], [IdTipoEstado], [IdSiicon], [Descripcion]) VALUES (44, 3, 86, N'PUTUMAYO')
GO
INSERT [dbo].[Estados] ([IdEstado], [IdTipoEstado], [IdSiicon], [Descripcion]) VALUES (45, 3, 88, N'SAN ANDRÉS Y PROVIDENCIA')
GO
INSERT [dbo].[Estados] ([IdEstado], [IdTipoEstado], [IdSiicon], [Descripcion]) VALUES (46, 3, 91, N'AMAZONAS')
GO
INSERT [dbo].[Estados] ([IdEstado], [IdTipoEstado], [IdSiicon], [Descripcion]) VALUES (47, 3, 94, N'GUAINÍA')
GO
INSERT [dbo].[Estados] ([IdEstado], [IdTipoEstado], [IdSiicon], [Descripcion]) VALUES (48, 3, 95, N'GUAVIARE')
GO
INSERT [dbo].[Estados] ([IdEstado], [IdTipoEstado], [IdSiicon], [Descripcion]) VALUES (49, 3, 97, N'VAUPÉS')
GO
INSERT [dbo].[Estados] ([IdEstado], [IdTipoEstado], [IdSiicon], [Descripcion]) VALUES (50, 3, 99, N'VICHADA')
GO
SET IDENTITY_INSERT [dbo].[Estados] OFF
GO
SET IDENTITY_INSERT [dbo].[Ciudades] ON 
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1, 4, 0, 0, N'SIN CIUDAD')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (2, 4, 5001, 5, N'MEDELLIN')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (3, 4, 5002, 5, N'ABEJORRAL')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (4, 4, 5004, 5, N'ABRIAQUI')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (5, 4, 5021, 5, N'ALEJANDRIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (6, 4, 5030, 5, N'AMAGA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (7, 4, 5031, 5, N'AMALFI')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (8, 4, 5034, 5, N'ANDES')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (9, 4, 5036, 5, N'ANGELOPOLIS')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (10, 4, 5038, 5, N'ANGOSTURA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (11, 4, 5040, 5, N'ANORI')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (12, 4, 5042, 5, N'SANTA FE DE ANTIOQUIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (13, 4, 5044, 5, N'ANZA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (14, 4, 5045, 5, N'APARTADO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (15, 4, 5051, 5, N'ARBOLETES')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (16, 4, 5055, 5, N'ARGELIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (17, 4, 5059, 5, N'ARMENIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (18, 4, 5079, 5, N'BARBOSA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (19, 4, 5086, 5, N'BELMIRA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (20, 4, 5088, 5, N'BELLO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (21, 4, 5091, 5, N'BETANIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (22, 4, 5093, 5, N'BETULIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (23, 4, 5101, 5, N'CIUDAD BOLIVAR')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (24, 4, 5107, 5, N'BRICEÑO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (25, 4, 5113, 5, N'BURITICA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (26, 4, 5120, 5, N'CACERES')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (27, 4, 5125, 5, N'CAICEDO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (28, 4, 5129, 5, N'CALDAS')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (29, 4, 5134, 5, N'CAMPAMENTO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (30, 4, 5138, 5, N'CAÑASGORDAS')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (31, 4, 5142, 5, N'CARACOLI')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (32, 4, 5145, 5, N'CARAMANTA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (33, 4, 5147, 5, N'CAREPA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (34, 4, 5148, 5, N'EL CARMEN DE VIBORAL')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (35, 4, 5150, 5, N'CAROLINA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (36, 4, 5154, 5, N'CAUCASIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (37, 4, 5172, 5, N'CHIGORODO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (38, 4, 5190, 5, N'CISNEROS')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (39, 4, 5197, 5, N'COCORNA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (40, 4, 5206, 5, N'CONCEPCION')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (41, 4, 5209, 5, N'CONCORDIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (42, 4, 5212, 5, N'COPACABANA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (43, 4, 5234, 5, N'DABEIBA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (44, 4, 5237, 5, N'DONMATIAS')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (45, 4, 5240, 5, N'EBEJICO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (46, 4, 5250, 5, N'EL BAGRE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (47, 4, 5264, 5, N'ENTRERRIOS')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (48, 4, 5266, 5, N'ENVIGADO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (49, 4, 5282, 5, N'FREDONIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (50, 4, 5284, 5, N'FRONTINO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (51, 4, 5306, 5, N'GIRALDO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (52, 4, 5308, 5, N'GIRARDOTA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (53, 4, 5310, 5, N'GOMEZ PLATA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (54, 4, 5313, 5, N'GRANADA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (55, 4, 5315, 5, N'GUADALUPE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (56, 4, 5318, 5, N'GUARNE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (57, 4, 5321, 5, N'GUATAPE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (58, 4, 5347, 5, N'HELICONIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (59, 4, 5353, 5, N'HISPANIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (60, 4, 5360, 5, N'ITAGUI')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (61, 4, 5361, 5, N'ITUANGO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (62, 4, 5364, 5, N'JARDIN')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (63, 4, 5368, 5, N'JERICO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (64, 4, 5376, 5, N'LA CEJA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (65, 4, 5380, 5, N'LA ESTRELLA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (66, 4, 5390, 5, N'LA PINTADA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (67, 4, 5400, 5, N'LA UNION')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (68, 4, 5411, 5, N'LIBORINA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (69, 4, 5425, 5, N'MACEO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (70, 4, 5440, 5, N'MARINILLA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (71, 4, 5467, 5, N'MONTEBELLO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (72, 4, 5475, 5, N'MURINDO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (73, 4, 5480, 5, N'MUTATA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (74, 4, 5483, 5, N'NARIÑO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (75, 4, 5490, 5, N'NECOCLI')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (76, 4, 5495, 5, N'NECHI')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (77, 4, 5501, 5, N'OLAYA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (78, 4, 5541, 5, N'PEÑOL')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (79, 4, 5543, 5, N'PEQUE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (80, 4, 5576, 5, N'PUEBLORRICO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (81, 4, 5579, 5, N'PUERTO BERRIO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (82, 4, 5585, 5, N'PUERTO NARE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (83, 4, 5591, 5, N'PUERTO TRIUNFO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (84, 4, 5604, 5, N'REMEDIOS')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (85, 4, 5607, 5, N'RETIRO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (86, 4, 5615, 5, N'RIONEGRO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (87, 4, 5628, 5, N'SABANALARGA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (88, 4, 5631, 5, N'SABANETA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (89, 4, 5642, 5, N'SALGAR')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (90, 4, 5647, 5, N'SAN ANDRES DE CUERQUIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (91, 4, 5649, 5, N'SAN CARLOS')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (92, 4, 5652, 5, N'SAN FRANCISCO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (93, 4, 5656, 5, N'SAN JERONIMO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (94, 4, 5658, 5, N'SAN JOSE DE LA MONTAÑA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (95, 4, 5659, 5, N'SAN JUAN DE URABA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (96, 4, 5660, 5, N'SAN LUIS')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (97, 4, 5664, 5, N'SAN PEDRO DE LOS MILAGROS')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (98, 4, 5665, 5, N'SAN PEDRO DE URABA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (99, 4, 5667, 5, N'SAN RAFAEL')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (100, 4, 5670, 5, N'SAN ROQUE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (101, 4, 5674, 5, N'SAN VICENTE FERRER')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (102, 4, 5679, 5, N'SANTA BARBARA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (103, 4, 5686, 5, N'SANTA ROSA DE OSOS')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (104, 4, 5690, 5, N'SANTO DOMINGO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (105, 4, 5697, 5, N'EL SANTUARIO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (106, 4, 5736, 5, N'SEGOVIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (107, 4, 5756, 5, N'SONSON')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (108, 4, 5761, 5, N'SOPETRAN')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (109, 4, 5789, 5, N'TAMESIS')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (110, 4, 5790, 5, N'TARAZA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (111, 4, 5792, 5, N'TARSO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (112, 4, 5809, 5, N'TITIRIBI')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (113, 4, 5819, 5, N'TOLEDO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (114, 4, 5837, 5, N'TURBO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (115, 4, 5842, 5, N'URAMITA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (116, 4, 5847, 5, N'URRAO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (117, 4, 5854, 5, N'VALDIVIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (118, 4, 5856, 5, N'VALPARAISO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (119, 4, 5858, 5, N'VEGACHI')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (120, 4, 5861, 5, N'VENECIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (121, 4, 5873, 5, N'VIGIA DEL FUERTE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (122, 4, 5885, 5, N'YALI')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (123, 4, 5887, 5, N'YARUMAL')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (124, 4, 5890, 5, N'YOLOMBO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (125, 4, 5893, 5, N'YONDO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (126, 4, 5895, 5, N'ZARAGOZA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (127, 4, 8001, 8, N'BARRANQUILLA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (128, 4, 8078, 8, N'BARANOA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (129, 4, 8137, 8, N'CAMPO DE LA CRUZ')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (130, 4, 8141, 8, N'CANDELARIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (131, 4, 8296, 8, N'GALAPA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (132, 4, 8372, 8, N'JUAN DE ACOSTA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (133, 4, 8421, 8, N'LURUACO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (134, 4, 8433, 8, N'MALAMBO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (135, 4, 8436, 8, N'MANATI')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (136, 4, 8520, 8, N'PALMAR DE VARELA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (137, 4, 8549, 8, N'PIOJO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (138, 4, 8558, 8, N'POLONUEVO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (139, 4, 8560, 8, N'PONEDERA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (140, 4, 8573, 8, N'PUERTO COLOMBIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (141, 4, 8606, 8, N'REPELON')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (142, 4, 8634, 8, N'SABANAGRANDE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (143, 4, 8638, 8, N'SABANALARGA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (144, 4, 8675, 8, N'SANTA LUCIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (145, 4, 8685, 8, N'SANTO TOMAS')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (146, 4, 8758, 8, N'SOLEDAD')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (147, 4, 8770, 8, N'SUAN')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (148, 4, 8832, 8, N'TUBARA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (149, 4, 8849, 8, N'USIACURI')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (150, 4, 11001, 11, N'BOGOTA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (151, 4, 13001, 13, N'CARTAGENA DE INDIAS')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (152, 4, 13006, 13, N'ACHI')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (153, 4, 13030, 13, N'ALTOS DEL ROSARIO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (154, 4, 13042, 13, N'ARENAL')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (155, 4, 13052, 13, N'ARJONA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (156, 4, 13062, 13, N'ARROYOHONDO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (157, 4, 13074, 13, N'BARRANCO DE LOBA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (158, 4, 13140, 13, N'CALAMAR')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (159, 4, 13160, 13, N'CANTAGALLO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (160, 4, 13188, 13, N'CICUCO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (161, 4, 13212, 13, N'CORDOBA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (162, 4, 13222, 13, N'CLEMENCIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (163, 4, 13244, 13, N'EL CARMEN DE BOLIVAR')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (164, 4, 13248, 13, N'EL GUAMO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (165, 4, 13268, 13, N'EL PEÑON')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (166, 4, 13300, 13, N'HATILLO DE LOBA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (167, 4, 13430, 13, N'MAGANGUE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (168, 4, 13433, 13, N'MAHATES')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (169, 4, 13440, 13, N'MARGARITA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (170, 4, 13442, 13, N'MARIA LA BAJA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (171, 4, 13458, 13, N'MONTECRISTO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (172, 4, 13468, 13, N'MOMPOS')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (173, 4, 13473, 13, N'MORALES')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (174, 4, 13490, 13, N'NOROSI')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (175, 4, 13549, 13, N'PINILLOS')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (176, 4, 13580, 13, N'REGIDOR')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (177, 4, 13600, 13, N'RIO VIEJO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (178, 4, 13620, 13, N'SAN CRISTOBAL')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (179, 4, 13647, 13, N'SAN ESTANISLAO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (180, 4, 13650, 13, N'SAN FERNANDO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (181, 4, 13654, 13, N'SAN JACINTO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (182, 4, 13655, 13, N'SAN JACINTO DEL CAUCA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (183, 4, 13657, 13, N'SAN JUAN NEPOMUCENO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (184, 4, 13667, 13, N'SAN MARTIN DE LOBA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (185, 4, 13670, 13, N'SAN PABLO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (186, 4, 13673, 13, N'SANTA CATALINA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (187, 4, 13683, 13, N'SANTA ROSA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (188, 4, 13688, 13, N'SANTA ROSA DEL SUR')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (189, 4, 13744, 13, N'SIMITI')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (190, 4, 13760, 13, N'SOPLAVIENTO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (191, 4, 13780, 13, N'TALAIGUA NUEVO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (192, 4, 13810, 13, N'TIQUISIO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (193, 4, 13836, 13, N'TURBACO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (194, 4, 13838, 13, N'TURBANA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (195, 4, 13873, 13, N'VILLANUEVA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (196, 4, 13894, 13, N'ZAMBRANO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (197, 4, 15001, 15, N'TUNJA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (198, 4, 15022, 15, N'ALMEIDA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (199, 4, 15047, 15, N'AQUITANIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (200, 4, 15051, 15, N'ARCABUCO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (201, 4, 15087, 15, N'BELEN')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (202, 4, 15090, 15, N'BERBEO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (203, 4, 15092, 15, N'BETEITIVA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (204, 4, 15097, 15, N'BOAVITA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (205, 4, 15104, 15, N'BOYACA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (206, 4, 15106, 15, N'BRICEÑO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (207, 4, 15109, 15, N'BUENAVISTA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (208, 4, 15114, 15, N'BUSBANZA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (209, 4, 15131, 15, N'CALDAS')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (210, 4, 15135, 15, N'CAMPOHERMOSO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (211, 4, 15162, 15, N'CERINZA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (212, 4, 15172, 15, N'CHINAVITA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (213, 4, 15176, 15, N'CHIQUINQUIRA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (214, 4, 15180, 15, N'CHISCAS')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (215, 4, 15183, 15, N'CHITA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (216, 4, 15185, 15, N'CHITARAQUE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (217, 4, 15187, 15, N'CHIVATA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (218, 4, 15189, 15, N'CIENEGA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (219, 4, 15204, 15, N'COMBITA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (220, 4, 15212, 15, N'COPER')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (221, 4, 15215, 15, N'CORRALES')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (222, 4, 15218, 15, N'COVARACHIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (223, 4, 15223, 15, N'CUBARA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (224, 4, 15224, 15, N'CUCAITA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (225, 4, 15226, 15, N'CUITIVA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (226, 4, 15232, 15, N'CHIQUIZA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (227, 4, 15236, 15, N'CHIVOR')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (228, 4, 15238, 15, N'DUITAMA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (229, 4, 15244, 15, N'EL COCUY')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (230, 4, 15248, 15, N'EL ESPINO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (231, 4, 15272, 15, N'FIRAVITOBA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (232, 4, 15276, 15, N'FLORESTA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (233, 4, 15293, 15, N'GACHANTIVA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (234, 4, 15296, 15, N'GAMEZA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (235, 4, 15299, 15, N'GARAGOA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (236, 4, 15317, 15, N'GUACAMAYAS')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (237, 4, 15322, 15, N'GUATEQUE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (238, 4, 15325, 15, N'GUAYATA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (239, 4, 15332, 15, N'GÜICAN DE LA SIERRA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (240, 4, 15362, 15, N'IZA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (241, 4, 15367, 15, N'JENESANO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (242, 4, 15368, 15, N'JERICO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (243, 4, 15377, 15, N'LABRANZAGRANDE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (244, 4, 15380, 15, N'LA CAPILLA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (245, 4, 15401, 15, N'LA VICTORIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (246, 4, 15403, 15, N'LA UVITA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (247, 4, 15407, 15, N'VILLA DE LEYVA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (248, 4, 15425, 15, N'MACANAL')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (249, 4, 15442, 15, N'MARIPI')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (250, 4, 15455, 15, N'MIRAFLORES')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (251, 4, 15464, 15, N'MONGUA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (252, 4, 15466, 15, N'MONGUI')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (253, 4, 15469, 15, N'MONIQUIRA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (254, 4, 15476, 15, N'MOTAVITA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (255, 4, 15480, 15, N'MUZO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (256, 4, 15491, 15, N'NOBSA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (257, 4, 15494, 15, N'NUEVO COLON')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (258, 4, 15500, 15, N'OICATA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (259, 4, 15507, 15, N'OTANCHE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (260, 4, 15511, 15, N'PACHAVITA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (261, 4, 15514, 15, N'PAEZ')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (262, 4, 15516, 15, N'PAIPA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (263, 4, 15518, 15, N'PAJARITO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (264, 4, 15522, 15, N'PANQUEBA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (265, 4, 15531, 15, N'PAUNA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (266, 4, 15533, 15, N'PAYA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (267, 4, 15537, 15, N'PAZ DE RIO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (268, 4, 15542, 15, N'PESCA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (269, 4, 15550, 15, N'PISBA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (270, 4, 15572, 15, N'PUERTO BOYACA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (271, 4, 15580, 15, N'QUIPAMA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (272, 4, 15599, 15, N'RAMIRIQUI')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (273, 4, 15600, 15, N'RAQUIRA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (274, 4, 15621, 15, N'RONDON')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (275, 4, 15632, 15, N'SABOYA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (276, 4, 15638, 15, N'SACHICA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (277, 4, 15646, 15, N'SAMACA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (278, 4, 15660, 15, N'SAN EDUARDO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (279, 4, 15664, 15, N'SAN JOSE DE PARE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (280, 4, 15667, 15, N'SAN LUIS DE GACENO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (281, 4, 15673, 15, N'SAN MATEO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (282, 4, 15676, 15, N'SAN MIGUEL DE SEMA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (283, 4, 15681, 15, N'SAN PABLO DE BORBUR')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (284, 4, 15686, 15, N'SANTANA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (285, 4, 15690, 15, N'SANTA MARIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (286, 4, 15693, 15, N'SANTA ROSA DE VITERBO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (287, 4, 15696, 15, N'SANTA SOFIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (288, 4, 15720, 15, N'SATIVANORTE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (289, 4, 15723, 15, N'SATIVASUR')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (290, 4, 15740, 15, N'SIACHOQUE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (291, 4, 15753, 15, N'SOATA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (292, 4, 15755, 15, N'SOCOTA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (293, 4, 15757, 15, N'SOCHA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (294, 4, 15759, 15, N'SOGAMOSO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (295, 4, 15761, 15, N'SOMONDOCO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (296, 4, 15762, 15, N'SORA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (297, 4, 15763, 15, N'SOTAQUIRA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (298, 4, 15764, 15, N'SORACA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (299, 4, 15774, 15, N'SUSACON')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (300, 4, 15776, 15, N'SUTAMARCHAN')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (301, 4, 15778, 15, N'SUTATENZA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (302, 4, 15790, 15, N'TASCO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (303, 4, 15798, 15, N'TENZA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (304, 4, 15804, 15, N'TIBANA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (305, 4, 15806, 15, N'TIBASOSA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (306, 4, 15808, 15, N'TINJACA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (307, 4, 15810, 15, N'TIPACOQUE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (308, 4, 15814, 15, N'TOCA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (309, 4, 15816, 15, N'TOGÜI')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (310, 4, 15820, 15, N'TOPAGA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (311, 4, 15822, 15, N'TOTA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (312, 4, 15832, 15, N'TUNUNGUA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (313, 4, 15835, 15, N'TURMEQUE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (314, 4, 15837, 15, N'TUTA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (315, 4, 15839, 15, N'TUTAZA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (316, 4, 15842, 15, N'UMBITA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (317, 4, 15861, 15, N'VENTAQUEMADA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (318, 4, 15879, 15, N'VIRACACHA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (319, 4, 15897, 15, N'ZETAQUIRA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (320, 4, 17001, 17, N'MANIZALES')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (321, 4, 17013, 17, N'AGUADAS')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (322, 4, 17042, 17, N'ANSERMA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (323, 4, 17050, 17, N'ARANZAZU')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (324, 4, 17088, 17, N'BELALCAZAR')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (325, 4, 17174, 17, N'CHINCHINA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (326, 4, 17272, 17, N'FILADELFIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (327, 4, 17380, 17, N'LA DORADA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (328, 4, 17388, 17, N'LA MERCED')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (329, 4, 17433, 17, N'MANZANARES')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (330, 4, 17442, 17, N'MARMATO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (331, 4, 17444, 17, N'MARQUETALIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (332, 4, 17446, 17, N'MARULANDA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (333, 4, 17486, 17, N'NEIRA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (334, 4, 17495, 17, N'NORCASIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (335, 4, 17513, 17, N'PACORA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (336, 4, 17524, 17, N'PALESTINA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (337, 4, 17541, 17, N'PENSILVANIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (338, 4, 17614, 17, N'RIOSUCIO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (339, 4, 17616, 17, N'RISARALDA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (340, 4, 17653, 17, N'SALAMINA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (341, 4, 17662, 17, N'SAMANA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (342, 4, 17665, 17, N'SAN JOSE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (343, 4, 17777, 17, N'SUPIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (344, 4, 17867, 17, N'VICTORIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (345, 4, 17873, 17, N'VILLAMARIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (346, 4, 17877, 17, N'VITERBO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (347, 4, 18001, 18, N'FLORENCIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (348, 4, 18029, 18, N'ALBANIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (349, 4, 18094, 18, N'BELEN DE LOS ANDAQUIES')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (350, 4, 18150, 18, N'CARTAGENA DEL CHAIRA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (351, 4, 18205, 18, N'CURILLO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (352, 4, 18247, 18, N'EL DONCELLO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (353, 4, 18256, 18, N'EL PAUJIL')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (354, 4, 18410, 18, N'LA MONTAÑITA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (355, 4, 18460, 18, N'MILAN')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (356, 4, 18479, 18, N'MORELIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (357, 4, 18592, 18, N'PUERTO RICO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (358, 4, 18610, 18, N'SAN JOSE DEL FRAGUA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (359, 4, 18753, 18, N'SAN VICENTE DEL CAGUAN')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (360, 4, 18756, 18, N'SOLANO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (361, 4, 18785, 18, N'SOLITA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (362, 4, 18860, 18, N'VALPARAISO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (363, 4, 19001, 19, N'POPAYAN')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (364, 4, 19022, 19, N'ALMAGUER')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (365, 4, 19050, 19, N'ARGELIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (366, 4, 19075, 19, N'BALBOA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (367, 4, 19100, 19, N'BOLIVAR')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (368, 4, 19110, 19, N'BUENOS AIRES')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (369, 4, 19130, 19, N'CAJIBIO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (370, 4, 19137, 19, N'CALDONO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (371, 4, 19142, 19, N'CALOTO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (372, 4, 19212, 19, N'CORINTO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (373, 4, 19256, 19, N'EL TAMBO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (374, 4, 19290, 19, N'FLORENCIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (375, 4, 19300, 19, N'GUACHENE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (376, 4, 19318, 19, N'GUAPI')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (377, 4, 19355, 19, N'INZA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (378, 4, 19364, 19, N'JAMBALO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (379, 4, 19392, 19, N'LA SIERRA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (380, 4, 19397, 19, N'LA VEGA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (381, 4, 19418, 19, N'LOPEZ DE MICAY')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (382, 4, 19450, 19, N'MERCADERES')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (383, 4, 19455, 19, N'MIRANDA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (384, 4, 19473, 19, N'MORALES')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (385, 4, 19513, 19, N'PADILLA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (386, 4, 19517, 19, N'PAEZ')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (387, 4, 19532, 19, N'PATIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (388, 4, 19533, 19, N'PIAMONTE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (389, 4, 19548, 19, N'PIENDAMO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (390, 4, 19573, 19, N'PUERTO TEJADA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (391, 4, 19585, 19, N'PURACE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (392, 4, 19622, 19, N'ROSAS')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (393, 4, 19693, 19, N'SAN SEBASTIAN')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (394, 4, 19698, 19, N'SANTANDER DE QUILICHAO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (395, 4, 19701, 19, N'SANTA ROSA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (396, 4, 19743, 19, N'SILVIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (397, 4, 19760, 19, N'SOTARA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (398, 4, 19780, 19, N'SUAREZ')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (399, 4, 19785, 19, N'SUCRE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (400, 4, 19807, 19, N'TIMBIO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (401, 4, 19809, 19, N'TIMBIQUI')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (402, 4, 19821, 19, N'TORIBIO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (403, 4, 19824, 19, N'TOTORO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (404, 4, 19845, 19, N'VILLA RICA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (405, 4, 20001, 20, N'VALLEDUPAR')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (406, 4, 20011, 20, N'AGUACHICA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (407, 4, 20013, 20, N'AGUSTIN CODAZZI')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (408, 4, 20032, 20, N'ASTREA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (409, 4, 20045, 20, N'BECERRIL')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (410, 4, 20060, 20, N'BOSCONIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (411, 4, 20175, 20, N'CHIMICHAGUA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (412, 4, 20178, 20, N'CHIRIGUANA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (413, 4, 20228, 20, N'CURUMANI')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (414, 4, 20238, 20, N'EL COPEY')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (415, 4, 20250, 20, N'EL PASO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (416, 4, 20295, 20, N'GAMARRA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (417, 4, 20310, 20, N'GONZALEZ')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (418, 4, 20383, 20, N'LA GLORIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (419, 4, 20400, 20, N'LA JAGUA DE IBIRICO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (420, 4, 20443, 20, N'MANAURE BALCON DEL CESAR')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (421, 4, 20517, 20, N'PAILITAS')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (422, 4, 20550, 20, N'PELAYA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (423, 4, 20570, 20, N'PUEBLO BELLO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (424, 4, 20614, 20, N'RIO DE ORO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (425, 4, 20621, 20, N'LA PAZ')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (426, 4, 20710, 20, N'SAN ALBERTO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (427, 4, 20750, 20, N'SAN DIEGO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (428, 4, 20770, 20, N'SAN MARTIN')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (429, 4, 20787, 20, N'TAMALAMEQUE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (430, 4, 23001, 23, N'MONTERIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (431, 4, 23068, 23, N'AYAPEL')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (432, 4, 23079, 23, N'BUENAVISTA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (433, 4, 23090, 23, N'CANALETE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (434, 4, 23162, 23, N'CERETE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (435, 4, 23168, 23, N'CHIMA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (436, 4, 23182, 23, N'CHINU')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (437, 4, 23189, 23, N'CIENAGA DE ORO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (438, 4, 23300, 23, N'COTORRA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (439, 4, 23350, 23, N'LA APARTADA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (440, 4, 23417, 23, N'LORICA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (441, 4, 23419, 23, N'LOS CORDOBAS')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (442, 4, 23464, 23, N'MOMIL')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (443, 4, 23466, 23, N'MONTELIBANO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (444, 4, 23500, 23, N'MOÑITOS')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (445, 4, 23555, 23, N'PLANETA RICA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (446, 4, 23570, 23, N'PUEBLO NUEVO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (447, 4, 23574, 23, N'PUERTO ESCONDIDO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (448, 4, 23580, 23, N'PUERTO LIBERTADOR')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (449, 4, 23586, 23, N'PURISIMA DE LA CONCEPCION')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (450, 4, 23660, 23, N'SAHAGUN')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (451, 4, 23670, 23, N'SAN ANDRES DE SOTAVENTO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (452, 4, 23672, 23, N'SAN ANTERO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (453, 4, 23675, 23, N'SAN BERNARDO DEL VIENTO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (454, 4, 23678, 23, N'SAN CARLOS')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (455, 4, 23682, 23, N'SAN JOSE DE URE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (456, 4, 23686, 23, N'SAN PELAYO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (457, 4, 23807, 23, N'TIERRALTA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (458, 4, 23815, 23, N'TUCHIN')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (459, 4, 23855, 23, N'VALENCIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (460, 4, 25001, 25, N'AGUA DE DIOS')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (461, 4, 25019, 25, N'ALBAN')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (462, 4, 25035, 25, N'ANAPOIMA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (463, 4, 25040, 25, N'ANOLAIMA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (464, 4, 25053, 25, N'ARBELAEZ')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (465, 4, 25086, 25, N'BELTRAN')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (466, 4, 25095, 25, N'BITUIMA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (467, 4, 25099, 25, N'BOJACA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (468, 4, 25120, 25, N'CABRERA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (469, 4, 25123, 25, N'CACHIPAY')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (470, 4, 25126, 25, N'CAJICA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (471, 4, 25148, 25, N'CAPARRAPI')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (472, 4, 25151, 25, N'CAQUEZA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (473, 4, 25154, 25, N'CARMEN DE CARUPA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (474, 4, 25168, 25, N'CHAGUANI')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (475, 4, 25175, 25, N'CHIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (476, 4, 25178, 25, N'CHIPAQUE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (477, 4, 25181, 25, N'CHOACHI')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (478, 4, 25183, 25, N'CHOCONTA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (479, 4, 25200, 25, N'COGUA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (480, 4, 25214, 25, N'COTA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (481, 4, 25224, 25, N'CUCUNUBA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (482, 4, 25245, 25, N'EL COLEGIO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (483, 4, 25258, 25, N'EL PEÑON')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (484, 4, 25260, 25, N'EL ROSAL')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (485, 4, 25269, 25, N'FACATATIVA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (486, 4, 25279, 25, N'FOMEQUE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (487, 4, 25281, 25, N'FOSCA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (488, 4, 25286, 25, N'FUNZA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (489, 4, 25288, 25, N'FUQUENE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (490, 4, 25290, 25, N'FUSAGASUGA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (491, 4, 25293, 25, N'GACHALA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (492, 4, 25295, 25, N'GACHANCIPA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (493, 4, 25297, 25, N'GACHETA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (494, 4, 25299, 25, N'GAMA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (495, 4, 25307, 25, N'GIRARDOT')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (496, 4, 25312, 25, N'GRANADA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (497, 4, 25317, 25, N'GUACHETA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (498, 4, 25320, 25, N'GUADUAS')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (499, 4, 25322, 25, N'GUASCA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (500, 4, 25324, 25, N'GUATAQUI')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (501, 4, 25326, 25, N'GUATAVITA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (502, 4, 25328, 25, N'GUAYABAL DE SIQUIMA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (503, 4, 25335, 25, N'GUAYABETAL')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (504, 4, 25339, 25, N'GUTIERREZ')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (505, 4, 25368, 25, N'JERUSALEN')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (506, 4, 25372, 25, N'JUNIN')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (507, 4, 25377, 25, N'LA CALERA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (508, 4, 25386, 25, N'LA MESA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (509, 4, 25394, 25, N'LA PALMA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (510, 4, 25398, 25, N'LA PEÑA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (511, 4, 25402, 25, N'LA VEGA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (512, 4, 25407, 25, N'LENGUAZAQUE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (513, 4, 25426, 25, N'MACHETA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (514, 4, 25430, 25, N'MADRID')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (515, 4, 25436, 25, N'MANTA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (516, 4, 25438, 25, N'MEDINA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (517, 4, 25473, 25, N'MOSQUERA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (518, 4, 25483, 25, N'NARIÑO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (519, 4, 25486, 25, N'NEMOCON')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (520, 4, 25488, 25, N'NILO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (521, 4, 25489, 25, N'NIMAIMA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (522, 4, 25491, 25, N'NOCAIMA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (523, 4, 25506, 25, N'VENECIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (524, 4, 25513, 25, N'PACHO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (525, 4, 25518, 25, N'PAIME')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (526, 4, 25524, 25, N'PANDI')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (527, 4, 25530, 25, N'PARATEBUENO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (528, 4, 25535, 25, N'PASCA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (529, 4, 25572, 25, N'PUERTO SALGAR')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (530, 4, 25580, 25, N'PULI')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (531, 4, 25592, 25, N'QUEBRADANEGRA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (532, 4, 25594, 25, N'QUETAME')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (533, 4, 25596, 25, N'QUIPILE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (534, 4, 25599, 25, N'APULO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (535, 4, 25612, 25, N'RICAURTE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (536, 4, 25645, 25, N'SAN ANTONIO DEL TEQUENDAMA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (537, 4, 25649, 25, N'SAN BERNARDO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (538, 4, 25653, 25, N'SAN CAYETANO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (539, 4, 25658, 25, N'SAN FRANCISCO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (540, 4, 25662, 25, N'SAN JUAN DE RIOSECO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (541, 4, 25718, 25, N'SASAIMA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (542, 4, 25736, 25, N'SESQUILE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (543, 4, 25738, 25, N'SIBERIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (544, 4, 25740, 25, N'SIBATE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (545, 4, 25743, 25, N'SILVANIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (546, 4, 25745, 25, N'SIMIJACA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (547, 4, 25754, 25, N'SOACHA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (548, 4, 25758, 25, N'SOPO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (549, 4, 25769, 25, N'SUBACHOQUE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (550, 4, 25772, 25, N'SUESCA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (551, 4, 25777, 25, N'SUPATA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (552, 4, 25779, 25, N'SUSA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (553, 4, 25781, 25, N'SUTATAUSA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (554, 4, 25785, 25, N'TABIO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (555, 4, 25793, 25, N'TAUSA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (556, 4, 25797, 25, N'TENA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (557, 4, 25799, 25, N'TENJO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (558, 4, 25805, 25, N'TIBACUY')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (559, 4, 25807, 25, N'TIBIRITA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (560, 4, 25815, 25, N'TOCAIMA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (561, 4, 25817, 25, N'TOCANCIPA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (562, 4, 25823, 25, N'TOPAIPI')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (563, 4, 25839, 25, N'UBALA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (564, 4, 25841, 25, N'UBAQUE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (565, 4, 25843, 25, N'UBATE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (566, 4, 25845, 25, N'UNE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (567, 4, 25851, 25, N'UTICA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (568, 4, 25862, 25, N'VERGARA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (569, 4, 25867, 25, N'VIANI')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (570, 4, 25871, 25, N'VILLAGOMEZ')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (571, 4, 25873, 25, N'VILLAPINZON')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (572, 4, 25875, 25, N'VILLETA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (573, 4, 25878, 25, N'VIOTA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (574, 4, 25885, 25, N'YACOPI')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (575, 4, 25898, 25, N'ZIPACON')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (576, 4, 25899, 25, N'ZIPAQUIRA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (577, 4, 27001, 27, N'QUIBDO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (578, 4, 27006, 27, N'ACANDI')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (579, 4, 27025, 27, N'ALTO BAUDO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (580, 4, 27050, 27, N'ATRATO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (581, 4, 27073, 27, N'BAGADO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (582, 4, 27075, 27, N'BAHIA SOLANO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (583, 4, 27077, 27, N'BAJO BAUDO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (584, 4, 27099, 27, N'BOJAYA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (585, 4, 27135, 27, N'EL CANTON DEL SAN PABLO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (586, 4, 27150, 27, N'CARMEN DEL DARIEN')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (587, 4, 27160, 27, N'CERTEGUI')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (588, 4, 27205, 27, N'CONDOTO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (589, 4, 27245, 27, N'EL CARMEN DE ATRATO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (590, 4, 27250, 27, N'EL LITORAL DEL SAN JUAN')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (591, 4, 27361, 27, N'ISTMINA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (592, 4, 27372, 27, N'JURADO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (593, 4, 27413, 27, N'LLORO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (594, 4, 27425, 27, N'MEDIO ATRATO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (595, 4, 27430, 27, N'MEDIO BAUDO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (596, 4, 27450, 27, N'MEDIO SAN JUAN')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (597, 4, 27491, 27, N'NOVITA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (598, 4, 27495, 27, N'NUQUI')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (599, 4, 27580, 27, N'RIO IRO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (600, 4, 27600, 27, N'RIO QUITO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (601, 4, 27615, 27, N'RIOSUCIO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (602, 4, 27660, 27, N'SAN JOSE DEL PALMAR')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (603, 4, 27745, 27, N'SIPI')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (604, 4, 27787, 27, N'TADO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (605, 4, 27800, 27, N'UNGUIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (606, 4, 27810, 27, N'UNION PANAMERICANA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (607, 4, 41001, 41, N'NEIVA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (608, 4, 41006, 41, N'ACEVEDO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (609, 4, 41013, 41, N'AGRADO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (610, 4, 41016, 41, N'AIPE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (611, 4, 41020, 41, N'ALGECIRAS')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (612, 4, 41026, 41, N'ALTAMIRA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (613, 4, 41078, 41, N'BARAYA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (614, 4, 41132, 41, N'CAMPOALEGRE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (615, 4, 41206, 41, N'COLOMBIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (616, 4, 41244, 41, N'ELIAS')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (617, 4, 41298, 41, N'GARZON')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (618, 4, 41306, 41, N'GIGANTE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (619, 4, 41319, 41, N'GUADALUPE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (620, 4, 41349, 41, N'HOBO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (621, 4, 41357, 41, N'IQUIRA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (622, 4, 41359, 41, N'ISNOS')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (623, 4, 41378, 41, N'LA ARGENTINA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (624, 4, 41396, 41, N'LA PLATA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (625, 4, 41483, 41, N'NATAGA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (626, 4, 41503, 41, N'OPORAPA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (627, 4, 41518, 41, N'PAICOL')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (628, 4, 41524, 41, N'PALERMO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (629, 4, 41530, 41, N'PALESTINA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (630, 4, 41548, 41, N'PITAL')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (631, 4, 41551, 41, N'PITALITO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (632, 4, 41615, 41, N'RIVERA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (633, 4, 41660, 41, N'SALADOBLANCO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (634, 4, 41668, 41, N'SAN AGUSTIN')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (635, 4, 41676, 41, N'SANTA MARIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (636, 4, 41770, 41, N'SUAZA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (637, 4, 41791, 41, N'TARQUI')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (638, 4, 41797, 41, N'TESALIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (639, 4, 41799, 41, N'TELLO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (640, 4, 41801, 41, N'TERUEL')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (641, 4, 41807, 41, N'TIMANA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (642, 4, 41872, 41, N'VILLAVIEJA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (643, 4, 41885, 41, N'YAGUARA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (644, 4, 44001, 44, N'RIOHACHA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (645, 4, 44035, 44, N'ALBANIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (646, 4, 44078, 44, N'BARRANCAS')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (647, 4, 44090, 44, N'DIBULLA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (648, 4, 44098, 44, N'DISTRACCION')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (649, 4, 44110, 44, N'EL MOLINO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (650, 4, 44279, 44, N'FONSECA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (651, 4, 44378, 44, N'HATONUEVO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (652, 4, 44420, 44, N'LA JAGUA DEL PILAR')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (653, 4, 44430, 44, N'MAICAO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (654, 4, 44560, 44, N'MANAURE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (655, 4, 44650, 44, N'SAN JUAN DEL CESAR')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (656, 4, 44847, 44, N'URIBIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (657, 4, 44855, 44, N'URUMITA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (658, 4, 44874, 44, N'VILLANUEVA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (659, 4, 47001, 47, N'SANTA MARTA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (660, 4, 47030, 47, N'ALGARROBO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (661, 4, 47053, 47, N'ARACATACA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (662, 4, 47058, 47, N'ARIGUANI')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (663, 4, 47161, 47, N'CERRO DE SAN ANTONIO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (664, 4, 47170, 47, N'CHIVOLO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (665, 4, 47189, 47, N'CIENAGA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (666, 4, 47205, 47, N'CONCORDIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (667, 4, 47245, 47, N'EL BANCO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (668, 4, 47258, 47, N'EL PIÑON')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (669, 4, 47268, 47, N'EL RETEN')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (670, 4, 47288, 47, N'FUNDACION')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (671, 4, 47318, 47, N'GUAMAL')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (672, 4, 47460, 47, N'NUEVA GRANADA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (673, 4, 47541, 47, N'PEDRAZA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (674, 4, 47545, 47, N'PIJIÑO DEL CARMEN')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (675, 4, 47551, 47, N'PIVIJAY')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (676, 4, 47555, 47, N'PLATO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (677, 4, 47570, 47, N'PUEBLOVIEJO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (678, 4, 47605, 47, N'REMOLINO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (679, 4, 47660, 47, N'SABANAS DE SAN ANGEL')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (680, 4, 47675, 47, N'SALAMINA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (681, 4, 47692, 47, N'SAN SEBASTIAN DE BUENAVISTA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (682, 4, 47703, 47, N'SAN ZENON')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (683, 4, 47707, 47, N'SANTA ANA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (684, 4, 47720, 47, N'SANTA BARBARA DE PINTO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (685, 4, 47745, 47, N'SITIONUEVO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (686, 4, 47798, 47, N'TENERIFE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (687, 4, 47960, 47, N'ZAPAYAN')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (688, 4, 47980, 47, N'ZONA BANANERA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (689, 4, 50001, 50, N'VILLAVICENCIO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (690, 4, 50006, 50, N'ACACIAS')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (691, 4, 50110, 50, N'BARRANCA DE UPIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (692, 4, 50124, 50, N'CABUYARO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (693, 4, 50150, 50, N'CASTILLA LA NUEVA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (694, 4, 50223, 50, N'CUBARRAL')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (695, 4, 50226, 50, N'CUMARAL')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (696, 4, 50245, 50, N'EL CALVARIO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (697, 4, 50251, 50, N'EL CASTILLO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (698, 4, 50270, 50, N'EL DORADO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (699, 4, 50287, 50, N'FUENTE DE ORO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (700, 4, 50313, 50, N'GRANADA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (701, 4, 50318, 50, N'GUAMAL')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (702, 4, 50325, 50, N'MAPIRIPAN')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (703, 4, 50330, 50, N'MESETAS')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (704, 4, 50350, 50, N'LA MACARENA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (705, 4, 50370, 50, N'URIBE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (706, 4, 50400, 50, N'LEJANIAS')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (707, 4, 50450, 50, N'PUERTO CONCORDIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (708, 4, 50568, 50, N'PUERTO GAITAN')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (709, 4, 50573, 50, N'PUERTO LOPEZ')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (710, 4, 50577, 50, N'PUERTO LLERAS')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (711, 4, 50590, 50, N'PUERTO RICO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (712, 4, 50606, 50, N'RESTREPO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (713, 4, 50680, 50, N'SAN CARLOS DE GUAROA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (714, 4, 50683, 50, N'SAN JUAN DE ARAMA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (715, 4, 50686, 50, N'SAN JUANITO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (716, 4, 50689, 50, N'SAN MARTIN')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (717, 4, 50711, 50, N'VISTAHERMOSA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (718, 4, 52001, 52, N'PASTO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (719, 4, 52019, 52, N'ALBAN')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (720, 4, 52022, 52, N'ALDANA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (721, 4, 52036, 52, N'ANCUYA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (722, 4, 52051, 52, N'ARBOLEDA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (723, 4, 52079, 52, N'BARBACOAS')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (724, 4, 52083, 52, N'BELEN')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (725, 4, 52110, 52, N'BUESACO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (726, 4, 52203, 52, N'COLON')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (727, 4, 52207, 52, N'CONSACA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (728, 4, 52210, 52, N'CONTADERO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (729, 4, 52215, 52, N'CORDOBA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (730, 4, 52224, 52, N'CUASPUD')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (731, 4, 52227, 52, N'CUMBAL')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (732, 4, 52233, 52, N'CUMBITARA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (733, 4, 52240, 52, N'CHACHAGÜI')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (734, 4, 52250, 52, N'EL CHARCO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (735, 4, 52254, 52, N'EL PEÑOL')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (736, 4, 52256, 52, N'EL ROSARIO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (737, 4, 52258, 52, N'EL TABLON DE GOMEZ')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (738, 4, 52260, 52, N'EL TAMBO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (739, 4, 52287, 52, N'FUNES')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (740, 4, 52317, 52, N'GUACHUCAL')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (741, 4, 52320, 52, N'GUAITARILLA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (742, 4, 52323, 52, N'GUALMATAN')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (743, 4, 52352, 52, N'ILES')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (744, 4, 52354, 52, N'IMUES')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (745, 4, 52356, 52, N'IPIALES')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (746, 4, 52378, 52, N'LA CRUZ')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (747, 4, 52381, 52, N'LA FLORIDA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (748, 4, 52385, 52, N'LA LLANADA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (749, 4, 52390, 52, N'LA TOLA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (750, 4, 52399, 52, N'LA UNION')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (751, 4, 52405, 52, N'LEIVA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (752, 4, 52411, 52, N'LINARES')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (753, 4, 52418, 52, N'LOS ANDES')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (754, 4, 52427, 52, N'MAGÜI')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (755, 4, 52435, 52, N'MALLAMA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (756, 4, 52473, 52, N'MOSQUERA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (757, 4, 52480, 52, N'NARIÑO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (758, 4, 52490, 52, N'OLAYA HERRERA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (759, 4, 52506, 52, N'OSPINA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (760, 4, 52520, 52, N'FRANCISCO PIZARRO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (761, 4, 52540, 52, N'POLICARPA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (762, 4, 52560, 52, N'POTOSI')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (763, 4, 52565, 52, N'PROVIDENCIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (764, 4, 52573, 52, N'PUERRES')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (765, 4, 52585, 52, N'PUPIALES')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (766, 4, 52612, 52, N'RICAURTE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (767, 4, 52621, 52, N'ROBERTO PAYAN')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (768, 4, 52678, 52, N'SAMANIEGO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (769, 4, 52683, 52, N'SANDONA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (770, 4, 52685, 52, N'SAN BERNARDO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (771, 4, 52687, 52, N'SAN LORENZO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (772, 4, 52693, 52, N'SAN PABLO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (773, 4, 52694, 52, N'SAN PEDRO DE CARTAGO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (774, 4, 52696, 52, N'SANTA BARBARA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (775, 4, 52699, 52, N'SANTACRUZ')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (776, 4, 52720, 52, N'SAPUYES')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (777, 4, 52786, 52, N'TAMINANGO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (778, 4, 52788, 52, N'TANGUA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (779, 4, 52835, 52, N'TUMACO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (780, 4, 52838, 52, N'TUQUERRES')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (781, 4, 52885, 52, N'YACUANQUER')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (782, 4, 54001, 54, N'CUCUTA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (783, 4, 54003, 54, N'ABREGO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (784, 4, 54051, 54, N'ARBOLEDAS')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (785, 4, 54099, 54, N'BOCHALEMA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (786, 4, 54109, 54, N'BUCARASICA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (787, 4, 54125, 54, N'CACOTA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (788, 4, 54128, 54, N'CACHIRA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (789, 4, 54172, 54, N'CHINACOTA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (790, 4, 54174, 54, N'CHITAGA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (791, 4, 54206, 54, N'CONVENCION')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (792, 4, 54223, 54, N'CUCUTILLA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (793, 4, 54239, 54, N'DURANIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (794, 4, 54245, 54, N'EL CARMEN')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (795, 4, 54250, 54, N'EL TARRA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (796, 4, 54261, 54, N'EL ZULIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (797, 4, 54313, 54, N'GRAMALOTE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (798, 4, 54344, 54, N'HACARI')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (799, 4, 54347, 54, N'HERRAN')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (800, 4, 54377, 54, N'LABATECA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (801, 4, 54385, 54, N'LA ESPERANZA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (802, 4, 54398, 54, N'LA PLAYA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (803, 4, 54405, 54, N'LOS PATIOS')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (804, 4, 54418, 54, N'LOURDES')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (805, 4, 54480, 54, N'MUTISCUA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (806, 4, 54498, 54, N'OCAÑA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (807, 4, 54518, 54, N'PAMPLONA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (808, 4, 54520, 54, N'PAMPLONITA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (809, 4, 54553, 54, N'PUERTO SANTANDER')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (810, 4, 54599, 54, N'RAGONVALIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (811, 4, 54660, 54, N'SALAZAR')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (812, 4, 54670, 54, N'SAN CALIXTO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (813, 4, 54673, 54, N'SAN CAYETANO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (814, 4, 54680, 54, N'SANTIAGO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (815, 4, 54720, 54, N'SARDINATA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (816, 4, 54743, 54, N'SILOS')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (817, 4, 54800, 54, N'TEORAMA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (818, 4, 54810, 54, N'TIBU')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (819, 4, 54820, 54, N'TOLEDO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (820, 4, 54871, 54, N'VILLA CARO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (821, 4, 54874, 54, N'VILLA DEL ROSARIO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (822, 4, 63001, 63, N'ARMENIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (823, 4, 63111, 63, N'BUENAVISTA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (824, 4, 63130, 63, N'CALARCA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (825, 4, 63190, 63, N'CIRCASIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (826, 4, 63212, 63, N'CORDOBA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (827, 4, 63272, 63, N'FILANDIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (828, 4, 63302, 63, N'GENOVA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (829, 4, 63401, 63, N'LA TEBAIDA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (830, 4, 63470, 63, N'MONTENEGRO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (831, 4, 63548, 63, N'PIJAO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (832, 4, 63594, 63, N'QUIMBAYA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (833, 4, 63690, 63, N'SALENTO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (834, 4, 66001, 66, N'PEREIRA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (835, 4, 66045, 66, N'APIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (836, 4, 66075, 66, N'BALBOA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (837, 4, 66088, 66, N'BELEN DE UMBRIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (838, 4, 66170, 66, N'DOSQUEBRADAS')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (839, 4, 66318, 66, N'GUATICA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (840, 4, 66383, 66, N'LA CELIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (841, 4, 66400, 66, N'LA VIRGINIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (842, 4, 66440, 66, N'MARSELLA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (843, 4, 66456, 66, N'MISTRATO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (844, 4, 66572, 66, N'PUEBLO RICO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (845, 4, 66594, 66, N'QUINCHIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (846, 4, 66682, 66, N'SANTA ROSA DE CABAL')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (847, 4, 66687, 66, N'SANTUARIO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (848, 4, 68001, 68, N'BUCARAMANGA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (849, 4, 68013, 68, N'AGUADA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (850, 4, 68020, 68, N'ALBANIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (851, 4, 68051, 68, N'ARATOCA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (852, 4, 68077, 68, N'BARBOSA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (853, 4, 68079, 68, N'BARICHARA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (854, 4, 68081, 68, N'BARRANCABERMEJA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (855, 4, 68092, 68, N'BETULIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (856, 4, 68101, 68, N'BOLIVAR')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (857, 4, 68121, 68, N'CABRERA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (858, 4, 68132, 68, N'CALIFORNIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (859, 4, 68147, 68, N'CAPITANEJO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (860, 4, 68152, 68, N'CARCASI')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (861, 4, 68160, 68, N'CEPITA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (862, 4, 68162, 68, N'CERRITO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (863, 4, 68167, 68, N'CHARALA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (864, 4, 68169, 68, N'CHARTA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (865, 4, 68176, 68, N'CHIMA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (866, 4, 68179, 68, N'CHIPATA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (867, 4, 68190, 68, N'CIMITARRA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (868, 4, 68207, 68, N'CONCEPCION')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (869, 4, 68209, 68, N'CONFINES')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (870, 4, 68211, 68, N'CONTRATACION')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (871, 4, 68217, 68, N'COROMORO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (872, 4, 68229, 68, N'CURITI')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (873, 4, 68235, 68, N'EL CARMEN DE CHUCURI')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (874, 4, 68245, 68, N'EL GUACAMAYO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (875, 4, 68250, 68, N'EL PEÑON')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (876, 4, 68255, 68, N'EL PLAYON')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (877, 4, 68264, 68, N'ENCINO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (878, 4, 68266, 68, N'ENCISO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (879, 4, 68271, 68, N'FLORIAN')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (880, 4, 68276, 68, N'FLORIDABLANCA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (881, 4, 68296, 68, N'GALAN')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (882, 4, 68298, 68, N'GAMBITA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (883, 4, 68307, 68, N'GIRON')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (884, 4, 68318, 68, N'GUACA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (885, 4, 68320, 68, N'GUADALUPE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (886, 4, 68322, 68, N'GUAPOTA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (887, 4, 68324, 68, N'GUAVATA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (888, 4, 68327, 68, N'GÜEPSA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (889, 4, 68344, 68, N'HATO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (890, 4, 68368, 68, N'JESUS MARIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (891, 4, 68370, 68, N'JORDAN')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (892, 4, 68377, 68, N'LA BELLEZA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (893, 4, 68385, 68, N'LANDAZURI')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (894, 4, 68397, 68, N'LA PAZ')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (895, 4, 68406, 68, N'LEBRIJA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (896, 4, 68418, 68, N'LOS SANTOS')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (897, 4, 68425, 68, N'MACARAVITA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (898, 4, 68432, 68, N'MALAGA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (899, 4, 68444, 68, N'MATANZA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (900, 4, 68464, 68, N'MOGOTES')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (901, 4, 68468, 68, N'MOLAGAVITA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (902, 4, 68498, 68, N'OCAMONTE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (903, 4, 68500, 68, N'OIBA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (904, 4, 68502, 68, N'ONZAGA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (905, 4, 68522, 68, N'PALMAR')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (906, 4, 68524, 68, N'PALMAS DEL SOCORRO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (907, 4, 68533, 68, N'PARAMO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (908, 4, 68547, 68, N'PIEDECUESTA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (909, 4, 68549, 68, N'PINCHOTE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (910, 4, 68572, 68, N'PUENTE NACIONAL')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (911, 4, 68573, 68, N'PUERTO PARRA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (912, 4, 68575, 68, N'PUERTO WILCHES')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (913, 4, 68615, 68, N'RIONEGRO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (914, 4, 68655, 68, N'SABANA DE TORRES')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (915, 4, 68669, 68, N'SAN ANDRES')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (916, 4, 68673, 68, N'SAN BENITO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (917, 4, 68679, 68, N'SAN GIL')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (918, 4, 68682, 68, N'SAN JOAQUIN')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (919, 4, 68684, 68, N'SAN JOSE DE MIRANDA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (920, 4, 68686, 68, N'SAN MIGUEL')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (921, 4, 68689, 68, N'SAN VICENTE DE CHUCURI')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (922, 4, 68705, 68, N'SANTA BARBARA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (923, 4, 68720, 68, N'SANTA HELENA DEL OPON')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (924, 4, 68745, 68, N'SIMACOTA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (925, 4, 68755, 68, N'SOCORRO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (926, 4, 68770, 68, N'SUAITA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (927, 4, 68773, 68, N'SUCRE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (928, 4, 68780, 68, N'SURATA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (929, 4, 68820, 68, N'TONA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (930, 4, 68855, 68, N'VALLE DE SAN JOSE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (931, 4, 68861, 68, N'VELEZ')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (932, 4, 68867, 68, N'VETAS')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (933, 4, 68872, 68, N'VILLANUEVA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (934, 4, 68895, 68, N'ZAPATOCA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (935, 4, 70001, 70, N'SINCELEJO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (936, 4, 70110, 70, N'BUENAVISTA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (937, 4, 70124, 70, N'CAIMITO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (938, 4, 70204, 70, N'COLOSO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (939, 4, 70215, 70, N'COROZAL')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (940, 4, 70221, 70, N'COVEÑAS')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (941, 4, 70230, 70, N'CHALAN')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (942, 4, 70233, 70, N'EL ROBLE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (943, 4, 70235, 70, N'GALERAS')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (944, 4, 70265, 70, N'GUARANDA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (945, 4, 70400, 70, N'LA UNION')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (946, 4, 70418, 70, N'LOS PALMITOS')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (947, 4, 70429, 70, N'MAJAGUAL')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (948, 4, 70473, 70, N'MORROA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (949, 4, 70508, 70, N'OVEJAS')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (950, 4, 70523, 70, N'PALMITO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (951, 4, 70670, 70, N'SAMPUES')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (952, 4, 70678, 70, N'SAN BENITO ABAD')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (953, 4, 70702, 70, N'SAN JUAN DE BETULIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (954, 4, 70708, 70, N'SAN MARCOS')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (955, 4, 70713, 70, N'SAN ONOFRE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (956, 4, 70717, 70, N'SAN PEDRO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (957, 4, 70742, 70, N'SAN LUIS DE SINCE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (958, 4, 70771, 70, N'SUCRE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (959, 4, 70820, 70, N'SANTIAGO DE TOLU')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (960, 4, 70823, 70, N'TOLU VIEJO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (961, 4, 73001, 73, N'IBAGUE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (962, 4, 73024, 73, N'ALPUJARRA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (963, 4, 73026, 73, N'ALVARADO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (964, 4, 73030, 73, N'AMBALEMA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (965, 4, 73043, 73, N'ANZOATEGUI')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (966, 4, 73055, 73, N'ARMERO GUAYABAL')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (967, 4, 73067, 73, N'ATACO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (968, 4, 73124, 73, N'CAJAMARCA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (969, 4, 73148, 73, N'CARMEN DE APICALA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (970, 4, 73152, 73, N'CASABIANCA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (971, 4, 73168, 73, N'CHAPARRAL')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (972, 4, 73200, 73, N'COELLO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (973, 4, 73217, 73, N'COYAIMA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (974, 4, 73226, 73, N'CUNDAY')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (975, 4, 73236, 73, N'DOLORES')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (976, 4, 73268, 73, N'ESPINAL')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (977, 4, 73270, 73, N'FALAN')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (978, 4, 73275, 73, N'FLANDES')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (979, 4, 73283, 73, N'FRESNO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (980, 4, 73319, 73, N'GUAMO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (981, 4, 73347, 73, N'HERVEO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (982, 4, 73349, 73, N'HONDA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (983, 4, 73352, 73, N'ICONONZO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (984, 4, 73408, 73, N'LERIDA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (985, 4, 73411, 73, N'LIBANO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (986, 4, 73443, 73, N'MARIQUITA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (987, 4, 73449, 73, N'MELGAR')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (988, 4, 73461, 73, N'MURILLO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (989, 4, 73483, 73, N'NATAGAIMA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (990, 4, 73504, 73, N'ORTEGA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (991, 4, 73520, 73, N'PALOCABILDO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (992, 4, 73547, 73, N'PIEDRAS')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (993, 4, 73555, 73, N'PLANADAS')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (994, 4, 73563, 73, N'PRADO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (995, 4, 73585, 73, N'PURIFICACION')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (996, 4, 73616, 73, N'RIOBLANCO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (997, 4, 73622, 73, N'RONCESVALLES')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (998, 4, 73624, 73, N'ROVIRA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (999, 4, 73671, 73, N'SALDAÑA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1000, 4, 73675, 73, N'SAN ANTONIO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1001, 4, 73678, 73, N'SAN LUIS')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1002, 4, 73686, 73, N'SANTA ISABEL')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1003, 4, 73770, 73, N'SUAREZ')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1004, 4, 73854, 73, N'VALLE DE SAN JUAN')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1005, 4, 73861, 73, N'VENADILLO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1006, 4, 73870, 73, N'VILLAHERMOSA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1007, 4, 73873, 73, N'VILLARRICA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1008, 4, 76001, 76, N'CALI')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1009, 4, 76020, 76, N'ALCALA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1010, 4, 76036, 76, N'ANDALUCIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1011, 4, 76041, 76, N'ANSERMANUEVO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1012, 4, 76054, 76, N'ARGELIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1013, 4, 76100, 76, N'BOLIVAR')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1014, 4, 76109, 76, N'BUENAVENTURA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1015, 4, 76111, 76, N'GUADALAJARA DE BUGA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1016, 4, 76113, 76, N'BUGALAGRANDE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1017, 4, 76122, 76, N'CAICEDONIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1018, 4, 76126, 76, N'CALIMA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1019, 4, 76130, 76, N'CANDELARIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1020, 4, 76147, 76, N'CARTAGO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1021, 4, 76233, 76, N'DAGUA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1022, 4, 76243, 76, N'EL AGUILA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1023, 4, 76246, 76, N'EL CAIRO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1024, 4, 76248, 76, N'EL CERRITO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1025, 4, 76250, 76, N'EL DOVIO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1026, 4, 76275, 76, N'FLORIDA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1027, 4, 76306, 76, N'GINEBRA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1028, 4, 76318, 76, N'GUACARI')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1029, 4, 76364, 76, N'JAMUNDI')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1030, 4, 76377, 76, N'LA CUMBRE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1031, 4, 76400, 76, N'LA UNION')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1032, 4, 76403, 76, N'LA VICTORIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1033, 4, 76497, 76, N'OBANDO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1034, 4, 76520, 76, N'PALMIRA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1035, 4, 76563, 76, N'PRADERA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1036, 4, 76606, 76, N'RESTREPO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1037, 4, 76616, 76, N'RIOFRIO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1038, 4, 76622, 76, N'ROLDANILLO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1039, 4, 76670, 76, N'SAN PEDRO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1040, 4, 76736, 76, N'SEVILLA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1041, 4, 76823, 76, N'TORO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1042, 4, 76828, 76, N'TRUJILLO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1043, 4, 76834, 76, N'TULUA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1044, 4, 76845, 76, N'ULLOA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1045, 4, 76863, 76, N'VERSALLES')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1046, 4, 76869, 76, N'VIJES')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1047, 4, 76890, 76, N'YOTOCO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1048, 4, 76892, 76, N'YUMBO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1049, 4, 76895, 76, N'ZARZAL')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1050, 4, 81001, 81, N'ARAUCA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1051, 4, 81065, 81, N'ARAUQUITA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1052, 4, 81220, 81, N'CRAVO NORTE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1053, 4, 81300, 81, N'FORTUL')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1054, 4, 81591, 81, N'PUERTO RONDON')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1055, 4, 81736, 81, N'SARAVENA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1056, 4, 81794, 81, N'TAME')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1057, 4, 85001, 85, N'YOPAL')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1058, 4, 85010, 85, N'AGUAZUL')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1059, 4, 85015, 85, N'CHAMEZA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1060, 4, 85125, 85, N'HATO COROZAL')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1061, 4, 85136, 85, N'LA SALINA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1062, 4, 85139, 85, N'MANI')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1063, 4, 85162, 85, N'MONTERREY')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1064, 4, 85225, 85, N'NUNCHIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1065, 4, 85230, 85, N'OROCUE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1066, 4, 85250, 85, N'PAZ DE ARIPORO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1067, 4, 85263, 85, N'PORE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1068, 4, 85279, 85, N'RECETOR')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1069, 4, 85300, 85, N'SABANALARGA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1070, 4, 85315, 85, N'SACAMA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1071, 4, 85325, 85, N'SAN LUIS DE PALENQUE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1072, 4, 85400, 85, N'TAMARA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1073, 4, 85410, 85, N'TAURAMENA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1074, 4, 85430, 85, N'TRINIDAD')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1075, 4, 85440, 85, N'VILLANUEVA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1076, 4, 86001, 86, N'MOCOA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1077, 4, 86219, 86, N'COLON')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1078, 4, 86320, 86, N'ORITO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1079, 4, 86568, 86, N'PUERTO ASIS')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1080, 4, 86569, 86, N'PUERTO CAICEDO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1081, 4, 86571, 86, N'PUERTO GUZMAN')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1082, 4, 86573, 86, N'PUERTO LEGUIZAMO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1083, 4, 86749, 86, N'SIBUNDOY')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1084, 4, 86755, 86, N'SAN FRANCISCO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1085, 4, 86757, 86, N'SAN MIGUEL')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1086, 4, 86760, 86, N'SANTIAGO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1087, 4, 86865, 86, N'VALLE DEL GUAMUEZ')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1088, 4, 86885, 86, N'VILLAGARZON')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1089, 4, 88001, 88, N'SAN ANDRES')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1090, 4, 88564, 88, N'PROVIDENCIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1091, 4, 91001, 91, N'LETICIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1092, 4, 91263, 91, N'EL ENCANTO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1093, 4, 91405, 91, N'LA CHORRERA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1094, 4, 91407, 91, N'LA PEDRERA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1095, 4, 91430, 91, N'LA VICTORIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1096, 4, 91460, 91, N'MIRITI - PARANA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1097, 4, 91530, 91, N'PUERTO ALEGRIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1098, 4, 91536, 91, N'PUERTO ARICA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1099, 4, 91540, 91, N'PUERTO NARIÑO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1100, 4, 91669, 91, N'PUERTO SANTANDER')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1101, 4, 91798, 91, N'TARAPACA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1102, 4, 94001, 94, N'INIRIDA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1103, 4, 94343, 94, N'BARRANCO MINAS')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1104, 4, 94663, 94, N'MAPIRIPANA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1105, 4, 94883, 94, N'SAN FELIPE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1106, 4, 94884, 94, N'PUERTO COLOMBIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1107, 4, 94885, 94, N'LA GUADALUPE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1108, 4, 94886, 94, N'CACAHUAL')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1109, 4, 94887, 94, N'PANA PANA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1110, 4, 94888, 94, N'MORICHAL')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1111, 4, 95001, 95, N'SAN JOSE DEL GUAVIARE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1112, 4, 95015, 95, N'CALAMAR')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1113, 4, 95025, 95, N'EL RETORNO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1114, 4, 95200, 95, N'MIRAFLORES')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1115, 4, 97001, 97, N'MITU')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1116, 4, 97161, 97, N'CARURU')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1117, 4, 97511, 97, N'PACOA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1118, 4, 97666, 97, N'TARAIRA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1119, 4, 97777, 97, N'PAPUNAUA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1120, 4, 97889, 97, N'YAVARATE')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1121, 4, 99001, 99, N'PUERTO CARREÑO')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1122, 4, 99524, 99, N'LA PRIMAVERA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1123, 4, 99624, 99, N'SANTA ROSALIA')
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [IdTipoEstado], [IdSiicon], [IdDepartamentoSiicon], [Descripcion]) VALUES (1124, 4, 99773, 99, N'CUMARIBO')
GO
SET IDENTITY_INSERT [dbo].[Ciudades] OFF
GO


