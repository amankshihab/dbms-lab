insert into supplier_details values (&sup_code, &sup_name, &addr, &state);

insert into item_details values (&item_code, &item_name, &item_rate, &item_tax_per, &item_type);

    insert into purchase_details values (&sup_code, &item_code, &item_qty, &item_rate, &item_tax_per, &sup_date);

select sup_code, max((item_rate*item_qty)+(item_qty*item_tax_per)) as max_purchase_cost from purchase_details group by sup_code order by sup_code DESC;

select sup_code, sup_date, item_qty*(item_rate + item_tax_per) as cost from purchase_details where item_qty*(item_rate + item_tax_per) = (select max(item_qty*(item_rate + item_tax_per)) from purchase_details);

select s.sup_name from purchase_details p,supplier_details s where p.sup_code=s.sup_code and item_qty*(item_rate+item_tax_per) > 200000;

select p.sup_code, s.sup_name, p.item_code, i.item_name, p.item_qty*(p.item_rate + p.item_tax_per) as cost from purchase_details p, supplier_details s, item_details i where p.sup_code=s.sup_code and p.item_code=i.item_code;


alter table purchase_details add purchase_code varchar(5);

select p.sup_code, s.sup_name, p.item_code, 

update purchase_details set purchase_code='PUR05' where item_rate =16500;

select p.sup_code, s.sup_name, p.item_code, i.item_name, p.item_qty*(i.item_rate+i.item_tax_per) as cost from purchase_details p, item_details i, supplier_details s where s.sup_code=p.sup_code and i.item_code=p.item_code;

select p.purchase_code, p.item_code, i.item_name, p.item_qty*(p.item_rate+p.item_tax_per) as cost, (p.item_qty*(i.item_rate+i.item_tax_per))-(p.item_qty*(p.item_rate+p.item_tax_per)) as diff from purchase_details p, item_details i, supplier_details s where p.sup_code=s.sup_code and p.item_code=i.item_code;

select p.purchase_code, p.item_code, i.item_name, i.item_tax_per-p.item_tax_per as taxdiff from item_details i,purchase_details p where i.item_code=p.item_code and p.item_tax_per < i.item_tax_per;
select p.purchase_code,p.item_code,i.item_name,(p.item_rate+p.item_tax_per)*p.item_qty as total,((p.item_rate+p.item_tax_per)*p.item_qty - (i.item_rate+i.item_tax_per)*p.item_qty)) as diff from purchase_details p,item_details i where i.item_code = p.item_code;