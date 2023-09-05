package com.example.nuoiemproject.nguoi_giam_ho.controller;

import com.example.nuoiemproject.khu_vuc.model.KhuVuc;
import com.example.nuoiemproject.khu_vuc.service.IKhuVucService;
import com.example.nuoiemproject.khu_vuc.service.impl.KhuVucService;
import com.example.nuoiemproject.nguoi_giam_ho.model.NguoiGiamHo;
import com.example.nuoiemproject.nguoi_giam_ho.service.INguoiGiamHoService;
import com.example.nuoiemproject.nguoi_giam_ho.service.NguoiGiamHoService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "NguoiGiamHoServlet", value = "/nguoi-giam-ho")
public class NguoiGiamHoServlet extends HttpServlet {
    private final IKhuVucService khuVucService = new KhuVucService();
    private final INguoiGiamHoService nguoiGiamHoService = new NguoiGiamHoService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "themmoinguoigiamho":
                hienThiThem(request,response);
                break;
            case "xoanguoigiamho":
                break;
            default:
                hienThiDanhSach(request, response);
                break;
        }

    }

    private void hienThiThem(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<KhuVuc> khuVuc = khuVucService.hienThiKhuVuc();
        request.setAttribute("khuVuc",khuVuc);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/them-moi-nguoi-giam-ho.jsp");
        requestDispatcher.forward(request,response);
    }


    private void hienThiDanhSach(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<NguoiGiamHo> nguoiGiamHos = nguoiGiamHoService.hienThi();
        request.setAttribute("nguoiGiamHos", nguoiGiamHos);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/danh-sach-nguoi-giam-ho.jsp");
        requestDispatcher.forward(request, response);
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
                themMoiNguoiGiamHo(request,response);
                break;
        }
    }

    private void themMoiNguoiGiamHo(HttpServletRequest request, HttpServletResponse response) {
        String tenNguoiGiamHo = request.getParameter("tenNguoiGiamHo");
        int gioiTinh = Integer.parseInt(request.getParameter("gioiTinh"));
        int maKhuVuc = Integer.parseInt(request.getParameter("maKhuVuc"));
        int soDienThoai = Integer.parseInt(request.getParameter("soDienThoai"));
        nguoiGiamHoService.themNguoiGiamHo(new NguoiGiamHo(tenNguoiGiamHo, gioiTinh, maKhuVuc, soDienThoai));
        try {
            response.sendRedirect("/nguoi-giam-ho");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
