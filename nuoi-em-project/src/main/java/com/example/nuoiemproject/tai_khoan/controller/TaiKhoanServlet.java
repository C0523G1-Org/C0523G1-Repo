package com.example.nuoiemproject.tai_khoan.controller;

import com.example.nuoiemproject.tai_khoan.model.TaiKhoan;
import com.example.nuoiemproject.tai_khoan.model.TaiKhoanDto;
import com.example.nuoiemproject.tai_khoan.service.ITaiKhoanService;
import com.example.nuoiemproject.tai_khoan.service.impl.TaiKhoanService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "TaiKhoanServlet", value = "/tai-khoan")
public class TaiKhoanServlet extends HttpServlet {
    private ITaiKhoanService service = new TaiKhoanService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "hienThi":
                hienThiDanhSach(request, response);
                break;
            case "suaTaiKhoan":
                hienThiSuaTaiKhoan(request, response);
                break;
            case "themTaiKhoan":
                hienThiThemThaiKhoan(request, response);
                break;
            case "timThongTinTaiKhoan":
                hienThiTimThongTinTaiKhoan(request, response);
                break;
            case "dangNhap":
                hienThiDangNhap(request, response);
                break;
            case "dangXuat":
                dangXuat(request, response);
                break;
        }
    }

    private void hienThiDangNhap(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("dang-nhap.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void hienThiTimThongTinTaiKhoan(HttpServletRequest request, HttpServletResponse response) {
        int maTaiKhoan = Integer.parseInt(request.getParameter("maTaiKhoan"));
        TaiKhoanDto taiKhoanDto = this.service.thongTinChiTietTaiKhoan(maTaiKhoan);
        request.setAttribute("maTaiKhoan", maTaiKhoan);
        request.setAttribute("taiKhoanDto", taiKhoanDto);
        RequestDispatcher dispatcher = request.getRequestDispatcher("tai-khoan-tim-thong-tin.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void hienThiThemThaiKhoan(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("tai-khoan-them-tai-khoan.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void hienThiSuaTaiKhoan(HttpServletRequest request, HttpServletResponse response) {
        int maTaiKhoan = Integer.parseInt(request.getParameter("maTaiKhoan"));
        request.setAttribute("maTaiKhoan", maTaiKhoan);
        RequestDispatcher dispatcher = request.getRequestDispatcher("tai-khoan-sua-tai-khoan.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void hienThiDanhSach(HttpServletRequest request, HttpServletResponse response) {
        List<TaiKhoan> list = this.service.hienThiDanhSach();
        request.setAttribute("list", list);
        RequestDispatcher dispatcher = request.getRequestDispatcher("tai-khoan-hien-thi-danh-sach.jsp");
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
            case "suaTaiKhoan":
                suaTaiKhoan(request, response);
                break;
            case "themTaiKhoan":
                themTaiKhoan(request, response);
                break;
            case "xoaTaiKhoan":
                xoaTaiKhoan(request, response);
                break;
            case "dangNhap":
                dangNhap(request, response);
                break;
        }
    }

    private void dangXuat(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("trang-chu.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

    }

    private void dangNhap(HttpServletRequest request, HttpServletResponse response) {
        String tenTaiKhoan = request.getParameter("tenTaiKhoan").toLowerCase();
        String matKhau = request.getParameter("matKhau");
        String role = tenTaiKhoan;
        Boolean flag = this.service.dangNhap(tenTaiKhoan, matKhau);
        try {
            if (role.equals("admin") && matKhau.equals("admin")) {
                RequestDispatcher dispatcher = request.getRequestDispatcher("tai-khoan-hien-thi-danh-sach.jsp");
                dispatcher.forward(request, response);
            }
            if (flag) {
                RequestDispatcher dispatcher = request.getRequestDispatcher("danh-sach-tre-em.jsp");
                dispatcher.forward(request, response);
            } else {
                String saiThongTin = "Sai tên đăng nhập hoặc mật khẩu";
                request.setAttribute("saiThongTin", saiThongTin);
                RequestDispatcher dispatcher = request.getRequestDispatcher("dang-nhap.jsp");
                dispatcher.forward(request, response);
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        }
    }

    private void xoaTaiKhoan(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        this.service.xoaTaiKhoan(id);
        try {
            response.sendRedirect("tai-khoan-hien-thi-danh-sach.jsp");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

    }

    private void themTaiKhoan(HttpServletRequest request, HttpServletResponse response) {
        String tenTaiKhoan = request.getParameter("tenTaiKhoan");
        String matKhau = request.getParameter("matKhau");
        int maNguoiNuoi = Integer.parseInt(request.getParameter("maNguoiNuoi"));
        TaiKhoan taiKhoan = new TaiKhoan(tenTaiKhoan, matKhau, maNguoiNuoi);
        this.service.themTaiKhoan(taiKhoan);
        try {
            response.sendRedirect("trang-chu.jsp");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void suaTaiKhoan(HttpServletRequest request, HttpServletResponse response) {
        int maTaiKhoan = Integer.parseInt(request.getParameter("maTaiKhoan"));
        String matKhau = request.getParameter("matKhau");
        TaiKhoan capNhat = new TaiKhoan(maTaiKhoan, matKhau);
        this.service.suaTaiKhoan(capNhat);
        try {
            response.sendRedirect("trang-chu.jsp");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}