create or replace trigger trg_Check_Credit
before insert or update
on customer
referencing new as new old as old
for each row
declare
Begin
if (:new.credit < 0) then
raise_application_error(-20000, 'Credit muss groessergleich 0 sein');
end if;
if (updating) then
if (:new.credit < 0) then
raise_application_error(-20000, 'Credit muss groessergleich 0 sein');
end if;
end if;
end trg_Check_Credit;