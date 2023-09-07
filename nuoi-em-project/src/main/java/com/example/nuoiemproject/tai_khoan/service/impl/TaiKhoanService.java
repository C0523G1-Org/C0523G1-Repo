package com.example.nuoiemproject.tai_khoan.service.impl;

import com.example.nuoiemproject.nguoi_nuoi.model.NguoiNuoi;
import com.example.nuoiemproject.tai_khoan.model.TaiKhoan;
import com.example.nuoiemproject.tai_khoan.model.TaiKhoanDto;
import com.example.nuoiemproject.tai_khoan.repository.ITaiKhoanRepository;
import com.example.nuoiemproject.tai_khoan.repository.impl.TaiKhoanRepository;
import com.example.nuoiemproject.tai_khoan.service.ITaiKhoanService;

import java.util.List;

public class TaiKhoanService implements ITaiKhoanService {
    private ITaiKhoanRepository repository = new TaiKhoanRepository();

    @Override
    public List<TaiKhoan> hienThiDanhSach() {
        List<TaiKhoan> danhSachTaiKhoan = repository.hienThiDanhSach();
        return danhSachTaiKhoan;
    }

    @Override
    public TaiKhoan timTaiKhoan(int id) {
        TaiKhoan taiKhoan = repository.timTaiKhoan(id);
        return taiKhoan;
    }

    @Override
    public void suaTaiKhoan(TaiKhoan taiKhoan) {
        repository.suaTaiKhoan(taiKhoan);
    }

    @Override
    public void themTaiKhoan(TaiKhoan taiKhoan, NguoiNuoi nguoiNuoi) {
        repository.themTaiKhoan(taiKhoan, nguoiNuoi);
    }

    @Override
    public void xoaTaiKhoan(int id) {
        repository.xoaTaiKhoan(id);
    }

    @Override
    public Boolean dangNhap(String tenTaiKhoan, String matKhau) {
        TaiKhoan taiKhoan = repository.dangNhap(tenTaiKhoan, matKhau);
        if (taiKhoan != null) {
            return true;
        } else {
            return false;
        }
    }

    @Override
    public TaiKhoanDto thongTinChiTietTaiKhoan(int id) {
        return repository.thongTinChiTietTaiKhoan(id);
    }

    @Override
    public Boolean taiKhoanDaTonTai(String tenTaiKhoan) {
        TaiKhoan taiKhoan = repository.taiKhoanDaTonTai(tenTaiKhoan);
        if (taiKhoan == null) {
            return true;
        } else {
            return false;
        }
    }

    @Override
    public int guiMaTaiKhoan(String tenTaiKhoan) {
        return repository.guiMaTaiKhoan(tenTaiKhoan);
    }

    @Override
    public Boolean emailDaTonTai(String email) {
        NguoiNuoi nguoiNuoi = repository.emailDaTonTai(email);
        if (nguoiNuoi == null) {
            return true;
        } else {
            return false;
        }
    }
    public List<TaiKhoanDto> chiTietTaiKhoan(int maTaiKhoan) {
        return repository.chiTietTaiKhoan(maTaiKhoan);
    }
}
