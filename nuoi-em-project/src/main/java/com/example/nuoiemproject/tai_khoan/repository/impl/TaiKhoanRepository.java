package com.example.nuoiemproject.tai_khoan.repository.impl;

import com.example.nuoiemproject.BaseRepo;
import com.example.nuoiemproject.tai_khoan.model.TaiKhoan;
import com.example.nuoiemproject.tai_khoan.model.TaiKhoanDto;
import com.example.nuoiemproject.tai_khoan.repository.ITaiKhoanRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TaiKhoanRepository extends BaseRepo implements ITaiKhoanRepository {
    private static final String HIEN_THI_DANH_SACH = "select ma_tai_khoan, ten_tai_khoan," +
            "            mat_khau, ma_nguoi_nuoi" +
            "            from tai_khoan" +
            "            where trang_thai_xoa = false;";
    private static final String TIM_TAI_KHOAN = "select ma_tai_khoan, ten_tai_khoan," +
            "mat_khau, ma_nguoi_nuoi, admin " +
            "from tai_khoan" +
            "where trang_thai_xoa = false and ma_tai_khoan = ? ;";
    private static final String SUA_TAI_KHOAN = "update tai_khoan" +
            "set mat_khau = ?" +
            "where id = ?;";
    private static final String THEM_TAI_KHOAN = "insert into tai_khoan(ten_tai_khoan, mat_khau, ma_nguoi_nuoi)" +
            "value (?, ?, ?);";
    private static final String XOA_TAI_KHOAN = "update tai_khoan set trang_thai_xoa = " +
            "true where id = ?;";
    private static final String DANG_NHAP = "select ma_tai_khoan, ten_tai_khoan, mat_khau, ma_nguoi_nuoi from tai_khoan where" +
            " ten_tai_khoan = ? and mat_khau = ?;";
    private static final String TIM_THONG_TIN_CHI_TIET = "select tai_khoan.ma_tai_khoan, tai_khoan.ten_tai_khoan, " +
            "nguoi_nuoi.ten_nguoi_nuoi, nguoi_nuoi.gioi_tinh, nguoi_nuoi.so_dien_thoai " +
            "from tai_khoan " +
            "left join nguoi_nuoi " +
            "on tai_khoan.ma_nguoi_nuoi = nguoi_nuoi.ma_nguoi_nuoi" +
            " where tai_khoan.ma_tai_khoan = ?;";

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
                int ma_nguoi_nuoi = resultSet.getInt("ma_nguoi_nuoi");
                danhSachTaiKhoan.add(new TaiKhoan(ma_tai_khoan, ten_tai_khoan, mat_khau, ma_nguoi_nuoi));
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
            preparedStatement.setInt(3, taiKhoan.getMaNguoiNuoi());
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
                int maTaiKhoan = resultSet.getInt("ma_tai_khoan");
                String tenTaiKhoan = resultSet.getString("ten_tai_khoan");
                String matKhau = resultSet.getString("mat_khau");
                int maNguoiNuoi = resultSet.getInt("ma_nguoi_nuoi");
                taiKhoan = new TaiKhoan(maTaiKhoan, tenTaiKhoan, matKhau, maNguoiNuoi);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return taiKhoan;
    }

    @Override
    public TaiKhoanDto thongTinChiTietTaiKhoan(int id) {
        TaiKhoanDto taiKhoanDto = null;
        Connection connection = getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(TIM_THONG_TIN_CHI_TIET);
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int maTaiKhoan = resultSet.getInt("tai_khoan.ma_tai_khoan");
                String tenTaiKhoan = resultSet.getString("tai_khoan.ten_tai_khoan");
                String tenNguoiNuoi = resultSet.getString("nguoi_nuoi.ten_nguoi_nuoi");
                int gioiTinh = resultSet.getInt("nguoi_nuoi.gioi_tinh");
                int soDienThoai = resultSet.getInt("nguoi_nuoi.so_dien_thoai");
                taiKhoanDto = new TaiKhoanDto(maTaiKhoan, tenTaiKhoan, tenNguoiNuoi, gioiTinh, soDienThoai);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return taiKhoanDto;
    }

    @Override
    public TaiKhoan dangNhap(String tenTaiKhoan, String matKhau) {
        Connection connection = getConnection();
        PreparedStatement preparedStatement = null;
        try {
            preparedStatement = connection.prepareStatement(DANG_NHAP);
            preparedStatement.setString(1, tenTaiKhoan);
            preparedStatement.setString(2, matKhau);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                return new TaiKhoan(resultSet.getInt(1),resultSet.getString(2),
                        resultSet.getString(3),resultSet.getInt(4));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }
}