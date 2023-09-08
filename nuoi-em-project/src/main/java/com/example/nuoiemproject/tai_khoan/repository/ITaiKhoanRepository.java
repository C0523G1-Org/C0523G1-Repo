package com.example.nuoiemproject.tai_khoan.repository;

import com.example.nuoiemproject.nguoi_nuoi.model.NguoiNuoi;
import com.example.nuoiemproject.tai_khoan.model.TaiKhoan;
import com.example.nuoiemproject.tai_khoan.model.TaiKhoanDto;
import com.example.nuoiemproject.tai_khoan.model.TaiKhoanDto2;

import java.util.List;

public interface ITaiKhoanRepository {
    List<TaiKhoan> hienThiDanhSach();
    void themTaiKhoan(TaiKhoan taiKhoan, NguoiNuoi nguoiNuoi);
    void suaTaiKhoan(TaiKhoan taiKhoan);
    void xoaTaiKhoan(int id);
    TaiKhoan timTaiKhoan(int id);
    TaiKhoanDto thongTinChiTietTaiKhoan(int id);
    TaiKhoan dangNhap(String tenTaiKhoan, String matKhau);
    TaiKhoan taiKhoanDaTonTai(String tenTaiKhoan);
    //
    int guiMaTaiKhoan(String tenTaiKhoan);
    NguoiNuoi emailDaTonTai(String email);
    List<TaiKhoanDto> chiTietTaiKhoan(int maTaiKhoan);
    List<TaiKhoanDto2> thongKeTaiKhoan(int maTaiKhoan);
    
}
