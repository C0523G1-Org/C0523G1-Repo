create database nuoi_em_db;

use nuoi_em_db;

create table tai_khoan(
ma_tai_khoan int primary key auto_increment,
ten_tai_khoan varchar(100),
mat_khau varchar(100)
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
foreign key (ma_tai_khoan) references tai_khoan (ma_tai_khoan)
);

create table nguoi_giam_ho(
ma_nguoi_giam_ho int primary key auto_increment,
ten_nguoi_giam_ho varchar (100),
gioi_tinh int,
ma_khu_vuc int,
so_dien_thoai int,
foreign key (ma_khu_vuc) references khu_vuc (ma_khu_vuc)
);

create table tre_em (
ma_tre_em int primary key auto_increment,
ten_tre_em varchar (100),
gioi_tinh int,
ngay_sinh date,
trang_thai_nhan_nuoi int default 0,
mo_ta varchar(250),
ma_khu_vuc int,
ma_nguoi_giam_ho int,
is_delete int default 0,
foreign key (ma_khu_vuc) references khu_vuc (ma_khu_vuc), 
foreign key (ma_nguoi_giam_ho) references nguoi_giam_ho (ma_nguoi_giam_ho)
);

create table hinh_anh(
ma_hinh_anh int primary key auto_increment,
nguon_hinh_anh varchar(100),
ma_tre_em int,
foreign key (ma_tre_em) references tre_em (ma_tre_em)
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
("Nguyễn Văn Chính", 1, 0905549590, 1),
("Nguyễn Văn Nam", 1, 0905101596, 2),
("Hoàng Anh Kính", 1, 0345735733, 3),
("Võ Hùng Văn", 1, 0987494110, 4),
("Nguyễn Trần Kim My", 0, 0933316721, 5),
("Trần Thị Sáu", 0, 0352945630, 6),
("Nguyễn Lê Hùng", 1, 0962003727,7),
("Nguyễn Lê Kim Linh", 0, 0363001164,8),
("Trần Phi Hùng", 1, 0584168700,9),
("Nguyễn Thị Nhung", 0, 0399342064,10),
("Hoàng Kim Tuyến", 0, 0905525284,11),
("Trần An Thân", 1, 0905104761,12),
("Lê Hoàng Hải", 1, 0911200088,13),
("Nguyễn Viên Vy", 0, 0945493620,14);


INSERT INTO tre_em (ten_tre_em, gioi_tinh, ngay_sinh, mo_ta, ma_khu_vuc, ma_nguoi_giam_ho) VALUES
('Giàng Thị Hoa', 0, '2010-02-13', 'Khó khăn, mồ côi', 1, 1),
('Vòng Thị Diễm Thương', 0, '2010-02-13', 'Khó khăn, mồ côi', 1, 2),
('Vòng Thị Nhung', 0, '2010-02-13', 'Khó khăn, mồ côi', 1, 3),
('Giàng Thị Nòng', 0, '2010-02-13', 'Khó khăn, mồ côi', 1, 3),
('Giàng Thị Mặc', 0, '2010-02-13', 'Khó khăn, mồ côi', 1, 2),
('Giàng A Lưới', 1, '2010-02-13', 'Khó khăn, mồ côi', 1, 1),
('Giàng Út', 0, '2010-02-13', 'Khó khăn, mồ côi', 1, 4),
('Giàng Văn Nhật', 1, '2010-02-13', 'Khó khăn, mồ côi', 1, 5),
('Giàng A Tuân', 1, '2010-02-13', 'Khó khăn, mồ côi', 1, 5),
('Giàng Kim Thi', 0, '2010-02-13', 'Khó khăn, mồ côi', 1, 9),
('Giàng Thị Sáu', 0, '2010-02-13', 'Khó khăn, mồ côi', 1, 9),
('Giàng A Tùng', 1, '2010-02-13', 'Khó khăn, mồ côi', 1, 8),
('Giàng Thị Gầu', 0, '2010-02-13', 'Khó khăn, mồ côi', 1, 6),
('Giàng Thị Vui', 0, '2010-02-13', 'Khó khăn, mồ côi', 1, 7),
('Giàng Mạnh Tuấn', 1, '2010-02-13', 'Khó khăn, mồ côi', 1, 10),
('Vòng Thị Vi', 0, '2010-02-13', 'Khó khăn, mồ côi', 1, 11),
('Vòng A Dia', 1, '2010-02-13', 'Khó khăn, mồ côi', 1, 11),
('Vòng Thị Hương', 0, '2010-02-13', 'Khó khăn, mồ côi', 1, 1),
('Vòng A Lương', 1, '2010-02-13', 'Khó khăn, mồ côi', 1, 1),
('Vòng Thị Ngọc Linh', 0, '2010-02-13', 'Khó khăn, mồ côi', 1, 1);

select ma_tre_em, ten_tre_em, gioi_tinh, ngay_sinh, trang_thai_nhan_nuoi
from tre_em