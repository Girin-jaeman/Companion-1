-- DataTable
-- 상품이름, 상품재고, 상품가격
-- sum(주문상세수량) where 상품ID=상품ID,
-- sum(주문상세수량) where 상품ID=상품ID AND 주문일 Like concat(#{month},'%')
select * from `order_detail`;
select * from `order`;
select * from `product`;
select product_id, product_name, product_price, product_stock, (select sum(order_detail_quantity) from `order_detail` o_d where o_d.product_id=p.product_id ) as total_cumulative_sales, (select sum(order_detail_quantity) from `order_detail` o_d, `order` o where o_d.product_id=p.product_id AND o_d.order_id=o.order_id AND o.order_date like '2020-03%') as month_cumulative_sales from `product` p;

select sum(o_d.order_detail_quantity) from `order_detail` o_d, `order` o where o_d.order_id=o.order_id AND order_date like '2020-03%';