package com.example.nuoiemproject.tai_khoan.service.impl;

import com.example.nuoiemproject.tai_khoan.model.TaiKhoan;
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
    public void themTaiKhoan(TaiKhoan taiKhoan) {
        repository.themTaiKhoan(taiKhoan);
    }

    @Override
    public void xoaTaiKhoan(int id) {
        repository.xoaTaiKhoan(id);
    }
}
