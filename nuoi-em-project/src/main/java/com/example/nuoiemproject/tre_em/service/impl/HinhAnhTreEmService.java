package com.example.nuoiemproject.tre_em.service.impl;

import com.example.nuoiemproject.tre_em.model.HinhAnhTreEm;
import com.example.nuoiemproject.tre_em.repository.IHinhAnTreEmRepo;
import com.example.nuoiemproject.tre_em.repository.impl.HinhAnhTreEmRepo;
import com.example.nuoiemproject.tre_em.service.IHinhAnhTreEmService;

import java.util.List;

public class HinhAnhTreEmService implements IHinhAnhTreEmService {
    IHinhAnTreEmRepo hinhAnTreEmRepo = new HinhAnhTreEmRepo();

    @Override
    public List<HinhAnhTreEm> hienThiHinhAnh() {
        return hinhAnTreEmRepo.hienThiHinhAnh();
    }
}
