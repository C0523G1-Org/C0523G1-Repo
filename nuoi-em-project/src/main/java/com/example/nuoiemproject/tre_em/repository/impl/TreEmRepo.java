package com.example.nuoiemproject.tre_em.repository.impl;

import com.example.nuoiemproject.BaseRepo;
import com.example.nuoiemproject.tre_em.model.TreEm;
import com.example.nuoiemproject.tre_em.model.TreEmDto;
import com.example.nuoiemproject.tre_em.repository.ITreEmRepo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TreEmRepo implements ITreEmRepo {
    private static final String TRUY_VAN_TRE_EM = " select ma_tre_em, ten_tre_em, gioi_tinh, ngay_sinh, trang_thai_nhan_nuoi " +
            " from tre_em " +
            " where trang_thai_xoa = 0 " +
            " order by ma_tre_em ";
    private static final String THEM_TRE_EM = "INSERT INTO tre_em (ten_tre_em, gioi_tinh, ngay_sinh, mo_ta, ma_khu_vuc, ma_nguoi_giam_ho, hinh_anh) " +
            " VALUES (?,?,?,?,?,?,?) ";
    private static final String XOA_TRE_EM = "UPDATE tre_em SET trang_thai_xoa = 1 WHERE ma_tre_em = ?";

    private static final String TRUY_VAN_TRE_EM_DTO = "select te.ma_tre_em, te.ten_tre_em, te.gioi_tinh, te.ngay_sinh, te.trang_thai_nhan_nuoi, te.mo_ta, kv.ten_khu_vuc, ngh.ten_nguoi_giam_ho, te.hinh_anh " +
            " from tre_em te " +
            " join khu_vuc kv on kv.ma_khu_vuc = te.ma_khu_vuc " +
            " join nguoi_giam_ho ngh on ngh.ma_nguoi_giam_ho = te.ma_nguoi_giam_ho " +
            " where te.trang_thai_xoa = 0 " +
            " order by te.ma_tre_em ";
    private static final String TIM_TRE_EM = "SELECT * FROM tre_em WHERE ma_tre_em = ?";
    private static final String CHINH_SUA = "update tre_em set " +
            " ten_tre_em = ? , " +
            " gioi_tinh = ? , " +
            " ngay_sinh = ? , " +
            " mo_ta = ? , " +
            " ma_khu_vuc = ? , " +
            " ma_nguoi_giam_ho = ? ," +
            " hinh_anh = ? " +
            "where ma_tre_em = ? ";

    @Override
    public List<TreEm> hienThiDanhSach() {
        Connection connection = BaseRepo.getConnection();
        List<TreEm> treEmList = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(TRUY_VAN_TRE_EM);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int maTreEm = resultSet.getInt("ma_tre_em");
                String tenTreEm = resultSet.getString("ten_tre_em");
                int gioiTinh = resultSet.getInt("gioi_tinh");
                String ngaySinh = resultSet.getString("ngay_sinh");
                int trangThai = resultSet.getInt("trang_thai_nhan_nuoi");
                treEmList.add(new TreEm(maTreEm, tenTreEm, gioiTinh, ngaySinh, trangThai));
            }
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return treEmList;
    }

    @Override
    public void them(TreEm treEm) {
        Connection connection = BaseRepo.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(THEM_TRE_EM);
            preparedStatement.setString(1, treEm.getTenTreEm());
            preparedStatement.setInt(2, treEm.getGioiTinh());
            preparedStatement.setString(3, treEm.getNgaySinh());
            preparedStatement.setString(4, treEm.getMoTa());
            preparedStatement.setInt(5, treEm.getMaKhuVuc());
            preparedStatement.setInt(6, treEm.getMaNguoiGiamHo());
            preparedStatement.setString(7, treEm.getHinhAnh());
            preparedStatement.executeUpdate();
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void sua(int maTreEm, TreEm treEm) {
        Connection connection = BaseRepo.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(CHINH_SUA);
            preparedStatement.setString(1, treEm.getTenTreEm());
            preparedStatement.setInt(2, treEm.getGioiTinh());
            preparedStatement.setString(3, treEm.getNgaySinh());
            preparedStatement.setString(4, treEm.getMoTa());
            preparedStatement.setInt(5, treEm.getMaKhuVuc());
            preparedStatement.setInt(6, treEm.getMaNguoiGiamHo());
            preparedStatement.setString(7, treEm.getHinhAnh());
            preparedStatement.setInt(8, treEm.getMaTreEm());
            preparedStatement.executeUpdate();
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    @Override
    public void xoa(int maTreEm) {
        Connection connection = BaseRepo.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(XOA_TRE_EM);
            preparedStatement.setInt(1, maTreEm);
            preparedStatement.executeUpdate();
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public TreEm timId(int maTreEm) {
        Connection connection = BaseRepo.getConnection();
        TreEm treEm = null;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(TIM_TRE_EM);
            preparedStatement.setInt(1, maTreEm);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int maTreEm1 = resultSet.getInt("ma_tre_em");
                String tenTreEm = resultSet.getString("ten_tre_em");
                int gioiTinh = resultSet.getInt("gioi_tinh");
                String ngaySinh = resultSet.getString("ngay_sinh");
                String moTa = resultSet.getString("mo_ta");
                int maKhuVuc = resultSet.getInt("ma_khu_vuc");
                int maNguoiGiamHo = resultSet.getInt("ma_nguoi_giam_ho");
                int trangThai = resultSet.getInt("trang_thai_nhan_nuoi");
                String hinhAnh = resultSet.getString("hinh_anh");
                treEm = new TreEm(maTreEm1, tenTreEm, gioiTinh, ngaySinh, moTa, maKhuVuc, maNguoiGiamHo, trangThai, hinhAnh);
            }
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return treEm;
    }

    @Override
    public List<TreEmDto> hienThiDto() {
        Connection connection = BaseRepo.getConnection();
        List<TreEmDto> treEmList = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(TRUY_VAN_TRE_EM_DTO);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int maTreEm = resultSet.getInt("ma_tre_em");
                String tenTreEm = resultSet.getString("ten_tre_em");
                int gioiTinh = resultSet.getInt("gioi_tinh");
                String ngaySinh = resultSet.getString("ngay_sinh");
                String moTa = resultSet.getString("mo_ta");
                String tenKhuVuc = resultSet.getString("ten_khu_vuc");
                String tenNguoiGiamHo = resultSet.getString("ten_nguoi_giam_ho");
                int trangThai = resultSet.getInt("trang_thai_nhan_nuoi");
                String hinhAnh = resultSet.getString("hinh_anh");
                treEmList.add(new TreEmDto(maTreEm, tenTreEm, gioiTinh, ngaySinh, moTa, tenKhuVuc, tenNguoiGiamHo, trangThai, hinhAnh));
            }
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return treEmList;
    }
}