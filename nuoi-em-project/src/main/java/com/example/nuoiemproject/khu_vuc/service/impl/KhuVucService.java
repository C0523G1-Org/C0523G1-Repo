package com.example.nuoiemproject.khu_vuc.service.impl;

import com.example.nuoiemproject.khu_vuc.model.KhuVuc;
import com.example.nuoiemproject.khu_vuc.repository.IKhuVucRepo;
import com.example.nuoiemproject.khu_vuc.repository.impl.KhuVucRepo;
import com.example.nuoiemproject.khu_vuc.service.IKhuVucService;

import java.util.List;

public class KhuVucService implements IKhuVucService {
    IKhuVucRepo khuVucRepo = new KhuVucRepo();

    @Override
    public List<KhuVuc> hienThiKhuVuc() {
        return khuVucRepo.hienThiKhuVuc();
    }
}
