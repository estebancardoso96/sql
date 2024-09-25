-- Creación de tablas

--- Creo esqueleto

CREATE TABLE esquema.dim_tabla_dpto (
	id_dpto numeric(38) NULL,
	descripcion varchar(50) NULL,
	usuario_carga varchar(50) NULL
);

--- Lleno el esqueleto de info

INSERT INTO esquema.dim_tabla_dpto (id_dpto, descripcion)
SELECT 
    ROW_NUMBER() OVER (ORDER BY id DESC) AS id_dpto,
    departamentos as descripcion
FROM 
    (SELECT DISTINCT departamentos FROM esquema.poblacionn) AS distinct_departamentos
ORDER BY 
    id_dpto;

