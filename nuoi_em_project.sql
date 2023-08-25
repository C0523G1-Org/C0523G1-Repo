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


create table so_dien_thoai(
ma_so_dien_thoai int primary key auto_increment,
so_dien_thoai varchar (20)
);

create table nguoi_nuoi(
ma_nguoi_nuoi int primary key auto_increment,
ten_nguoi_nuoi varchar(100),
gioi_tinh int,
ma_tai_khoan int,
ma_so_dien_thoai int,
foreign key (ma_so_dien_thoai) references so_dien_thoai (ma_so_dien_thoai),
foreign key (ma_tai_khoan) references tai_khoan (ma_tai_khoan)
);

create table nguoi_giam_ho(
ma_nguoi_giam_ho int primary key auto_increment,
ten_nguoi_giam_ho varchar (100),
gioi_tinh int,
ma_khu_vuc int,
ma_so_dien_thoai int,
foreign key (ma_so_dien_thoai) references so_dien_thoai (ma_so_dien_thoai),
foreign key (ma_khu_vuc) references khu_vuc (ma_khu_vuc)
);

create table tre_em (
ma_tre_em int primary key auto_increment,
ten_tre_em varchar (100),
gioi_tinh int,
ngay_sinh date,
trang_thai_nhan_nuoi int,
mo_ta varchar(250),
ma_khu_vuc int,
ma_nguoi_giam_ho int,
is_delete int default 0,
foreign key (ma_khu_vuc) references khu_vuc (ma_khu_vuc),
foreign key (ma_nguoi_giam_ho) references nguoi_giam_ho (ma_nguoi_giam_ho)
);

create table hinh_anh(
ma_hinh_anh int primary key auto_increment,
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

INSERT INTO customers (customer_id,customer_name, customer_id_card, customer_gender, customer_email, customer_phone, customer_address,customer_type_id,is_delete,account_id) VALUES
(1,'Nguyễn Văn Nguyên', '1234567890', 1, 'nguyennguyenhong40@gmail.com', '0988009990', '123 Đường ABC, Thành phố',1,0,1),
(2,'Trần Thị Minh', '9876543210', 0, 'zhangming8443@gmail.com', '0122454445', '456 Đường XYZ, Thị trấn',1,0,2),
(3,	"Nguyễn Văn Minh","456231786",1,"ming8443@gmail.com",'0901234121',"295 Nguyễn Tất Thành, Đà Nẵng",1,0,3),
(4,	"Văn Tấn Lợi","654231234",0,"vantanloi7585@gmail.com",'0934212314',"22 Yên Bái, Đà Nẵng",1,0,4),
(5,	"Đình Thôi","999231723",0,"Dinhthoi2411@gmail.com",'0412352315',"K234/11 Điện Biên Phủ, Gia Lai",2,0,5),
(6,	"Nguyễn Đức Trung","123231365",1,"trung@gmail.com",'0374443232',"77 Hoàng Diệu, Quảng Trị",1,0,6),
(7,	"Bùi Hữu Hải","454363232",1,"buihuuhai318@gmail.com",'0902341231',"43 Yên Bái, Đà Nẵng",1,0,7),
(8,	"Thiện Hoàng","964542311",0,"thien97.night1@gmail.com",'0978653213',"294 Nguyễn Tất Thành, Đà Nẵng",2,0,8),
(9,	"Nguyễn An","534323231",0,"annguyen@gmail.com",'0941234553',"4 Nguyễn Chí Thanh, Huế",2,0,9),
(10,"Trần Thị Yến","234414123",1,"thiyen@gmail.com",'0642123111',"111 Hùng Vương, Hà Nội",2,0,10),
(11,"Tòng Phát","256781231",1,"phatphat@gmail.com",'0245144444',"213 Hàm Nghi, Đà Nẵng",1,0,11),
(12,"Nguyễn An Nghi","755434343",1,"annghi20@gmail.com",'0988767111',"6 Hoà Khánh, Đồng Nai",1,0,12),
(13,"Nguyễn Đông Hà","301545555",0,"donghanguyen@gmail.com","0945555455","23 Nguyễn Hoàng, Đà Nẵng",1,0,13),
(14,"Phạm Mộc Châu","205335555",0,"mocchau@gmail.com","0944444444","K77/14 Thái Phiên, Đà Nẵng",1,0,14),
(15,"Trường Dũng","205333333",1,"dung1107@gmail.com","0935555555","13 Lý Thái Tổ, Đà Nẵng",2,0,15);

