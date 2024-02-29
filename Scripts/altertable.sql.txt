alter table supplier drop column supplier_location;
ALTER TABLE supplier ADD supplier_street varchar;
ALTER TABLE supplier ADD supplier_city varchar;
ALTER TABLE supplier ADD supplier_state varchar;
ALTER TABLE supplier ADD supplier_zip varchar;

alter table branch drop column branch_location;
ALTER TABLE branch ADD branch_street varchar;
ALTER TABLE branch ADD branch_city varchar;
ALTER TABLE branch ADD branch_state varchar;
ALTER TABLE branch ADD branch_zip varchar;


alter table supplier alter column supplier_number type varchar(100);   


