create database nuoi_em_db;

use nuoi_em_db;

create table tai_khoan(
ma_tai_khoan int primary key auto_increment,
ten_tai_khoan varchar(100),
mat_khau varchar(100),
trang_thai_xoa boolean default false,
`admin` boolean default false
);


create table khu_vuc(
ma_khu_vuc int primary key auto_increment,
ten_khu_vuc varchar(100)
);


create table nguoi_nuoi(
ma_nguoi_nuoi int primary key auto_increment,
ten_nguoi_nuoi varchar(100),
gioi_tinh int,
ma_tai_khoan int,
so_dien_thoai int,
email varchar(100),
foreign key (ma_tai_khoan) references tai_khoan (ma_tai_khoan)
);

create table nguoi_giam_ho(
ma_nguoi_giam_ho int primary key auto_increment,
ten_nguoi_giam_ho varchar (100),
gioi_tinh int,
ma_khu_vuc int,
so_dien_thoai varchar(45),
foreign key (ma_khu_vuc) references khu_vuc (ma_khu_vuc)
);
ALTER TABLE nguoi_giam_ho
ADD trang_thai_xoa bit(1) default 0;

create table tre_em (
ma_tre_em int primary key auto_increment,
ten_tre_em varchar (100),
gioi_tinh int,
ngay_sinh date,
trang_thai_nhan_nuoi int default 0,
mo_ta varchar(250),
ma_khu_vuc int,
ma_nguoi_giam_ho int,
hinh_anh varchar(250),
trang_thai_xoa int default 0,
foreign key (ma_khu_vuc) references khu_vuc (ma_khu_vuc), 
foreign key (ma_nguoi_giam_ho) references nguoi_giam_ho (ma_nguoi_giam_ho)
);


create table cam_ket(
ma_cam_ket int primary key auto_increment,
so_tien int,
ngay_nhan_nuoi date,
trang_thai int,
ma_tre_em int,
ma_nguoi_nuoi int,
foreign key (ma_tre_em) references tre_em (ma_tre_em),
foreign key (ma_nguoi_nuoi) references nguoi_nuoi (ma_nguoi_nuoi)
);

create table lich_su_tien_thu(
ma_giao_dich int primary key auto_increment,
ngay_giao_dich date,
noi_dung_giao_dich varchar(100),
so_tien int,
ma_cam_ket int,
foreign key (ma_cam_ket) references cam_ket(ma_cam_ket)
);

create table lich_su_tien_chi(
ma_tien_chi int primary key auto_increment,
ngay_giao_dich date,
noi_dung_giao_dich varchar(100),
so_tien int,
ma_nguoi_giam_ho int,
foreign key (ma_nguoi_giam_ho) references nguoi_giam_ho(ma_nguoi_giam_ho));

INSERT INTO khu_vuc (ten_khu_vuc) VALUES
("Hà Giang"),
("Cao Bằng"),
("Lào Cai"),
("Bắc Kạn"),
("Lạng Sơn"),
("Tuyên Quang"),
("Yên Bái"),
("Thái Nguyên"),
("Phú Thọ"),
("Bắc Giang"),
("Lai Châu"),
("Điện Biên"),
("Sơn La"),
("Hòa Bình");

INSERT INTO nguoi_giam_ho (ten_nguoi_giam_ho, gioi_tinh,so_dien_thoai, ma_khu_vuc) VALUES
("Nguyễn Văn Chính", 1, "0905549590", 1),
("Nguyễn Văn Nam", 1, "0905101596", 2),
("Hoàng Anh Kính", 1, "0345735733", 3),
("Võ Hùng Văn", 1, "0987494110", 4),
("Nguyễn Trần Kim My", 0, "0933316721", 5),
("Trần Thị Sáu", 0, "0352945630", 6),
("Nguyễn Lê Hùng", 1, "0962003727",7),
("Nguyễn Lê Kim Linh", 0, "0363001164",8),
("Trần Phi Hùng", 1, "0584168700",9),
("Nguyễn Thị Nhung", 0, "0399342064",10),
("Hoàng Kim Tuyến", 0, "0905525284",11),
("Trần An Thân", 1, "0905104761",12),
("Lê Hoàng Hải", 1, "0911200088",13),
("Nguyễn Viên Vy", 0, "0945493620",14);

