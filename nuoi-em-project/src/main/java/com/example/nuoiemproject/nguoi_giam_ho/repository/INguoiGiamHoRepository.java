package com.example.nuoiemproject.nguoi_giam_ho.repository;

import com.example.nuoiemproject.nguoi_giam_ho.model.NguoiGiamHo;

import java.util.List;

public interface INguoiGiamHoRepository {
    List<NguoiGiamHo> hienThi();
    void themNguoiGiamHo(NguoiGiamHo nguoiGiamHo);
    void xoaNguoiGiamHo(int maNguoiGiamHo);
    void capNhatNguoiGiamHo(NguoiGiamHo nguoiGiamHo);
    NguoiGiamHo nguoiGiamHo(int maNguoiGiamHo);
}
