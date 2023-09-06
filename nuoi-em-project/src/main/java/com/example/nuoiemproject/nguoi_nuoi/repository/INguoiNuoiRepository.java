package com.example.nuoiemproject.nguoi_nuoi.repository;

import com.example.nuoiemproject.nguoi_nuoi.model.NguoiNuoi;

import java.util.List;

public interface INguoiNuoiRepository {
    List<NguoiNuoi> hienThiDanhSach();
    NguoiNuoi xemChiTiet(int maNguoiNuoi);
    void them(NguoiNuoi nguoiNuoi);
    void sua(NguoiNuoi nguoiNuoi);
    void xoa(int maNguoiNuoi);
}
