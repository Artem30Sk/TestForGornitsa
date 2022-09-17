select Good_marking,sum(qustore) as total
from view_modelcalc join view_orderitem
on view_modelcalc.Idorderitem=view_orderitem.Idorderitem
join  view_orders
on view_orderitem.Idorder=view_orders.Idorder
where view_orders.Seller_name='Иванов' and view_orderitem.Name='Окно'
group by Good_marking
