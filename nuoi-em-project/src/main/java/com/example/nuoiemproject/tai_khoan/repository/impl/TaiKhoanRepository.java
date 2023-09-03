package com.example.nuoiemproject.tai_khoan.repository.impl;

import com.example.nuoiemproject.BaseRepository;
import com.example.nuoiemproject.tai_khoan.model.TaiKhoan;
import com.example.nuoiemproject.tai_khoan.repository.ITaiKhoanRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TaiKhoanRepository extends BaseRepository implements ITaiKhoanRepository {
    private static final String HIEN_THI_DANH_SACH = "select tai_khoan.ma_tai_khoan, tai_khoan.ten_tai_khoan," +
            "tai_khoan.mat_khau, tai_khoan.`admin`" +
            "from tai_khoan" +
            "where trang_thai_xoa = false;";
    private static final String TIM_TAI_KHOAN = "select tai_khoan.ma_tai_khoan, tai_khoan.ten_tai_khoan," +
            "tai_khoan.mat_khau " +
            "from tai_khoan" +
            "where trang_thai_xoa = false and tai_khoan.ma_tai_khoan = ? ;";

    private static final String SUA_TAI_KHOAN = "update tai_khoan" +
            "set mat_khau = ?" +
            "where id = ?;";
    private static final String THEM_TAI_KHOAN = "insert into tai_khoan(ten_tai_khoan, mat_khau, `admin`)" +
            "value (?, ?);";

    private static final String XOA_TAI_KHOAN = "update tai_khoan set trang_thai_xoa = true where id = ?;";

    @Override
    public List<TaiKhoan> hienThiDanhSach() {
        List<TaiKhoan> danhSachTaiKhoan = new ArrayList<>();
        Connection connection = getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(HIEN_THI_DANH_SACH);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int ma_tai_khoan = resultSet.getInt("ma_tai_khoan");
                String ten_tai_khoan = resultSet.getString("ten_tai_khoan");
                String mat_khau = resultSet.getString("mat_khau");
                Boolean admin = resultSet.getBoolean("admin");
                danhSachTaiKhoan.add(new TaiKhoan(ma_tai_khoan, ten_tai_khoan, mat_khau, admin));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return danhSachTaiKhoan;
    }

    @Override
    public void themTaiKhoan(TaiKhoan taiKhoan) {
        Connection connection = getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(THEM_TAI_KHOAN);
            preparedStatement.setString(1, taiKhoan.getTenTaiKhoan());
            preparedStatement.setString(2, taiKhoan.getMatKhau());
            preparedStatement.setBoolean(3,false);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void suaTaiKhoan(TaiKhoan taiKhoan) {
        Connection connection = getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SUA_TAI_KHOAN);
            preparedStatement.setString(1, taiKhoan.getMatKhau());
            preparedStatement.setInt(2, taiKhoan.getMaTaiKhoan());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    @Override
    public void xoaTaiKhoan(int id) {
        Connection connection = getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(XOA_TAI_KHOAN);
            preparedStatement.setInt(1, id);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public TaiKhoan timTaiKhoan(int id) {
        TaiKhoan taiKhoan = null;
        Connection connection = getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(TIM_TAI_KHOAN);
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                String tenTaiKhoan = resultSet.getString("tenTaiKhoan");
                String matKhau = resultSet.getString("matKhau");
                taiKhoan = new TaiKhoan(id, tenTaiKhoan, matKhau, false);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return taiKhoan;
    }
}
