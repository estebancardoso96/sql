
--- PIQUES Código SQL ----

-- Eliminar una tabla (tener cuidado!!) --
drop table esquema.tabla;


-- Renombrar una tabla --
ALTER TABLE esquema.tabla_nombre_viejo RENAME TO esquema.tabla_nombre_nuevo;


-- Crear una columna a un tabla existente --
ALTER TABLE tabla_existente 
ADD COLUMN nueva_col_salario DECIMAL(10, 2),
ADD COLUMN nueva_col_puesto VARCHAR(100);


-- Crear una columna a una tabla existente con un valor (30) --
ALTER TABLE empleados ADD COLUMN edad INTEGER DEFAULT 30;


-- Generar una tabla nueva con algunas columnas nuevas --
create table esquema.dim_tabla as 
select distinct descripcion_cod, 3 as id_fuente,'usuario' as usuario_carga, '2024-09-18' as fecha_carga  
from poblacion.fact_vinculos fvbc
where descripcion_cod is not null
order by cod_causal

