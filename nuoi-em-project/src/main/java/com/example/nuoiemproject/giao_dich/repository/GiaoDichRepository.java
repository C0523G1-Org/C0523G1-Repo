package com.example.nuoiemproject.giao_dich.repository;

import com.example.nuoiemproject.BaseRepo;
import com.example.nuoiemproject.giao_dich.model.GiaoDich;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class GiaoDichRepository implements IGiaoDichRepository {
    private static final String SELECT = "select gd.ngay_giao_dich, ck.so_tien, gd.noi_dung_giao_dich\n" +
            "from lich_su_giao_dich gd join cam_ket ck on gd.ma_cam_ket = ck.ma_cam_ket where MONTH(gd.ngay_giao_dich) = ? and year(gd.ngay_giao_dich) = ?;";
    private static final String UPDATE = "insert into lich_su_giao_dich(ngay_giao_dich, noi_dung_giao_dich, ma_cam_ket) values (?,?,?)";

    //    thêm giao dịch với mã cam kết là -1 nghĩa là chi cho trẻ em
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
            preparedStatement.setString(1,giaoDich.getNgayGiaoDich());
            preparedStatement.setString(2,giaoDich.getNoiDungGiaoDich());
            preparedStatement.setInt(3,giaoDich.getMaCamKet());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