INSERT INTO tre_em (ten_tre_em, gioi_tinh, ngay_sinh, mo_ta, ma_khu_vuc, ma_nguoi_giam_ho, hinh_anh) VALUES
('Giàng Thị Hoa', 0, '2010-02-13', 'hộ nghèo, cha mất sớm, thiếu kinh phí đến trường', 1, 1, "/images/tre-em/tre_em1.png"),
('Vòng Thị Diễm Thương', 0, '2010-02-13', 'mồ côi, thiếu kinh phí đến trường', 1, 2, "/images/tre-em/tre_em1.png"),
('Vòng Thị Nhung', 0, '2010-02-13', 'mồ côi, thiếu kinh phí đến trường', 1, 3, "/images/tre-em/tre_em1.png"),
('Giàng Thị Nòng', 0, '2010-02-13', 'hộ nghèo, ba mẹ mất khả năng lao động, điều kiện sống kém', 1, 3, "/images/tre-em/tre_em1.png"),
('Giàng Thị Mặc', 0, '2010-02-13', 'mồ côi, thiếu kinh phí đến trường', 1, 2, "/images/tre-em/tre_em1.png"),
('Giàng A Lưới', 1, '2010-02-13', 'mồ côi, thiếu kinh phí đến trường', 1, 1, "/images/tre-em/tre_em1.png"),
('Giàng Út', 0, '2010-02-13', 'mồ côi, thiếu kinh phí đến trường', 1, 4, "/images/tre-em/tre_em1.png"),
('Giàng Văn Nhật', 1, '2010-02-13', 'mồ côi, thiếu kinh phí đến trường', 1, 5, "/images/tre-em/tre_em1.png"),
('Giàng A Tuân', 1, '2010-02-13', 'hộ nghèo, ba mẹ mất khả năng lao động, điều kiện sống kém', 1, 5, "/images/tre-em/tre_em1.png"),
('Giàng Kim Thi', 0, '2010-02-13', 'vùng sâu vùng xa, con đông, không có nước sạch và điện', 1, 9, "/images/tre-em/tre_em1.png"),
('Giàng Thị Sáu', 0, '2010-02-13', 'mồ côi, thiếu kinh phí đến trường', 1, 9, "/images/tre-em/tre_em1.png"),
('Giàng A Tùng', 1, '2010-02-13', 'mồ côi, thiếu kinh phí đến trường', 1, 8, "/images/tre-em/tre_em1.png"),
('Giàng Thị Gầu', 0, '2010-02-13', 'mồ côi, thiếu kinh phí đến trường', 1, 6, "/images/tre-em/tre_em1.png"),
('Giàng Thị Vui', 0, '2010-02-13', 'mồ côi, thiếu kinh phí đến trường', 1, 7, "/images/tre-em/tre_em1.png"),
('Giàng Mạnh Tuấn', 1, '2010-02-13', 'hộ nghèo, cha mất sớm, thiếu kinh phí đến trường', 1, 10, "/images/tre-em/tre_em1.png"),
('Vòng Thị Vi', 0, '2010-02-13', 'vùng sâu vùng xa, con đông, không có nước sạch và điện', 1, 11, "/images/tre-em/tre_em1.png"),
('Vòng A Dia', 1, '2010-02-13', 'hộ nghèo, ba mẹ mất khả năng lao động, điều kiện sống kém', 1, 11, "/images/tre-em/tre_em1.png"),
('Vòng Thị Hương', 0, '2010-02-13', 'hộ nghèo, ba mẹ mất khả năng lao động, điều kiện sống kém', 1, 1, "/images/tre-em/tre_em1.png"),
('Vòng A Lương', 1, '2010-02-13', 'vùng sâu vùng xa, con đông, không có nước sạch và điện', 1, 1, "/images/tre-em/tre_em1.png"),
('Vòng Thị Ngọc Linh', 0, '2010-02-13', 'vùng sâu vùng xa, con đông, không có nước sạch và điện', 1, 1, "/images/tre-em/tre_em1.png");

INSERT INTO tai_khoan (ten_tai_khoan, mat_khau)
VALUES
("huongnt","zyxwvu"),
("ductv","defghi"),
("maint","plmnko"),
("tuanpv","ihgfed"),
("lannt","cbazyx"),
("namhv","uvwxyz"),
("anvt","klmnop"),
("hungdv","rstuvw"),
("ngatt","ghijkl"),
("longnv","vwxyza");

INSERT INTO nguoi_nuoi(ten_nguoi_nuoi, gioi_tinh, ma_tai_khoan, so_dien_thoai, email)
VALUES 
('Nguyễn Thị Hương', 0, 1, 123456789, 'huongnt@gmail.com'),
('Trần Văn Đức', 1, 2, 987654321, 'ductv@gmail.com'),
('Lê Thị Mai', 0, 3, 456789123, 'mailt@gmail.com'),
('Phạm Văn Tuấn', 1, 4, 456789801, 'tuanpv@gmail.com'),
('Ngô Thị Lan', 0, 5, 321654987, 'lannt@gmail.com'),
('Hoàng Văn Nam', 1, 6, 654987321,'namhv@gmail.com'),
('Vũ Thị An', 0, 7, 246813579, 'anvt@gmail.com'),
('Đinh Văn Hùng', 1, 8, 135792468,'hungdv@gmail.com'),
('Trần Thị Nga', 0, 9, 987123654,'ngatt@gmail.com'),
('Nguyễn Văn Long', 1, 10, 369852147,'hulongnv@gmail.com');

