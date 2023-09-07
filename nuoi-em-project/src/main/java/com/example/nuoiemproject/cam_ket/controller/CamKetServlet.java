package com.example.nuoiemproject.cam_ket.controller;

import com.example.nuoiemproject.cam_ket.model.CamKet;
import com.example.nuoiemproject.cam_ket.model.CamKetDTO;
import com.example.nuoiemproject.cam_ket.service.impl.CamKetService;
import com.example.nuoiemproject.cam_ket.service.ICamKetService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CamKetServlet", value = "/cam-ket")
public class CamKetServlet extends HttpServlet {
    private ICamKetService service = new CamKetService();

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
            default:
                hienThiDanhSach(request, response);
                break;
        }
    }

    private void hienThiSua(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int maCamKet = Integer.parseInt(request.getParameter("maCamKet"));
        CamKet camKet = service.xemChiTiet(maCamKet);
        request.setAttribute("camKet", camKet);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/cam-ket-sua-thong-tin.jsp");

            dispatcher.forward(request, response);

    }

    private void hienThiDanhSach(HttpServletRequest request, HttpServletResponse response) {
        List<CamKetDTO> danhSach = service.hienThiDanhSach();
        request.setAttribute("danhSach", danhSach);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/cam-ket-danh-sach.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void hienThiThem(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/cam-ket-them-moi.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
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
                themCamKet(request, response);
                break;
            case "xoa":
                xoaCamKet(request, response);
                break;
            case "sua":
                suaCamKet(request, response);
                break;
        }
    }

    private void suaCamKet(HttpServletRequest request, HttpServletResponse response) {
        int maCamKet = Integer.parseInt(request.getParameter("maCamKet"));
        int soTien = Integer.parseInt(request.getParameter("soTien"));
        String ngayNhanNuoi = request.getParameter("ngayNhanNuoi");
        int trangThai = Integer.parseInt(request.getParameter("trangThai"));
        int maTreEm = Integer.parseInt(request.getParameter("maTreEm"));
        int maNguoiNuoi = Integer.parseInt(request.getParameter("maNguoiNuoi"));
        service.sua(new CamKet(maCamKet, soTien, ngayNhanNuoi, trangThai, maTreEm, maNguoiNuoi));
        try {
            response.sendRedirect("/cam-ket");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void xoaCamKet(HttpServletRequest request, HttpServletResponse response) {
        int ma_cam_ket = Integer.parseInt(request.getParameter("xoa_ma"));
        service.xoa(ma_cam_ket);
        try {
            response.sendRedirect("/cam-ket");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void themCamKet(HttpServletRequest request, HttpServletResponse response) {
        int soTien = Integer.parseInt(request.getParameter("soTien"));
        String ngayNhanNuoi = request.getParameter("ngayNhanNuoi");
        int trangThai = Integer.parseInt(request.getParameter("trangThai"));
        int maTreEm = Integer.parseInt(request.getParameter("maTreEm"));
        int maNguoiNuoi = Integer.parseInt(request.getParameter("maNguoiNuoi"));
        service.them(new CamKet( soTien, ngayNhanNuoi, trangThai, maTreEm, maNguoiNuoi));
        try {
            response.sendRedirect("/cam-ket");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
