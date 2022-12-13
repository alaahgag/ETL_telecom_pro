use model_zone
go

if exists(select * from sys.tables where name='err_dst_op')
	drop table err_dst_op

go


CREATE TABLE [err_dst_op] (
    [id] int,
    [imsi] varchar(9),
    [imei] varchar(14),
    [cell] int,
    [lac] int,
    [event_type] varchar(1),
    [event_ts] datetime,
	[tac] varchar(8),
	[snr] varchar(6),
    [ErrorCode] int,
    [ErrorColumn] int
)
go