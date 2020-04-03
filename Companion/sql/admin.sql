-- DataTable
-- 상품이름, 상품재고, 상품가격
-- sum(주문상세수량) where 상품ID=상품ID,
-- sum(주문상세수량) where 상품ID=상품ID AND 주문일 Like concat(#{month},'%')
select * from `order_detail`;
select * from `order`;
select * from `product`;
select * from `` where order_date='2020-04%';