package com.example.nuoiemproject.giao_dich.service;

import com.example.nuoiemproject.giao_dich.model.GiaoDich;
import com.example.nuoiemproject.giao_dich.model.GiaoDichChi;
import com.example.nuoiemproject.giao_dich.repository.impl.GiaoDichRepository;
import com.example.nuoiemproject.giao_dich.repository.IGiaoDichRepository;

import java.util.List;

public class GiaoDichService implements IGiaoDichService {
    private IGiaoDichRepository repository = new GiaoDichRepository();
    @Override
    public List<GiaoDich> danhSachGiaoDich(int thang, int nam, int thang1, int nam1) {
        return repository.danhSachGiaoDich(thang, nam,thang1,nam1);
    }

    @Override
    public void them(GiaoDich giaoDich) {
        repository.them(giaoDich);
    }

    @Override
    public void themChi(GiaoDichChi giaoDichChi) {
        repository.themChi(giaoDichChi);
    }
}
