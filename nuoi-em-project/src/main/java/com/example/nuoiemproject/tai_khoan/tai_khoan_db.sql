use nuoi_em_db;
alter table tai_khoan
add `admin` boolean;

set sql_safe_updates = 0;
update tai_khoan
set `admin` = false;
set sql_safe_updates = 1;

delimiter //
create procedure hien_thi_danh_sach()
begin
select * from tai_khoan;
end //
delimiter ;

alter table tai_khoan
add trang_thai_xoa boolean default false;


