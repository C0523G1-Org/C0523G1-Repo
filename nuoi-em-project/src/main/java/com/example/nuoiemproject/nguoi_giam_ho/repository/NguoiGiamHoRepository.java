package com.example.nuoiemproject.nguoi_giam_ho.repository;

import com.example.nuoiemproject.BaseRepo;
import com.example.nuoiemproject.nguoi_giam_ho.model.NguoiGiamHo;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class NguoiGiamHoRepository implements INguoiGiamHoRepository {
    private static final String SELECT_SQL_NGUOI_GIAM_HO = "call hien_thi_nguoi_giam_ho();";
    private static final String INSERT_SQL_NGUOI_GIAM_HO = "call them_nguoi_giam_ho(?,?,?,?);";
    private static final String DELETE_SQL_NGUOI_GIAM_HO = "call xoa_nguoi_giam_ho(?);";
    private static final String UPDATE_SQL_NGUOI_GIAM_HO = "call cap_nhat_nguoi_giam_ho(?,?,?,?,?);";
    private static final String SELECT_SQL_NGUOI_GIAM_HO_BY_ID = "select ma_nguoi_giam_ho,ten_nguoi_giam_ho,gioi_tinh,ma_khu_vuc,so_dien_thoai from nguoi_giam_ho where ma_nguoi_giam_ho = ?;";

    @Override
    public List<NguoiGiamHo> hienThi() {
        Connection connection = BaseRepo.getConnection();
        List<NguoiGiamHo> nguoiGiamHos = new ArrayList<>();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(SELECT_SQL_NGUOI_GIAM_HO);
            while (resultSet.next()) {
                int maNguoiGiamHo = resultSet.getInt("ma_nguoi_giam_ho");
                String tenNguoiGiamHo = resultSet.getString("ten_nguoi_giam_ho");
                int gioiTinh = resultSet.getInt("gioi_tinh");
                int maKhuVuc = resultSet.getInt("ma_khu_vuc");
                String soDienThoai = resultSet.getString("so_dien_thoai");
                NguoiGiamHo nguoiGiamHo = new NguoiGiamHo(maNguoiGiamHo, tenNguoiGiamHo, gioiTinh, maKhuVuc, soDienThoai);
                nguoiGiamHos.add(nguoiGiamHo);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return nguoiGiamHos;
    }

    @Override
    public void themNguoiGiamHo(NguoiGiamHo nguoiGiamHo) {
        Connection connection = BaseRepo.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_SQL_NGUOI_GIAM_HO);
            preparedStatement.setString(1, nguoiGiamHo.getTenNguoiGiamHo());
            preparedStatement.setInt(2, nguoiGiamHo.getGioiTinh());
            preparedStatement.setInt(3, nguoiGiamHo.getMaKhuVuc());
            preparedStatement.setString(4, nguoiGiamHo.getSoDienThoai());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void xoaNguoiGiamHo(int maNguoiGiamHo) {
        Connection connection = BaseRepo.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE_SQL_NGUOI_GIAM_HO);
            preparedStatement.setInt(1, maNguoiGiamHo);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void capNhatNguoiGiamHo(NguoiGiamHo nguoiGiamHo) {
        Connection connection = BaseRepo.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_SQL_NGUOI_GIAM_HO);
            preparedStatement.setInt(1, nguoiGiamHo.getMaNguoiGiamHo());
            preparedStatement.setString(2, nguoiGiamHo.getTenNguoiGiamHo());
            preparedStatement.setInt(3, nguoiGiamHo.getGioiTinh());
            preparedStatement.setInt(4, nguoiGiamHo.getMaKhuVuc());
            preparedStatement.setString(5, nguoiGiamHo.getSoDienThoai());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public NguoiGiamHo nguoiGiamHo(int maNguoiGiamHo) {
        NguoiGiamHo nguoiGiamHo = null;
        Connection connection = BaseRepo.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_SQL_NGUOI_GIAM_HO_BY_ID);
            preparedStatement.setInt(1, maNguoiGiamHo);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                String tenNguoiGiamHo = resultSet.getString("ten_nguoi_giam_ho");
                int gioiTinh = resultSet.getInt("gioi_tinh");
                int maKhuVuc = resultSet.getInt("ma_khu_vuc");
                String soDienThoai = resultSet.getString("so_dien_thoai");
                nguoiGiamHo = new NguoiGiamHo(maNguoiGiamHo,tenNguoiGiamHo , gioiTinh, maKhuVuc, soDienThoai);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);

        }
        return nguoiGiamHo;
    }
}
