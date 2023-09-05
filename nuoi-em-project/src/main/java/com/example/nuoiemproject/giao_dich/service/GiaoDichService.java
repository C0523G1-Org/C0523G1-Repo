package com.example.nuoiemproject.giao_dich.service;

import com.example.nuoiemproject.giao_dich.model.GiaoDich;
import com.example.nuoiemproject.giao_dich.repository.GiaoDichRepository;
import com.example.nuoiemproject.giao_dich.repository.IGiaoDichRepository;

import java.util.List;

public class GiaoDichService implements IGiaoDichService {
    private IGiaoDichRepository repository = new GiaoDichRepository();
    @Override
    public List<GiaoDich> danhSachGiaoDich(int thang, int nam) {
        return repository.danhSachGiaoDich(thang, nam);
    }

    @Override
    public void them(GiaoDich giaoDich) {
        repository.them(giaoDich);
    }
}
