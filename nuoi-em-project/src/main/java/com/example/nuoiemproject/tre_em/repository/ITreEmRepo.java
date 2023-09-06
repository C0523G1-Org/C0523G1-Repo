package com.example.nuoiemproject.tre_em.repository;

import com.example.nuoiemproject.tre_em.model.TreEm;
import com.example.nuoiemproject.tre_em.model.TreEmDto;

import java.util.List;

public interface ITreEmRepo {
    List<TreEm> hienThiDanhSach();
    void them(TreEm treEm);
    void sua(TreEm treEm);
    void xoa(int maTreEm);
    TreEm timId(int maTreEm);

    List<TreEmDto> hienThiDto();
}
