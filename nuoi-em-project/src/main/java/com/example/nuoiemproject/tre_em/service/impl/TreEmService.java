package com.example.nuoiemproject.tre_em.service.impl;

import com.example.nuoiemproject.tre_em.model.TreEm;
import com.example.nuoiemproject.tre_em.model.TreEmDto;
import com.example.nuoiemproject.tre_em.repository.ITreEmRepo;
import com.example.nuoiemproject.tre_em.repository.impl.TreEmRepo;
import com.example.nuoiemproject.tre_em.service.ITreEmService;

import java.util.List;

public class TreEmService implements ITreEmService {
    ITreEmRepo treEmRepo = new TreEmRepo();

    @Override
    public List<TreEm> hienThiDanhSach() {
        return treEmRepo.hienThiDanhSach();
    }

    @Override
    public void them(TreEm treEm) {
        treEmRepo.them(treEm);

    }

    @Override
    public void sua(TreEm treEm) {
        treEmRepo.sua(treEm);
    }

    @Override
    public void xoa(int maTreEm) {
        treEmRepo.xoa(maTreEm);
    }

    @Override
    public TreEm timId(int maTreEm) {
        return treEmRepo.timId(maTreEm);
    }

    @Override
    public List<TreEmDto> hienThiDto() {
        return treEmRepo.hienThiDto();
    }
}
