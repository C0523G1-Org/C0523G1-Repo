package com.example.nuoiemproject.nguoi_giam_ho.service;

import com.example.nuoiemproject.nguoi_giam_ho.model.NguoiGiamHo;

import java.util.List;

public interface INguoiGiamHoService {
    List<NguoiGiamHo> hienThi();
    void themNguoiGiamHo(NguoiGiamHo nguoiGiamHo);
    void xoaNguoiGiamHo(int maNguoiGiamHo);
    void capNhatNguoiGiamHo(NguoiGiamHo nguoiGiamHo);
    NguoiGiamHo nguoiGiamHo(int maNguoiGiamHo);
}