INSERT INTO cam_ket(so_tien,ngay_nhan_nuoi ,trang_thai ,ma_tre_em ,ma_nguoi_nuoi)
VALUES 
(500000,'2023-08-28',1,1,1),
(1000000,'2023-08-28',1,2,2),
(1500000,'2023-08-28',1,3,3),
(500000,'2023-08-28',1,4,4),
(2000000,'2023-08-28',1,5,5),
(500000,'2023-08-28',1,6,6),
(3500000,'2023-08-28',1,7,7);
alter table cam_ket
add trang_thai_xoa bit(1) default 0;


insert into lich_su_tien_thu(ngay_giao_dich, noi_dung_giao_dich, so_tien, ma_cam_ket)
values
('2023-09-01', "NGUYEN THI HUONG ct NE1",500000,1),
('2023-09-01', "TRAN VAN DUC ct NE2",500000,2),
('2023-09-01', "le thi mai ct NE3",500000,3),
('2023-10-01', "NGUYEN THI HUONG ct NE1",500000,1),
('2023-10-01', "le thi mai ct NE3",500000,3);

insert into lich_su_tien_chi(ngay_giao_dich, noi_dung_giao_dich, so_tien, ma_nguoi_giam_ho)
values
('2023-09-10', "CHI TIEN NE1",500000,1),
('2023-09-10', "CHI TIEN NE2",500000,2),
('2023-09-10', "CHI TIEN NE3",500000,3);
-- tạo view lịch sử gd gồm tiền thu và chi
create view lich_su_giao_dich as (select ngay_giao_dich, noi_dung_giao_dich, so_tien
from lich_su_tien_thu
union
select ngay_giao_dich, noi_dung_giao_dich, so_tien
from lich_su_tien_chi);
select * from lich_su_giao_dich
where month(ngay_giao_dich) = 9 and year(ngay_giao_dich) = 2023
order by date(ngay_giao_dich);


-- select te.ten_tre_em, te.gioi_tinh, te.ngay_sinh, te.trang_thai_nhan_nuoi, te.mo_ta, kv.ten_khu_vuc, ngh.ten_nguoi_giam_ho, te.hinh_anh
-- from tre_em te
-- join khu_vuc kv on kv.ma_khu_vuc = te.ma_khu_vuc
-- join nguoi_giam_ho ngh on ngh.ma_nguoi_giam_ho = te.ma_nguoi_giam_ho
-- where te.is_delete = 0
-- order by te.ma_tre_em;

-- 1 NGƯỜI NUÔI BAO NHIU TRẺ
-- select te.ma_tre_em, te.ten_tre_em, te.gioi_tinh, te.ngay_sinh, te.mo_ta, kv.ten_khu_vuc, ngh.ten_nguoi_giam_ho, ngh.so_dien_thoai, te.hinh_anh
-- from cam_ket ck
-- join tre_em te on ck.ma_tre_em = te.ma_tre_em
-- join nguoi_giam_ho ngh on te.ma_nguoi_giam_ho = ngh.ma_nguoi_giam_ho
-- join khu_vuc kv on te.ma_khu_vuc = kv.ma_khu_vuc
-- where te.is_delete = 0 and ck.ma_nguoi_nuoi = 1;

delimiter //
create procedure them_moi(ten_tai_khoan_moi varchar(100),
mat_khau_moi varchar(100),
ten_nguoi_nuoi_moi varchar(100),
gioi_tinh_moi int,
ma_tai_khoan_moi int,
so_dien_thoai_moi int,
email_moi varchar(100)
)
begin
declare ma_tai_khoan_moi int;
    set ma_tai_khoan_moi = (select MAX(ma_nguoi_nuoi) + 1 from nguoi_nuoi);
insert into tai_khoan(ten_tai_khoan, mat_khau)
values
(ten_tai_khoan_moi, mat_khau_moi);
insert into nguoi_nuoi(ten_nguoi_nuoi,
gioi_tinh ,
ma_tai_khoan ,
so_dien_thoai ,
email
)
values
(ten_nguoi_nuoi_moi,
gioi_tinh_moi,
ma_tai_khoan_moi,
so_dien_thoai_moi,
email_moi);
end //



