package com.example.nuoiemproject.nguoi_nuoi.repository;

import com.example.nuoiemproject.BaseRepo;
import com.example.nuoiemproject.nguoi_nuoi.model.NguoiNuoi;
import com.example.nuoiemproject.nguoi_nuoi.model.NguoiNuoiDto;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class NguoiNuoiRepository implements INguoiNuoiRepository {
    private static final String SELECT = "SELECT * FROM nguoi_nuoi WHERE trang_thai_xoa = 0";
    private static final String INSERT = "INSERT INTO nguoi_nuoi(ten_nguoi_nuoi, gioi_tinh, ma_tai_khoan, so_dien_thoai, email)\n" +
            "VALUES (?,?,?,?,?)";
    private static final String DELETE = "UPDATE nguoi_nuoi SET trang_thai_xoa =1 WHERE ma_nguoi_nuoi = ?";
    private static final String FIND = "SELECT * FROM nguoi_nuoi WHERE ma_nguoi_nuoi = ?";
    private static final String UPDATE = "UPDATE nguoi_nuoi SET ten_nguoi_nuoi=?, gioi_tinh=?, ma_tai_khoan=?, " +
            "so_dien_thoai=?,email=? WHERE ma_nguoi_nuoi = ?";
    private static final String SEE = "select te.ma_tre_em, te.ten_tre_em, te.gioi_tinh, te.ngay_sinh, te.mo_ta, kv.ten_khu_vuc, ngh.ten_nguoi_giam_ho, ngh.so_dien_thoai, te.hinh_anh\n" +
            "from cam_ket ck\n" +
            "join tre_em te on ck.ma_tre_em = te.ma_tre_em\n" +
            "join nguoi_giam_ho ngh on te.ma_nguoi_giam_ho = ngh.ma_nguoi_giam_ho\n" +
            "join khu_vuc kv on te.ma_khu_vuc = kv.ma_khu_vuc\n" +
            "where ck.ma_nguoi_nuoi = ?;";

    @Override
    public List<NguoiNuoi> hienThiDanhSach() {
        List<NguoiNuoi> danhSach = new ArrayList<>();
        Connection connection = BaseRepo.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int maNguoiNuoi = resultSet.getInt("ma_nguoi_nuoi");
                String tenNguoiNuoi = resultSet.getString("ten_nguoi_nuoi");
                int gioiTinh = resultSet.getInt("gioi_tinh");
                int maTaiKhoan = resultSet.getInt("ma_tai_khoan");
                int soDienThoai = resultSet.getInt("so_dien_thoai");
                String email = resultSet.getString("email");
                danhSach.add(new NguoiNuoi(maNguoiNuoi, tenNguoiNuoi, gioiTinh, maTaiKhoan, soDienThoai, email));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return danhSach;
    }

    @Override
    public NguoiNuoi xemChiTiet(int maNguoiNuoi) {
        Connection connection = BaseRepo.getConnection();
        NguoiNuoi nguoiNuoi = null;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(FIND);
            preparedStatement.setInt(1, maNguoiNuoi);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                String tenNguoiNuoi = resultSet.getString("ten_nguoi_nuoi");
                int gioiTinh = resultSet.getInt("gioi_tinh");
                int maTaiKhoan = resultSet.getInt("ma_tai_khoan");
                int soDienThoai = resultSet.getInt("so_dien_thoai");
                String email = resultSet.getString("email");
                nguoiNuoi = new NguoiNuoi(maNguoiNuoi, tenNguoiNuoi, gioiTinh, maTaiKhoan, soDienThoai, email);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return nguoiNuoi;
    }

    @Override
    public void them(NguoiNuoi nguoiNuoi) {
        Connection connection = BaseRepo.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT);
            preparedStatement.setString(1, nguoiNuoi.getTenNguoiNuoi());
            preparedStatement.setInt(2, nguoiNuoi.getGioiTinh());
            preparedStatement.setInt(3, nguoiNuoi.getMaTaiKhoan());
            preparedStatement.setInt(4, nguoiNuoi.getSoDienThoai());
            preparedStatement.setString(5, nguoiNuoi.getEmail());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void sua(NguoiNuoi nguoiNuoi) {
        Connection connection = BaseRepo.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE);
            preparedStatement.setString(1, nguoiNuoi.getTenNguoiNuoi());
            preparedStatement.setInt(2, nguoiNuoi.getGioiTinh());
            preparedStatement.setInt(3, nguoiNuoi.getMaTaiKhoan());
            preparedStatement.setInt(4, nguoiNuoi.getSoDienThoai());
            preparedStatement.setString(5, nguoiNuoi.getEmail());
            preparedStatement.setInt(6, nguoiNuoi.getMaNguoiNuoi());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void xoa(int maNguoiNuoi) {
        Connection connection = BaseRepo.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE);
            preparedStatement.setInt(1, maNguoiNuoi);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public List<NguoiNuoiDto> xemTreEmNhan(int maNguoiNuoi) {
        List<NguoiNuoiDto> danhSachTre = new ArrayList<>();
        Connection connection = BaseRepo.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SEE);
            preparedStatement.setInt(1,maNguoiNuoi);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int maTreEm = resultSet.getInt("ma_tre_em");
                String tenTreEm = resultSet.getString("ten_tre_em");
                int gioiTinh = resultSet.getInt("gioi_tinh");
                String ngaySinh = resultSet.getString("ngay_sinh");
                String moTa = resultSet.getString("mo_ta");
                String tenKhuVuc = resultSet.getString("ten_khu_vuc");
                String tenNguoiGiamHo = resultSet.getString("ten_nguoi_giam_ho");
                int soDienThoai = resultSet.getInt("so_dien_thoai");
                String hinhAnh = resultSet.getString("hinh_anh");
                danhSachTre.add(new NguoiNuoiDto(maTreEm,tenTreEm,gioiTinh,ngaySinh,moTa,tenKhuVuc,tenNguoiGiamHo,soDienThoai,hinhAnh));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return danhSachTre;
    }
}
