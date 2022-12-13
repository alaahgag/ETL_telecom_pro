use model_zone
go

--drop and create the destination table
if exists(select * from sys.tables where name='cust_loc_dtl')
	drop table cust_loc_dtl

go


create table cust_loc_dtl(
id int not null identity (1,1),
transaction_id int not null,
imsi varchar(9) not null,
subscriber_id int,
tac varchar(8) not null,
snr varchar(8) not null,
imei varchar(14) null,
cell int not null,
lac int not null,
event_type varchar(2) null,
event_ts datetime not null,
audit_id int not null default (-1),
constraint pk_cust_loc_dtl_id primary key (id)
);

alter table cust_loc_dtl alter column tac varchar(8) null;
alter table cust_loc_dtl alter column snr varchar(8) null;