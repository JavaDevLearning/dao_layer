select product_name
from netology.orders
         join netology.customers ON netology.orders.customers_id = netology.customers.id
where name ILIKE (:name);