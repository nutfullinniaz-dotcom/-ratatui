-- этап 4
SELECT 
    u.id, 
    CONCAT(u.surname, ' ', u.first_name, ' ', u.patronymic) AS full_name, 
    r.name AS role
FROM users u
JOIN roles r ON r.id = u.roles_id
WHERE u.login = '94d5ous@gmail.com' AND u.password = 'uzWC67'; 


-- этап 5
SELECT 
    p.id, 
    p.sku AS article, 
    sh.name AS name, 
    p.unit_of_measurement AS unit, 
    p.price, 
    d.discount, 
    p.quantity_in_stock AS stock_qty, 
    p.product_description AS description, 
    p.Фото AS photo,
    c.name AS category, 
    m.name AS manufacturer, 
    s.name AS supplier
FROM products p
JOIN categories c ON c.id = p.categories_id
JOIN manufacturers m ON m.id = p.manufacturers_id
JOIN suppliers2 s ON s.id = p.suppliers_id
JOIN discount d ON d.id = p.discount_id
JOIN shoes sh ON sh.id = p.shoes_id;  


-- этап 6
SELECT 
    p.id, 
    p.sku AS article, 
    sh.name AS name, 
    p.unit_of_measurement AS unit, 
    p.price, 
    d.discount, 
    p.quantity_in_stock AS stock_qty, 
    p.product_description AS description, 
    p.Фото AS photo,
    c.name AS category, 
    m.name AS manufacturer, 
    s.name AS supplier
FROM products p
JOIN categories c ON c.id = p.categories_id
JOIN manufacturers m ON m.id = p.manufacturers_id
JOIN suppliers2 s ON s.id = p.suppliers_id
JOIN discount d ON d.id = p.discount_id
JOIN shoes sh ON sh.id = p.shoes_id
WHERE sh.name LIKE CONCAT('%', 'Туфли', '%')  
  AND p.suppliers_id = 1                      
ORDER BY p.quantity_in_stock DESC;            


-- этап 7
-- Справочники для выпадающих списков в форме
SELECT id, name FROM categories;
SELECT id, name FROM manufacturers;
SELECT id, name FROM suppliers2;
SELECT id, name FROM shoes;
SELECT id, discount FROM discount;


-- Добавление товара
INSERT INTO products 
  (sku, shoes_id, unit_of_measurement, price, suppliers_id, manufacturers_id, categories_id, discount_id, quantity_in_stock, product_description, `Фото`) 
VALUES 
  ('TEST-777', 1, 'шт.', 3500.00, 1, 1, 1, 1, 5, 'Тестовое описание для проверки', 'test_photo.jpg');
  
  
-- Открыть товар для редактирования - заполнить все поля сразу
  SELECT * FROM products WHERE id = 1;
  
  
-- Сохранить изменения  
  UPDATE products 
SET 
  sku = 'TEST-777-UPD', 
  shoes_id = 1, 
  unit_of_measurement = 'пара', 
  price = 4000.00, 
  suppliers_id = 1, 
  manufacturers_id = 1, 
  categories_id = 1, 
  discount_id = 2, 
  quantity_in_stock = 10, 
  product_description = 'Обновленное описание после редактирования', 
  `Фото` = 'updated_photo.jpg'
WHERE id = 1; 


-- этап 8
SELECT COUNT(*) AS used_in_orders FROM prodorder WHERE product_id = 1;
DELETE FROM products WHERE id = 1