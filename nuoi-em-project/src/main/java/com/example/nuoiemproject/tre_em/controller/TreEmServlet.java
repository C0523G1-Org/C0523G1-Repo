package com.example.nuoiemproject.tre_em.controller;

import com.example.nuoiemproject.khu_vuc.model.KhuVuc;
import com.example.nuoiemproject.khu_vuc.service.IKhuVucService;
import com.example.nuoiemproject.khu_vuc.service.impl.KhuVucService;
import com.example.nuoiemproject.tre_em.model.TreEm;
import com.example.nuoiemproject.tre_em.service.ITreEmService;
import com.example.nuoiemproject.tre_em.service.impl.TreEmService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "TreEmServlet", value = "/TreEm")
public class TreEmServlet extends HttpServlet {
    ITreEmService treEmService = new TreEmService();
    IKhuVucService khuVucService = new KhuVucService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "them":
                hienThiThem(request, response);
                break;
            case "sua":
                hienThiSua(request, response);
                break;
            case "chi-tiet":
                hienThiChiTiet(request, response);
                break;
            default:
                hienThiDanhSach(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "them":
                them(request, response);
                break;
            case "sua":
                sua(request, response);
                break;
            case "xoa":
                xoa(request, response);
                break;
            default:
                hienThiDanhSach(request, response);
                break;
        }
    }

    private void hienThiDanhSach(HttpServletRequest request, HttpServletResponse response) {
        try {
            List<TreEm> treEmList = treEmService.hienThiDanhSach();
            if (treEmList.size() == 0) {
                request.setAttribute("treEm", null);
                request.getRequestDispatcher("danh-sach-tre-em.jsp").forward(request, response);
            } else {
                request.setAttribute("treEm", treEmList);
                request.getRequestDispatcher("danh-sach-tre-em.jsp").forward(request, response);
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    private void hienThiChiTiet(HttpServletRequest request, HttpServletResponse response) {
    }

    private void hienThiSua(HttpServletRequest request, HttpServletResponse response) {

    }

    private void hienThiThem(HttpServletRequest request, HttpServletResponse response) {
        try {
            List<KhuVuc> khuVucList = khuVucService.hienThiKhuVuc();
            request.setAttribute("khuVuc", khuVucList);
            request.getRequestDispatcher("them-moi-tre-em.jsp").forward(request, response);
        } catch (ServletException | IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void xoa(HttpServletRequest request, HttpServletResponse response) {
    }

    private void sua(HttpServletRequest request, HttpServletResponse response) {
    }

    private void them(HttpServletRequest request, HttpServletResponse response) {
        String tenTreEm = request.getParameter("tenTreEm");
        int gioiTinh = Integer.parseInt(request.getParameter("gioiTinh"));
        String ngaySinh = request.getParameter("ngaySinh");
        int trangThai = Integer.parseInt("trangThai");
        String moTa = request.getParameter("moTa");
        int maKhuVuc = Integer.parseInt(request.getParameter("maKhuVuc"));
        int maNguoiGiamHo = Integer.parseInt(request.getParameter("maNguoiGiamHo"));
        TreEm treEm = new TreEm(tenTreEm, gioiTinh, ngaySinh, trangThai, moTa, maKhuVuc, maNguoiGiamHo);

        try {
            treEmService.them(treEm);
            request.setAttribute("message", "Bạn đã thêm mới trẻ em thành công ");
            request.getRequestDispatcher("them-moi-tre-em.jsp").forward(request,response);
        } catch (ServletException | IOException e) {
            throw new RuntimeException(e);
        }
    }
}
