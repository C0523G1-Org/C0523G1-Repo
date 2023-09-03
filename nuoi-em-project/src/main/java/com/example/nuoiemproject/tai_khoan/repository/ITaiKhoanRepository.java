package com.example.nuoiemproject.tai_khoan.repository;

import com.example.nuoiemproject.tai_khoan.model.TaiKhoan;

import java.util.List;

public interface ITaiKhoanRepository {
    List<TaiKhoan> hienThiDanhSach();
    void themTaiKhoan(TaiKhoan taiKhoan);
    void suaTaiKhoan(TaiKhoan taiKhoan);
    void xoaTaiKhoan(int id);
    TaiKhoan timTaiKhoan(int id);
}
