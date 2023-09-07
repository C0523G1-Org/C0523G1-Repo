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
    public void sua(int id, TreEm treEm) {
        treEmRepo.sua(id, treEm);
    }

    @Override
    public void xoa(int id) {
        treEmRepo.xoa(id);
    }

    @Override
    public TreEm timId(int id) {
        return treEmRepo.timId(id);
    }

    @Override
    public List<TreEmDto> hienThiDto() {
        return treEmRepo.hienThiDto();
    }
}
