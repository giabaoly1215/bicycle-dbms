/* Lấy thông tin của tất cả các đơn hàng cùng với chi tiết của khách hàng,
cửa hàng, nhân viên và các mặt hàng trong mỗi đơn hàng*/

SELECT o.id AS order_id, 
       c.name AS customer_name, 
       s.name AS store_name, 
       st.name AS staff_name, 
       o.order_date,
       p.name AS product_name,
       i.quantity,
       i.price AS item_price
FROM orders o
INNER JOIN customer c ON o.customer_id = c.id
INNER JOIN store s ON o.store_id = s.id
INNER JOIN staff st ON o.staff_id = st.id
INNER JOIN item i ON o.id = i.order_id
INNER JOIN product p ON i.product_id = p.id;

/* Tổng doanh thu cho mỗi đơn hàng*/

SELECT o.id AS order_id, 
       SUM(i.quantity * i.price) AS revenue
FROM orders o
INNER JOIN item i ON o.id = i.order_id
GROUP BY o.id;

/* 5 sản phẩm bán chạy nhất */

SELECT top 5 p.name AS name,
       SUM(i.quantity) AS quantity
FROM item i
INNER JOIN product p ON i.product_id = p.id
GROUP BY p.name
ORDER BY quantity DESC

/* Giá trị đơn hàng trung bình cho mỗi cửa hàng */

SELECT s.name AS store,
       AVG(i.quantity * i.price) AS average_revenue	
FROM orders o
INNER JOIN store s ON o.store_id = s.id
INNER JOIN item i ON o.id = i.order_id
GROUP BY s.name;

/* Các sản phẩm hết hàng */

SELECT p.id AS ma_san_pham, 
       p.name AS ten_san_pham, 
       st.quantity AS so_luong_trong_kho
FROM product p
INNER JOIN stock st ON p.id = st.product_id
WHERE st.quantity = 0;



