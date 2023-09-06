package com.example.nuoiemproject.tai_khoan.repository;

import com.example.nuoiemproject.nguoi_nuoi.model.NguoiNuoi;
import com.example.nuoiemproject.tai_khoan.model.TaiKhoan;
import com.example.nuoiemproject.tai_khoan.model.TaiKhoanDto;

import java.util.List;

public interface ITaiKhoanRepository {
    List<TaiKhoan> hienThiDanhSach();
    void themTaiKhoan(TaiKhoan taiKhoan, NguoiNuoi nguoiNuoi);
    void suaTaiKhoan(TaiKhoan taiKhoan);
    void xoaTaiKhoan(int maTaiKhoan);
    TaiKhoan timTaiKhoan(int id);
    TaiKhoanDto thongTinChiTietTaiKhoan(int id);
    TaiKhoan dangNhap(String tenTaiKhoan, String matKhau);
    TaiKhoan taiKhoanDaTonTai(String tenTaiKhoan);
    //
    int guiMaTaiKhoan(String tenTaiKhoan);
}
