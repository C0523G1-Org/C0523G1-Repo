package com.example.nuoiemproject.tai_khoan.repository.impl;

import com.example.nuoiemproject.BaseRepo;
import com.example.nuoiemproject.nguoi_nuoi.model.NguoiNuoi;
import com.example.nuoiemproject.tai_khoan.model.*;
import com.example.nuoiemproject.tai_khoan.repository.ITaiKhoanRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TaiKhoanRepository extends BaseRepo implements ITaiKhoanRepository {
    private static final String HIEN_THI_DANH_SACH = "select ma_tai_khoan, ten_tai_khoan," +
            "            mat_khau" +
            "            from tai_khoan" +
            "            where trang_thai_xoa = false;";
    private static final String TIM_TAI_KHOAN = "select ma_tai_khoan, ten_tai_khoan, " +
            "mat_khau, admin " +
            "from tai_khoan " +
            "where trang_thai_xoa = false and ma_tai_khoan = ? ;";
    private static final String SUA_TAI_KHOAN = "update tai_khoan" +
            " set mat_khau = ?" +
            " where ma_tai_khoan = ?;";
    private static final String THEM_TAI_KHOAN = "call them_moi(?,?,?,?,?,?,?);";
    private static final String XOA_TAI_KHOAN = "update tai_khoan set trang_thai_xoa = " +
            "true where ma_tai_khoan = ?;";
    private static final String DANG_NHAP = "select ma_tai_khoan, ten_tai_khoan, mat_khau from tai_khoan where" +
            " ten_tai_khoan = ? and mat_khau = ?;";
    private static final String TIM_THONG_TIN_CHI_TIET = "select tai_khoan.ma_tai_khoan, tai_khoan.ten_tai_khoan, " +
            "nguoi_nuoi.ten_nguoi_nuoi, nguoi_nuoi.gioi_tinh, nguoi_nuoi.so_dien_thoai " +
            "from nguoi_nuoi " +
            "left join tai_khoan " +
            "on tai_khoan.ma_tai_khoan = nguoi_nuoi.ma_tai_khoan" +
            " where tai_khoan.ma_tai_khoan = ?;";
    private static final String TAI_KHOAN_DA_TON_TAI = "select ten_tai_khoan from tai_khoan where ten_tai_khoan = ?;";
    private static final String GUI_MA_TAI_KHOAN = "select ma_tai_khoan from tai_khoan where ten_tai_khoan = ?;";
    private static final String EMAIL_DA_TON_TAI ="select ten_nguoi_nuoi, so_dien_thoai, email from nguoi_nuoi " +
            "where email = ?;";
    private static final String CHI_TIET_TK = "select tai_khoan.ma_tai_khoan, tai_khoan.ten_tai_khoan, tai_khoan.mat_khau, " +
            "nguoi_nuoi.ten_nguoi_nuoi, nguoi_nuoi.gioi_tinh, nguoi_nuoi.so_dien_thoai from tai_khoan " +
            "left join nguoi_nuoi " +
            "on tai_khoan.ma_tai_khoan = nguoi_nuoi.ma_tai_khoan " +
            "where tai_khoan.ma_tai_khoan = ?;";
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

                danhSachTaiKhoan.add(new TaiKhoan(ma_tai_khoan, ten_tai_khoan, mat_khau));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return danhSachTaiKhoan;
    }

    @Override
    public void themTaiKhoan(TaiKhoan taiKhoan, NguoiNuoi nguoiNuoi) {
        Connection connection = getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(THEM_TAI_KHOAN);
            preparedStatement.setString(1, taiKhoan.getTenTaiKhoan());
            preparedStatement.setString(2, taiKhoan.getMatKhau());
            preparedStatement.setString(3, nguoiNuoi.getTenNguoiNuoi());
            preparedStatement.setInt(4, nguoiNuoi.getGioiTinh());
            preparedStatement.setInt(5, nguoiNuoi.getMaTaiKhoan());
            preparedStatement.setInt(6, nguoiNuoi.getSoDienThoai());
            preparedStatement.setString(7, nguoiNuoi.getEmail());
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
                taiKhoan = new TaiKhoan(maTaiKhoan, tenTaiKhoan, matKhau);
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
                        resultSet.getString(3));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }

    @Override
    public TaiKhoan taiKhoanDaTonTai(String tenTaiKhoan) {
        Connection connection = getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(TAI_KHOAN_DA_TON_TAI);
            preparedStatement.setString(1, tenTaiKhoan);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                return new TaiKhoan(resultSet.getString(1));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }

    //
    @Override
    public int guiMaTaiKhoan(String tenTaiKhoan) {
        Integer maTaiKhoan = null;
        Connection connection = getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(GUI_MA_TAI_KHOAN);
            preparedStatement.setString(1, tenTaiKhoan);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                maTaiKhoan = resultSet.getInt(1);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return maTaiKhoan;
    }
    //

    @Override
    public NguoiNuoi emailDaTonTai(String email) {
        Connection connection = getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(EMAIL_DA_TON_TAI);
            preparedStatement.setString(1, email);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                String tenNguoiNuoi = resultSet.getString(1);
                int soDienThoai = resultSet.getInt(2);
                String emailDaTonTai = resultSet.getString(3);
                return new NguoiNuoi(tenNguoiNuoi, soDienThoai , emailDaTonTai);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }

    @Override
    public List<TaiKhoanDto> chiTietTaiKhoan(int maTaiKhoan) {
        List<TaiKhoanDto> danhSachDto = new ArrayList<>();
        Connection connection = getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(CHI_TIET_TK);
            preparedStatement.setInt(1, maTaiKhoan);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int maTK = resultSet.getInt(1);
                String tenTaiKhoan = resultSet.getString(2);
                String matKhau = resultSet.getString(3);
                String tenNguoiNuoi = resultSet.getString(4);
                int gioiTinh = resultSet.getInt(5);
                int soDienThoai = resultSet.getInt(6);
                danhSachDto.add(new TaiKhoanDto(maTK, tenTaiKhoan, matKhau, tenNguoiNuoi, gioiTinh, soDienThoai));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return danhSachDto;
    }

    private static final String THONG_KE =
            "select tai_khoan.ma_tai_khoan, tai_khoan.ten_tai_khoan, " +
            "nguoi_nuoi.ma_nguoi_nuoi, nguoi_nuoi.ten_nguoi_nuoi, nguoi_nuoi.gioi_tinh,  nguoi_nuoi.email,  " +
            "tre_em.ma_tre_em, tre_em.ten_tre_em, nguoi_nuoi.so_dien_thoai " +
            "from tai_khoan " +
            "left join nguoi_nuoi " +
            "on tai_khoan.ma_tai_khoan = nguoi_nuoi.ma_tai_khoan " +
            "left join cam_ket " +
            "on nguoi_nuoi.ma_nguoi_nuoi = cam_ket.ma_nguoi_nuoi " +
            "left join tre_em " +
            "on cam_ket.ma_tre_em = tre_em.ma_tre_em " +
            "where tai_khoan.ma_tai_khoan = ?;";
    @Override
    public List<TaiKhoanDto2> thongKeTaiKhoan(int maTaiKhoan) {
        List<TaiKhoanDto2> thongKeChiTiet = new ArrayList<>();
        Connection connection = getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(THONG_KE);
            preparedStatement.setInt(1, maTaiKhoan);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int maTK = resultSet.getInt(1);
                String tenTaiKhoan = resultSet.getString(2);
                int maNguoiNuoi = resultSet.getInt(3);
                String tenNguoiNuoi = resultSet.getString(4);
                int gioiTinhNguoiNuoi = resultSet.getInt(5);
                String email = resultSet.getString(6);
                int maTreEm = resultSet.getInt(7);
                String tenTreEm = resultSet.getString(8);
                int soDienThoai = resultSet.getInt(9);
                thongKeChiTiet.add(new TaiKhoanDto2(maTK, tenTaiKhoan , maNguoiNuoi, tenNguoiNuoi,
                        gioiTinhNguoiNuoi, email, maTreEm, tenTreEm, soDienThoai));
            }
            return thongKeChiTiet;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    private static final String THONG_KE_CAM_KET = "select tai_khoan.ma_tai_khoan, nguoi_nuoi.ma_nguoi_nuoi, nguoi_nuoi.ten_nguoi_nuoi , " +
            "    cam_ket.ngay_nhan_nuoi , " +
            "    cam_ket.so_tien, cam_ket.trang_thai, tre_em.ten_tre_em, tre_em.gioi_tinh, tre_em.ngay_sinh " +
            "    from tai_khoan " +
            "    left join nguoi_nuoi " +
            "    on tai_khoan.ma_tai_khoan = nguoi_nuoi.ma_tai_khoan " +
            "    left join cam_ket " +
            "    on nguoi_nuoi.ma_nguoi_nuoi = cam_ket.ma_nguoi_nuoi " +
            "    left join tre_em " +
            "    on cam_ket.ma_tre_em = tre_em.ma_tre_em " +
            "    where tai_khoan.ma_tai_khoan = ?;";
    @Override
    public List<TaiKhoanDto3> thongKeCamKetTaiKhoan(int maTaiKhoan) {
        List<TaiKhoanDto3> thongKeCamKet = new ArrayList<>();
        Connection connection = getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(THONG_KE_CAM_KET);
            preparedStatement.setInt(1, maTaiKhoan);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int maTK = resultSet.getInt(1);
                int maNguoiNuoi = resultSet.getInt(2);
                String tenNguoiNuoi = resultSet.getString(3);
                String ngayLamCamKet = resultSet.getString(4);
                int soTien = resultSet.getInt(5);
                int trangThaiHopDong = resultSet.getInt(6);
                String tenTreEm = resultSet.getString(7);
                int gioiTinhTreEm = resultSet.getInt(8);
                String ngaySinhTreEm = resultSet.getString(9);
                thongKeCamKet.add(new TaiKhoanDto3(maTK, maNguoiNuoi, tenNguoiNuoi, ngayLamCamKet,
                        soTien, trangThaiHopDong, tenTreEm, gioiTinhTreEm, ngaySinhTreEm));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return thongKeCamKet;
    }
    private static final String TRA_CUU_TAI_CHINH = "select lich_su_tien_thu.ngay_giao_dich, lich_su_tien_thu.noi_dung_giao_dich, " +
            "lich_su_tien_thu.so_tien, tre_em.ten_tre_em, cam_ket.ngay_nhan_nuoi " +
            "from lich_su_tien_thu " +
            "left join cam_ket " +
            "on lich_su_tien_thu.ma_cam_ket = cam_ket.ma_cam_ket " +
            "left join tre_em " +
            "on tre_em.ma_tre_em = cam_ket.ma_tre_em " +
            "left join nguoi_nuoi " +
            "on cam_ket.ma_nguoi_nuoi = nguoi_nuoi.ma_nguoi_nuoi " +
            "where nguoi_nuoi.ma_nguoi_nuoi = ?;";

    @Override
    public List<TaiKhoanDto4> traCuuTaiChinh(int maTaiKhoan) {
        List<TaiKhoanDto4> traCuuTaiChinh = new ArrayList<>();
        Connection connection = getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(TRA_CUU_TAI_CHINH);
            preparedStatement.setInt(1, maTaiKhoan);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                 String ngayGiaoDich = resultSet.getString(1);
                 String noiDungGiaoDich =  resultSet.getString(2);
                 int soTien = resultSet.getInt(3);
                 String tenTreEm =  resultSet.getString(4);
                 String ngayNhanNuoi = resultSet.getString(5);
                 traCuuTaiChinh.add(new TaiKhoanDto4(ngayGiaoDich, noiDungGiaoDich, soTien, tenTreEm, ngayNhanNuoi));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return traCuuTaiChinh;
    }
}