package com.example.nuoiemproject.cam_ket.repository.impl;

import com.example.nuoiemproject.BaseRepo;
import com.example.nuoiemproject.cam_ket.model.CamKet;
import com.example.nuoiemproject.cam_ket.model.CamKetDTO;
import com.example.nuoiemproject.cam_ket.repository.ICamKetRepository;
import com.example.nuoiemproject.nguoi_nuoi.model.NguoiNuoi;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CamKetRepository implements ICamKetRepository {

    private static final String SELECT = "SELECT \n" +
            "    cam_ket.ma_cam_ket,\n" +
            "    cam_ket.so_tien,\n" +
            "    cam_ket.ngay_nhan_nuoi,\n" +
            "    cam_ket.trang_thai,\n" +
            "    tre_em.ten_tre_em,\n" +
            "    nguoi_nuoi.ten_nguoi_nuoi\n" +
            "FROM\n" +
            "    cam_ket\n" +
            "        JOIN\n" +
            "    tre_em ON cam_ket.ma_tre_em = tre_em.ma_tre_em\n" +
            "        JOIN\n" +
            "    nguoi_nuoi ON cam_ket.ma_nguoi_nuoi = nguoi_nuoi.ma_nguoi_nuoi\n" +
            "    where cam_ket.trang_thai_xoa =0\n" +
            "GROUP BY cam_ket.ma_cam_ket";
    private static final String INSERT = "INSERT INTO cam_ket(so_tien, ngay_nhan_nuoi, trang_thai, ma_tre_em, ma_nguoi_nuoi)\n" +
            "VALUES (?,?,?,?,?)";
    private static final String UPDATE = "UPDATE cam_ket SET so_tien=?, ngay_nhan_nuoi=?, trang_thai=?, " +
            "ma_tre_em=?,ma_nguoi_nuoi=? WHERE ma_cam_ket = ?";
    private static final String DELETE = "UPDATE cam_ket SET trang_thai_xoa =1 WHERE ma_cam_ket = ?";
    private static final String SEARCH = "SELECT * FROM cam_ket WHERE ma_cam_ket = ?";



    @Override
    public List<CamKetDTO> hienThiDanhSach() {
        List<CamKetDTO> danhSach = new ArrayList<>();
        Connection connection = BaseRepo.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int maCamKet = resultSet.getInt("ma_cam_ket");
                int soTien = resultSet.getInt("so_tien");
                String ngayNhanNuoi = resultSet.getString("ngay_nhan_nuoi");
                int trangThai = resultSet.getInt("trang_thai");
                String tenTreEm = resultSet.getString("ten_tre_em");
                String tenNguoiNuoi = resultSet.getString("ten_nguoi_nuoi");
                danhSach.add(new CamKetDTO(maCamKet, soTien, ngayNhanNuoi, trangThai, tenTreEm, tenNguoiNuoi));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return danhSach;
    }


    @Override
    public CamKet xemChiTiet(int maCamKet) {
        Connection connection = BaseRepo.getConnection();
        CamKet camKet = null;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SEARCH);
            preparedStatement.setInt(1, maCamKet);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int soTien = resultSet.getInt("so_tien");
                String ngayNhanNuoi = resultSet.getString("ngay_nhan_nuoi");
                int trangThai = resultSet.getInt("trang_thai");
                int maTreEm = resultSet.getInt("ma_tre_em");
                int maNguoiNuoi = resultSet.getInt("ma_nguoi_nuoi");
                camKet = (new CamKet(maCamKet, soTien, ngayNhanNuoi, trangThai, maTreEm, maNguoiNuoi));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return camKet;
    }

    @Override
    public void them(CamKet camKet) {
        Connection connection = BaseRepo.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT);
            preparedStatement.setInt(1, camKet.getSoTien());
            preparedStatement.setString(2, camKet.getNgayNhanNuoi());
            preparedStatement.setInt(3, camKet.getTrangThai());
            preparedStatement.setInt(4, camKet.getMaTreEm());
            preparedStatement.setInt(5, camKet.getMaNguoiNuoi());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void sua(CamKet camKet) {
        Connection connection = BaseRepo.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE);
            preparedStatement.setInt(1, camKet.getSoTien());
            preparedStatement.setString(2, camKet.getNgayNhanNuoi());
            preparedStatement.setInt(3, camKet.getTrangThai());
            preparedStatement.setInt(4, camKet.getMaTreEm());
            preparedStatement.setInt(5, camKet.getMaNguoiNuoi());
            preparedStatement.setInt(6, camKet.getMaCamKet());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void xoa(int maCamKet) {
        Connection connection = BaseRepo.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE);
            preparedStatement.setInt(1, maCamKet);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
