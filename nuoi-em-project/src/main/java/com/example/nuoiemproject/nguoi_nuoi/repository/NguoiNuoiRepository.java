package com.example.nuoiemproject.nguoi_nuoi.repository;

import com.example.nuoiemproject.BaseRepo;
import com.example.nuoiemproject.nguoi_nuoi.model.NguoiNuoi;

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
}
