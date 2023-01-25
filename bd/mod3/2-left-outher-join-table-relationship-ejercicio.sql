CREATE TABLE customers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    email TEXT);
    
INSERT INTO customers (name, email) VALUES ("Doctor Who", "doctorwho@timelords.com");
INSERT INTO customers (name, email) VALUES ("Harry Potter", "harry@potter.com");
INSERT INTO customers (name, email) VALUES ("Captain Awesome", "captain@awesome.com");

CREATE TABLE orders (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER,
    item TEXT,
    price REAL);

INSERT INTO orders (customer_id, item, price)
    VALUES (1, "Sonic Screwdriver", 1000.00);
INSERT INTO orders (customer_id, item, price)
    VALUES (2, "High Quality Broomstick", 40.00);
INSERT INTO orders (customer_id, item, price)
    VALUES (1, "TARDIS", 1000000.00);
    
    
/*PASO 1
Creamos una base de datos para clientes y sus pedidos. Sin embargo, no todos los clientes han hecho pedidos. Crea una consulta que liste el name (nombre) e email de cada cliente seguido de item y price de los pedidos que ha hecho. Usa un LEFT OUTER JOIN de modo que un cliente esté listado incluso si no ha hecho pedidos, y no agregues ningún ORDER BY.
*/
select customers.name, customers.email, orders.item, orders.price from customers
	left outer join orders
	on customers.id = orders.customer_id;
    
/*PASO 2
Creamos una base de datos para clientes y sus pedidos. Sin embargo, no todos los clientes han hecho pedidos. Crea una consulta que liste el name (nombre) e email de cada cliente seguido de item y price de los pedidos que ha hecho. Usa un LEFT OUTER JOIN de modo que un cliente esté listado incluso si no ha hecho pedidos, y no agregues ningún ORDER BY.
*/

select customers.name, customers.email, sum(orders.price) as total_gastado from customers
	left outer join orders
	on customers.id = orders.customer_id
	group by customers.name
	order by total_gastado desc;