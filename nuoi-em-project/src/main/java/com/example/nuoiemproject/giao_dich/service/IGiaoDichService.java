package com.example.nuoiemproject.giao_dich.service;

import com.example.nuoiemproject.giao_dich.model.GiaoDich;

import java.util.List;

public interface IGiaoDichService {
    List<GiaoDich> danhSachGiaoDich(int thang, int nam);
    void them(GiaoDich giaoDich);
}
