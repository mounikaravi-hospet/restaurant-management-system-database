create table supplier(supplier_id varchar primary key, supplier_name varchar not null, supplier_number varchar, supplier_location varchar);
create table manager(manager_id varchar primary key, manager_name varchar not null);
create table branch(branch_id varchar primary key, branch_location varchar, supplier_id varchar, manager_id varchar,
					foreign key(supplier_id) references supplier(supplier_id), foreign key(manager_id) references manager(manager_id));
create table chef(chef_id varchar primary key, chef_name varchar not null, specialty varchar);
create table waiter(waiter_id varchar primary key, waiter_name varchar not null);
create table customer(customer_id varchar primary key, customer_name varchar not null, customer_table numeric, customer_number numeric,
					  dining_date Date, dining_time time, has_reservation varchar, check (customer_number > 0));
create table manager_manages_chef(manager_id varchar, chef_id varchar, foreign key (manager_id) references manager(manager_id), 
								  foreign key (chef_id) references chef(chef_id), primary key(manager_id, chef_id));
create table manager_manages_waiter(manager_id varchar, waiter_id varchar, primary key(manager_id, waiter_id),
								   foreign key (manager_id) references manager(manager_id), foreign key (waiter_id) references waiter(waiter_id));
create table meal(meal_id varchar primary key, meal_name varchar not null, cuisine varchar, meal_price numeric, check (meal_price > 0));
create table makes(chef_id varchar, meal_id varchar, foreign key(chef_id) 
				   references chef(chef_id), foreign key(meal_id) references meal(meal_id), primary key(chef_id, meal_id));;
create table orders(meal_id varchar, customer_id varchar, quantity_ordered numeric, primary key(meal_id, customer_id),
				   foreign key (meal_id) references meal(meal_id), foreign key (customer_id) references customer(customer_id), 
					check (quantity_ordered>0));
create table attends_to(waiter_id varchar, customer_id varchar, primary key(waiter_id, customer_id),
					   foreign key(waiter_id) references waiter(waiter_id), foreign key (customer_id) references customer(customer_id));
create table bill(bill_id varchar primary key, price numeric not null, payment_method varchar not null, customer_id varchar,
				 foreign key(customer_id) references customer(customer_id), check (price >= 0));