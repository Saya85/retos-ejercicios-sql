// reto dml 1

//1.1 obten los nombres de los productos de la tienda

// SELECT * FROM articulos;

//1.2  opten los nombres uy los precios de los productos de la tienda

// SELECT nombre, PRECIO FROM articulos;

//1.3 obten el nombre de los productos cuyo precio se a menor o = a 200€

// SELECT * FROM articulos where PRECIO <= 200;

//1.4 obten todos los datos de los articulos cuyo precio este entre los 60€ y los 120€

// SELECT * FROM articulos where PRECIO BETWEEN 60 AND 120;

//1.5 obten el nombre y el precio en pesetas (es decir, el precio en euros * 166.386)

// SELECT NOMBRE, PRECIO*166.386 AS 'PESETAS' FROM articulos;

// reto dml 2

//1.6 Secleccionar el precio medio de todos los productos

//SELECT AVG (PRECIO) FROM articulos;

//1.7 obten el precio medio de los articulos cuyo codigo de fabricante sea 2

//SELECT AVG (PERCIO) FROM articulos where CODIGO = 2;

//1.8 obten el numero de los articulos cuyo precio sea mayor o igual a 180€

//SELECT COUNT(*) FROM ARTICULOS where PRECIO >=180;

//1.9 obten el nombre y precio de los articulos cuyo precio sea mayor o igual a 180€ y ordenalos descendientemente por precio

//SELECT NOMBRE, PRECIO FROM articulos where PRECIO >= 180 ORDER BY PRECIO DESC;

//1.9 y luego ascendentemente por nombre

//SELECT NOMBRE, PRECIO FROM articulos where PRECIO >= 180 ORDER BY NOMBRE ASC;

//1.10 obtener un listado completo de articulos incluyendo por cada articulo los datos del articulo y de su fabricante

//SELECT * FROM articulos INNER JOIN FABRICANTE ON FABRICANTE.CODIGO=ARTICULOS.FABRICANTE;

//1.11 obtener un listado de articulos, incluyendo el nombre del articulo , su precio, y el nombre fabricante

//SELECT ARTICULOS.NOMBRE, PRECIO, FABRICANTE.NOMBRE FROM articulos INNER JOIN FABRICANTE ON FABRICANTE.CODIGO=ARTICULOS.FABRICANTE;

//1.12 obten el precio medio de los productos de cada fabricante mostrando solo el codigo de fabricante

SELECT AVG (PERCIO), CODIGO FROM articulos GROUP BY CODIGO

// reto dml 3


//1.13 obten el precio medio de los productos de cada fabricante, mostrando el nombre del fabricante.

//SELECT AVG(PRECIO), fabricantes.NOMBRE FROM articulos INNER JOIN fabricantes ON articulos.FABRICANTE= fabricantes.CODIGO GROUP BY fabricantes.NOMBRE;

//1.14 obten el nombre de los fabricantes que ofrezcan productos cuyo precio medio sea mayor a 150€

// SELECT fabricantes.NOMBRE, AVG(PRECIO) FROM articulos, fabricantes where articulos.FABRICANTE = fabricantes.CODIGO GROUP BY fabricantes.NOMBRE HAVING AVG(PRECIO) >= 150;

//1.15 obten el nombre y precio del articulo mas barato

//SELECT NOMBRE, PRECIO FROM articulos WHERE  PRECIO = (SELECT MIN(PRECIO) FROM articulos);

//1.16 obten una lista con el nombre y precio de los articulos mas caros de cada provedor (incluyendo el nombre del provedor)

// SELECT fabricantes.NOMBRE, articulos.NOMBRE, PRECIO FROM articulos INNER JOIN fabricantes ON ARTICULOS.fabricante= fabricantes.CODIGO GROUP BY (ARTICULOS.FABRICANTE);

//1.17 añadir un nuevo producto: altavoces de 70€ (fabricante 2)

// INSERT INTO articulos(NOMBRE, PRECIO, FABRICANTE) VALUES('ALTAVOZ', 70, 2);

//1.18 cambiar el nombre del producto a Impresora Laser

// UPDATE articulos SET NOMBRE='IMPRESORA LASER' where CODIGO 0;

//1.19 aplicar un descuento de 10% (multiplicado el precio por 0.9) a todos los productos

//UPDATE articulos SET PRECIO=PRECIO*09;

//1.20 aplicar un descuento de 10€ a todos los productos cuyo precio sea mayor o igual a 120€

//UPDATE articulos SET PRECIO=PRECIO -10 where PRECIO >=120;