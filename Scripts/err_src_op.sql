use model_zone
go

if exists(select * from sys.tables where name='err_src_op')
	drop table err_src_op

go


CREATE TABLE [err_src_op] (
	[id] int identity(1,1),
    [Flat File Source Error Output Column] varchar(max),
    [ErrorCode] int,
    [ErrorColumn] int,
	audit_id int
)