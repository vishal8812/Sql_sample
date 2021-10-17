create procedure sp_datatransfer_sample
@id int
as
begin
insert into [project]..newfile
select id,lastname,DOB,age from tblemployeework
where  tblemployeework.id=@id
select id,lastname,DOB,age from tblemployeework
where tblemployeework.id=@id
end


exec sp_newtable_sample 5
