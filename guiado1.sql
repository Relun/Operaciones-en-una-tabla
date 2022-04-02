--PARTE 1
-- 1. Crear una base de datos con nombre “Posts”
CREATE DATABASE Posts;
 \c posts
-- 2. Crear una tabla “post” con id, nombre de usuario, fecha de creación, contenido, descripción.
CREATE TABLE Post(
 id_post SERIAL,
 nombre_usuario VARCHAR(50),
 fecha_creacion DATE,
 contenido VARCHAR(100),
 descripcion VARCHAR(100),
 PRIMARY KEY(id_post));
--para consultar la tabla
 SELECT * FROM Post;
-- 3. Insertar 3 post, 2 para el usuario "Pamela" y uno para "Carlos". 
INSERT INTO post(id_post, nombre_usuario, fecha_creacion, contenido, descripcion) VALUES (DEFAULT, 'Pamela', '2022-04-02', 'post 1 P', 'primer post de pamela');
INSERT INTO post(id_post, nombre_usuario, fecha_creacion, contenido, descripcion) VALUES (DEFAULT, 'Pamela', '2022-04-02', 'post 2 P', 'segundo post de pamela');
INSERT INTO post(id_post, nombre_usuario, fecha_creacion, contenido, descripcion) VALUES (DEFAULT, 'Carlos', '2022-04-02', 'post 1 C', 'primer post de carlos');
--4. Modificar la tabla post, agregando la columna título
ALTER TABLE post ADD titulo VARCHAR(20);
--5. Agregar título a las publicaciones ya ingresadas 
UPDATE post SET titulo='titulo 1P' WHERE id_post=1; 
UPDATE post SET titulo='titulo 2P' WHERE id_post=2;
UPDATE post SET titulo='titulo 1C' WHERE id_post=3;
--6. Insertar 2 post para el usuario "Pedro"
INSERT INTO post(id_post, nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES (DEFAULT, 'Pedro', '2022-04-02', 'post 1 Pe', 'primer post de pedro', 'titulo 1Pe');
INSERT INTO post(id_post, nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES (DEFAULT, 'Pedro', '2022-04-02', 'post 2 Pe', 'segundo post de pedro', 'titulo 2Pe');
--7. Eliminar el post de Carlos
DELETE FROM post WHERE id_post=3;
--8. Ingresar un nuevo post para el usuario "Carlos"
INSERT INTO post(id_post, nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES (DEFAULT, 'Carlos', '2022-04-02', 'post carlos', 'nuevo post de carlos', 'titulo c');
--PARTE 2
--1 Crear tabla “comentarios”, con id, fecha, hora de creación y contenido, que se relacione con la tabla posts
CREATE TABLE Comentarios(
id_com SERIAL, 
fecha DATE, 
hora_creacion TIME, 
contenido VARCHAR(100), 
id_post INT,
PRIMARY KEY(id_com),
FOREIGN KEY (id_post) REFERENCES post(id_post));
--2 Crear 2 comentarios para el post de "Pamela" y 4 para "Carlos"
INSERT INTO comentarios(id_com, fecha, hora_creacion, contenido, id_post) VALUES (DEFAULT, '2022-04-02', '20:05:05', 'primer comentario pamela', 1);
INSERT INTO comentarios(id_com, fecha, hora_creacion, contenido, id_post) VALUES (DEFAULT, '2022-04-02', '20:05:05', 'segundo comentario pamela', 2);
INSERT INTO comentarios(id_com, fecha, hora_creacion, contenido, id_post) VALUES (DEFAULT, '2022-04-02', '20:06:15', 'primer comentario carlos', 6);
INSERT INTO comentarios(id_com, fecha, hora_creacion, contenido, id_post) VALUES (DEFAULT, '2022-04-02', '20:07:25', 'segundo comentario carlos', 6);
INSERT INTO comentarios(id_com, fecha, hora_creacion, contenido, id_post) VALUES (DEFAULT, '2022-04-02', '20:08:35', 'tercer comentario carlos', 6);
INSERT INTO comentarios(id_com, fecha, hora_creacion, contenido, id_post) VALUES (DEFAULT, '2022-04-02', '20:09:45', 'cuarto comentario carlos', 6);
--3 Crear un nuevo post para "Margarita"
INSERT INTO post(id_post, nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES (DEFAULT, 'Margarita', '2022-04-02', 'post margarita', 'nuevo post de margarita', 'titulo m');
--4 Ingresar 5 comentarios para el post de Margarita
INSERT INTO comentarios(id_com, fecha, hora_creacion, contenido, id_post) VALUES (DEFAULT, '2022-04-02', '20:09:55', 'primer comentario margarita', 7);
INSERT INTO comentarios(id_com, fecha, hora_creacion, contenido, id_post) VALUES (DEFAULT, '2022-04-02', '20:19:55', 'segundo comentario margarita', 7);
INSERT INTO comentarios(id_com, fecha, hora_creacion, contenido, id_post) VALUES (DEFAULT, '2022-04-02', '20:29:55', 'tercer comentario margarita', 7);
INSERT INTO comentarios(id_com, fecha, hora_creacion, contenido, id_post) VALUES (DEFAULT, '2022-04-02', '20:39:55', 'cuarto comentario margarita', 7);
INSERT INTO comentarios(id_com, fecha, hora_creacion, contenido, id_post) VALUES (DEFAULT, '2022-04-02', '20:49:55', 'quinto comentario margarita', 7);

