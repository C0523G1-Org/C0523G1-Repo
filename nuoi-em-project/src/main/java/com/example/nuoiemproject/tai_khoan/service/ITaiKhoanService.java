package com.example.nuoiemproject.tai_khoan.service;

import com.example.nuoiemproject.tai_khoan.model.TaiKhoan;

import java.util.List;

public interface ITaiKhoanService {
    List<TaiKhoan> hienThiDanhSach();
    TaiKhoan timTaiKhoan(int id);
    void suaTaiKhoan(TaiKhoan taiKhoan);
    void themTaiKhoan(TaiKhoan taiKhoan);
    void xoaTaiKhoan(int id);
}
