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
import java.util.regex.Matcher;
import java.util.regex.Pattern;

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
                hienThiThem(request, response);
                break;
            case "capnhatnguoigiamho":
                hienThiCapNhat(request, response);
                break;
            default:
                hienThiDanhSach(request, response);
                break;
        }

    }

    private void hienThiCapNhat(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int maNguoiGiamHo = Integer.parseInt(request.getParameter("maNguoiGiamHo"));
        NguoiGiamHo nguoiGiamHo = nguoiGiamHoService.nguoiGiamHo(maNguoiGiamHo);
        List<KhuVuc> khuVuc = khuVucService.hienThiKhuVuc();
        request.setAttribute("khuVuc", khuVuc);
        request.setAttribute("nguoiGiamHo", nguoiGiamHo);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/nguoi-giam-ho-cap-nhat.jsp");
        requestDispatcher.forward(request, response);

    }

    private void xoa(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int maNguoiGiamHo = Integer.parseInt(request.getParameter("maNguoiGiamHo"));
        boolean nguoiGiamHoKhongTonTai = nguoiGiamHoService.nguoiGiamHoKhongTonTai(maNguoiGiamHo);
        if (nguoiGiamHoKhongTonTai) {
            request.setAttribute("nguoiGiamHoKhongTonTai", "Người giám hộ này không tồn tại!");
            response.sendRedirect("/nguoi-giam-ho");
        } else {
            nguoiGiamHoService.xoaNguoiGiamHo(maNguoiGiamHo);
            response.sendRedirect("/nguoi-giam-ho");
        }

    }

    private void hienThiThem(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<KhuVuc> khuVuc = khuVucService.hienThiKhuVuc();
        request.setAttribute("khuVuc", khuVuc);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/nguoi-giam-ho-them-moi.jsp");
        requestDispatcher.forward(request, response);
    }


    private void hienThiDanhSach(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<NguoiGiamHo> nguoiGiamHo = nguoiGiamHoService.hienThi();
        request.setAttribute("nguoiGiamHo", nguoiGiamHo);
        List<KhuVuc> khuVuc = khuVucService.hienThiKhuVuc();
        request.setAttribute("khuVuc", khuVuc);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/nguoi-giam-ho-danh-sach.jsp");
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
                themMoiNguoiGiamHo(request, response);
                break;
            case "xoa":
                xoa(request, response);
                break;
            case "capnhat":
                capNhat(request, response);
                break;
        }
    }

    private void capNhat(HttpServletRequest request, HttpServletResponse response) {
        int maNguoiGiamHo = Integer.parseInt(request.getParameter("maNguoiGiamHo"));
        String tenNguoiGiamHo = request.getParameter("tenNguoiGiamHo");
        int gioiTinh = Integer.parseInt(request.getParameter("gioiTinh"));
        int maKhuVuc = Integer.parseInt(request.getParameter("maKhuVuc"));
        String soDienThoai = request.getParameter("soDienThoai");
        final String soDienThoaiDung = "^(0\\d{9})$";
        Pattern pattern = Pattern.compile(soDienThoaiDung);
        Matcher matcher = pattern.matcher(request.getParameter("soDienThoai"));
        NguoiGiamHo nguoiGiamHo = new NguoiGiamHo(maNguoiGiamHo, tenNguoiGiamHo, gioiTinh, maKhuVuc, soDienThoai);
        try {
           if (!matcher.matches()) {
                request.setAttribute("loi", "Số điện thoại không hợp lệ!");
                request.setAttribute("nguoiGiamHo", nguoiGiamHo);
                List<KhuVuc> khuVuc = khuVucService.hienThiKhuVuc();
                request.setAttribute("khuVuc", khuVuc);
                request.setAttribute("maKhuVuc", maKhuVuc);
                request.setAttribute("tenNguoiGiamHo", tenNguoiGiamHo);
                request.setAttribute("gioiTinh", gioiTinh);
                RequestDispatcher dispatcher = request.getRequestDispatcher("/nguoi-giam-ho-cap-nhat.jsp");
                dispatcher.forward(request, response);
            } else {
                nguoiGiamHoService.capNhatNguoiGiamHo(nguoiGiamHo);
                request.setAttribute("nguoiGiamHo", nguoiGiamHo);
                request.setAttribute("thongBao", "Bạn đã cập nhật thành công!");
                List<KhuVuc> khuVuc = khuVucService.hienThiKhuVuc();
                request.setAttribute("khuVuc", khuVuc);
                request.setAttribute("maKhuVuc", maKhuVuc);
                request.setAttribute("tenNguoiGiamHo", tenNguoiGiamHo);
                request.setAttribute("gioiTinh", gioiTinh);
                RequestDispatcher dispatcher = request.getRequestDispatcher("/nguoi-giam-ho-cap-nhat.jsp");
                dispatcher.forward(request, response);
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        }
    }

    private void themMoiNguoiGiamHo(HttpServletRequest request, HttpServletResponse response) {
        String tenNguoiGiamHo = request.getParameter("tenNguoiGiamHo");
        int gioiTinh = Integer.parseInt(request.getParameter("gioiTinh"));
        int maKhuVuc = Integer.parseInt(request.getParameter("maKhuVuc"));
        String soDienThoai = request.getParameter("soDienThoai");
        NguoiGiamHo nguoiGiamHo = new NguoiGiamHo(tenNguoiGiamHo, gioiTinh, maKhuVuc, soDienThoai);
        final String soDienThoaiDung = "^(0\\d{9})$";
        Pattern pattern = Pattern.compile(soDienThoaiDung);
        Matcher matcher = pattern.matcher(request.getParameter("soDienThoai"));
        boolean soDienThoaiTonTai = nguoiGiamHoService.soDienThoaiTonTai(soDienThoai);
        try {
            if (!soDienThoaiTonTai) {
                request.setAttribute("soDienThoaiTonTai", "Số điện thoại này đã tồn tại!");
                request.setAttribute("nguoiGiamHo", nguoiGiamHo);
                List<KhuVuc> khuVuc = khuVucService.hienThiKhuVuc();
                request.setAttribute("khuVuc", khuVuc);
                request.setAttribute("maKhuVuc", maKhuVuc);
                request.setAttribute("tenNguoiGiamHo", tenNguoiGiamHo);
                request.setAttribute("gioiTinh", gioiTinh);
                RequestDispatcher dispatcher = request.getRequestDispatcher("/nguoi-giam-ho-them-moi.jsp");
                dispatcher.forward(request, response);
            } else if (!matcher.matches()) {
                request.setAttribute("loi", "Số điện thoại không hợp lệ!");
                request.setAttribute("nguoiGiamHo", nguoiGiamHo);
                List<KhuVuc> khuVuc = khuVucService.hienThiKhuVuc();
                request.setAttribute("khuVuc", khuVuc);
                request.setAttribute("maKhuVuc", maKhuVuc);
                request.setAttribute("tenNguoiGiamHo", tenNguoiGiamHo);
                request.setAttribute("gioiTinh", gioiTinh);
                RequestDispatcher dispatcher = request.getRequestDispatcher("/nguoi-giam-ho-them-moi.jsp");
                dispatcher.forward(request, response);
            } else {
                nguoiGiamHoService.themNguoiGiamHo(nguoiGiamHo);
                request.setAttribute("thongBao", "Bạn đã thêm mới thành công!");
                List<KhuVuc> khuVuc = khuVucService.hienThiKhuVuc();
                request.setAttribute("khuVuc", khuVuc);
                RequestDispatcher dispatcher = request.getRequestDispatcher("/nguoi-giam-ho-them-moi.jsp");
                dispatcher.forward(request, response);
            }
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}