
--- PIQUES Código SQL Postgre ----

-- Eliminar una tabla (tener cuidado!!) --
drop table esquema.tabla;


-- Renombrar una tabla --
ALTER TABLE esquema.tabla_nombre_viejo RENAME TO esquema.tabla_nombre_nuevo;


-- Renombrar una columna de una tabla --
ALTER TABLE nombre_tabla RENAME COLUMN nombre_viejo TO nombre_nuevo


-- Mover de public a un esquema una tabla --
ALTER TABLE public.mi_tabla SET SCHEMA nuevo_esquema;


-- Crear una columna a un tabla existente --
ALTER TABLE tabla_existente 
ADD COLUMN nueva_col_salario DECIMAL(10, 2),
ADD COLUMN nueva_col_puesto VARCHAR(100);


-- Crear una columna a una tabla existente con un valor (30) --
ALTER TABLE empleados ADD COLUMN edad INTEGER DEFAULT 30;


-- Agregar una fila a una tabla existente --
INSERT INTO actividad.dim_categoria_aportacion (tipo_aportacion, descripcion)
VALUES (13, 'Policial')


-- Generar una tabla nueva con algunas columnas nuevas --
create table esquema.dim_tabla as 
select distinct descripcion_cod, 3 as id_fuente,'usuario' as usuario_carga, '2024-09-18' as fecha_carga  
from poblacion.fact_vinculos fvbc
where descripcion_cod is not null
order by cod_causal

-- Editar uno o más valores (edito la edad de la persona con id_persona igual a 35) de filas de una tabla --
update esquema.tabla
set edad = 35
where id_persona = 2
