package com.example.nuoiemproject.giao_dich.repository;

import com.example.nuoiemproject.BaseRepo;
import com.example.nuoiemproject.giao_dich.model.GiaoDich;
import com.example.nuoiemproject.giao_dich.model.GiaoDichChi;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class GiaoDichRepository implements IGiaoDichRepository {
    private static final String SELECT = "select * from lich_su_giao_dich\n" +
            "where month(ngay_giao_dich) = ? and year(ngay_giao_dich) = ?\n" +
            "order by date(ngay_giao_dich);";
    private static final String UPDATE = "insert into lich_su_tien_thu(ngay_giao_dich, noi_dung_giao_dich, so_tien, ma_cam_ket) values (?,?,?,?)";
    private static final String ADD = "insert into lich_su_tien_chi(ngay_giao_dich, noi_dung_giao_dich, so_tien, ma_nguoi_giam_ho) values (?,?,?,?)";

    @Override
    public List<GiaoDich> danhSachGiaoDich(int thang, int nam) {
        List<GiaoDich> danhSachGiaoDich = new ArrayList<>();
        Connection connection = BaseRepo.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT);
            preparedStatement.setInt(1, thang);
            preparedStatement.setInt(2, nam);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                String ngayGiaoDich = resultSet.getString("ngay_giao_dich");
                int soTien = resultSet.getInt("so_tien");
                String noiDungGiaoDich = resultSet.getString("noi_dung_giao_dich");
                danhSachGiaoDich.add(new GiaoDich(ngayGiaoDich, noiDungGiaoDich, soTien));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return danhSachGiaoDich;
    }

    @Override
    public void them(GiaoDich giaoDich) {
        Connection connection = BaseRepo.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE);
            preparedStatement.setString(1, giaoDich.getNgayGiaoDich());
            preparedStatement.setString(2, giaoDich.getNoiDungGiaoDich());
            preparedStatement.setInt(3, giaoDich.getSoTien());
            preparedStatement.setInt(4, giaoDich.getMaCamKet());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void themChi(GiaoDichChi giaoDichChi) {
        Connection connection = BaseRepo.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(ADD);
            preparedStatement.setString(1, giaoDichChi.getNgayGiaoDich());
            preparedStatement.setString(2, giaoDichChi.getNoiDungGiaoDich());
            preparedStatement.setInt(3, giaoDichChi.getSoTien());
            preparedStatement.setInt(4, giaoDichChi.getMaGiamHo());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
