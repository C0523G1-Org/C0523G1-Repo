package com.example.nuoiemproject.giao_dich.repository;

import com.example.nuoiemproject.giao_dich.model.GiaoDich;
import com.example.nuoiemproject.giao_dich.model.GiaoDichChi;
import com.example.nuoiemproject.nguoi_nuoi.model.NguoiNuoi;

import java.util.List;

public interface IGiaoDichRepository {
    List<GiaoDich> danhSachGiaoDich(int thang, int nam, int thang1, int nam1);
    void them(GiaoDich giaoDich);
    void themChi(GiaoDichChi giaoDichChi);
}
