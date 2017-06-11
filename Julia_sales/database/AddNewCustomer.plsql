create procedure proc_create_customer( customer_id out number,
                                       first_name in varchar2,
                                       credit in out number)
                                       
is 

begin

select seq_customers_Id.next_val into customer_id from dual

if (credit is null) then
select 100 into credit from dual
end if

insert values into
customer(
customer_id, first_name, credit)
end proc_create_customer;