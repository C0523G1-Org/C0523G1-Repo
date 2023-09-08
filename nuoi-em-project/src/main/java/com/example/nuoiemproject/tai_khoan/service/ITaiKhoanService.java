package com.example.nuoiemproject.tai_khoan.service;

import com.example.nuoiemproject.nguoi_nuoi.model.NguoiNuoi;
import com.example.nuoiemproject.tai_khoan.model.*;

import java.util.List;

public interface ITaiKhoanService {
    List<TaiKhoan> hienThiDanhSach();
    TaiKhoan timTaiKhoan(int id);
    void suaTaiKhoan(TaiKhoan taiKhoan);
    void themTaiKhoan(TaiKhoan taiKhoan, NguoiNuoi nguoiNuoi);
    void xoaTaiKhoan(int id);
    Boolean dangNhap(String tenTaiKhoan, String matKhau);
    TaiKhoanDto thongTinChiTietTaiKhoan(int id);
    Boolean taiKhoanDaTonTai(String tenTaiKhoan);
    //
    int guiMaTaiKhoan(String tenTaiKhoan);
    //
    Boolean emailDaTonTai(String email);
    List<TaiKhoanDto> chiTietTaiKhoan(int maTaiKhoan);
    List<TaiKhoanDto2> thongKeTaiKhoan(int maTaiKhoan);
    List<TaiKhoanDto3> thongKeCamKetTaiKhoan(int maTaiKhoan);
    List<TaiKhoanDto4> traCuuTaiChinh(int maTaiKhoan);
}
