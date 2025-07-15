# Write your MySQL query statement below
Select s.name
From SalesPerson as s
Where s.sales_id not in (
        Select o.sales_id
        From Orders as o
            Left Join Company as c on o.com_id = c.com_id
        Where c.name = 'RED'
    )