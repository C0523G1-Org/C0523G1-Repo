package com.example.nuoiemproject.tai_khoan.controller;

import com.example.nuoiemproject.nguoi_nuoi.model.NguoiNuoi;
import com.example.nuoiemproject.nguoi_nuoi.service.INguoiNuoiService;
import com.example.nuoiemproject.nguoi_nuoi.service.NguoiNuoiService;
import com.example.nuoiemproject.tai_khoan.model.TaiKhoan;
import com.example.nuoiemproject.tai_khoan.model.TaiKhoanDto;
import com.example.nuoiemproject.tai_khoan.service.ITaiKhoanService;
import com.example.nuoiemproject.tai_khoan.service.impl.TaiKhoanService;
import com.example.nuoiemproject.tre_em.model.TreEm;
import com.example.nuoiemproject.tre_em.service.ITreEmService;
import com.example.nuoiemproject.tre_em.service.impl.TreEmService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@WebServlet(name = "TaiKhoanServlet", value = "/tai-khoan")
public class TaiKhoanServlet extends HttpServlet {
    private ITaiKhoanService service = new TaiKhoanService();
    private INguoiNuoiService nguoiNuoiService = new NguoiNuoiService();
    private ITreEmService treEmService = new TreEmService();

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
        String tenTaiKhoan = request.getParameter("tenTaiKhoan");
        request.setAttribute("maTaiKhoan", maTaiKhoan);
        request.setAttribute("tenTaiKhoan", tenTaiKhoan);
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
//        RequestDispatcher dispatcher = request.getRequestDispatcher("nuoi-em-trang-chu.jsp");
//        try {
//            dispatcher.forward(request, response);
//        } catch (ServletException e) {
//            throw new RuntimeException(e);
//        } catch (IOException e) {
//            throw new RuntimeException(e);
//        }
        try {
            response.sendRedirect("nuoi-em-trang-chu.jsp");
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
                List<TaiKhoan> list = this.service.hienThiDanhSach();
                request.setAttribute("list", list);
                RequestDispatcher dispatcher = request.getRequestDispatcher("tai-khoan-hien-thi-danh-sach.jsp");
                dispatcher.forward(request, response);
            }
            if (flag) {
                int maTaiKhoan = this.service.guiMaTaiKhoan(tenTaiKhoan);
                request.setAttribute("maTaiKhoan", maTaiKhoan);
                request.setAttribute("tenTaiKhoan", tenTaiKhoan);
                RequestDispatcher dispatcher = request.getRequestDispatcher("nuoi-em-dang-nhap.jsp");
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
        int maTaiKhoan = Integer.parseInt(request.getParameter("maTaiKhoan"));
        this.service.xoaTaiKhoan(maTaiKhoan);
        try {
            response.sendRedirect("/tai-khoan?action=hienThi");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

    }

    private void themTaiKhoan(HttpServletRequest request, HttpServletResponse response) {
        String tenTaiKhoan = request.getParameter("tenTaiKhoan").toLowerCase();
        String tenNguoiDung = request.getParameter("tenNguoiDung");
        int gioiTinh = Integer.parseInt(request.getParameter("gioiTinh"));
        String email = request.getParameter("email");
        int soDienThoai = Integer.parseInt(request.getParameter("soDienThoai"));
        String matKhau = request.getParameter("matKhau");


        //validate
        String soDienThoaiDung = "^(0\\d{9})$";
        Pattern pattern = Pattern.compile(soDienThoaiDung);
        Matcher matcher = pattern.matcher(request.getParameter("soDienThoai"));
        String emailDung = "^[A-Za-z0-9]+[A-Za-z0-9]*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)$";
        Pattern pattern1 = Pattern.compile(emailDung);
        Matcher matcher1 = pattern1.matcher(email);

        try {
            if (!matcher.matches()) {
                request.setAttribute("tenTaiKhoan", tenTaiKhoan);
                request.setAttribute("tenNguoiDung", tenNguoiDung);
                request.setAttribute("gioiTinh", gioiTinh);
                request.setAttribute("email", email);
                request.setAttribute("soDienThoai", soDienThoai);
                request.setAttribute("loi", "Số điện thoại không hợp lệ!");
                RequestDispatcher dispatcher = request.getRequestDispatcher("tai-khoan-them-tai-khoan.jsp");
                dispatcher.forward(request, response);
            } else if (!matcher1.matches()) {
                request.setAttribute("tenTaiKhoan", tenTaiKhoan);
                request.setAttribute("tenNguoiDung", tenNguoiDung);
                request.setAttribute("gioiTinh", gioiTinh);
                request.setAttribute("email", email);
                request.setAttribute("soDienThoai", soDienThoai);
                request.setAttribute("loi1", "Email không hợp lệ!");
                RequestDispatcher dispatcher = request.getRequestDispatcher("tai-khoan-them-tai-khoan.jsp");
                dispatcher.forward(request, response);
            } else {
                //form confirm
                if (!this.service.taiKhoanDaTonTai(tenTaiKhoan)) {
                    request.setAttribute("tenNguoiDung", tenNguoiDung);
                    request.setAttribute("gioiTinh", gioiTinh);
                    request.setAttribute("email", email);
                    request.setAttribute("soDienThoai", soDienThoai);
                    request.setAttribute("taiKhoanDaTonTai", "Tên tài khoản đã tồn tại");
                    RequestDispatcher dispatcher = request.getRequestDispatcher("tai-khoan-them-tai-khoan.jsp");
                    try {
                        dispatcher.forward(request, response);
                    } catch (ServletException e) {
                        throw new RuntimeException(e);
                    } catch (IOException e) {
                        throw new RuntimeException(e);
                    }
                } else {
                    String nhapLaiMatKhau = request.getParameter("nhapLaiMatKhau");
                    if (matKhau.equals(nhapLaiMatKhau)) {
                        TaiKhoan taiKhoan = new TaiKhoan(tenTaiKhoan, matKhau);
                        NguoiNuoi nguoiNuoi = new NguoiNuoi(tenNguoiDung, gioiTinh, soDienThoai, email);
                        this.service.themTaiKhoan(taiKhoan, nguoiNuoi);
                        request.setAttribute("thanhCong", "Bạn đã thêm mới thành công!");
                        try {
                            response.sendRedirect("nuoi-em-trang-chu.jsp");
                        } catch (IOException e) {
                            throw new RuntimeException(e);
                        }
                    } else {
                        request.setAttribute("tenTaiKhoan", tenTaiKhoan);
                        request.setAttribute("tenNguoiDung", tenNguoiDung);
                        request.setAttribute("gioiTinh", gioiTinh);
                        request.setAttribute("email", email);
                        request.setAttribute("soDienThoai", soDienThoai);
                        request.setAttribute("saiMatKhau", "Xác nhận mật khẩu sai");
                        RequestDispatcher dispatcher = request.getRequestDispatcher("tai-khoan-them-tai-khoan.jsp");
                        try {
                            dispatcher.forward(request, response);
                        } catch (ServletException e) {
                            throw new RuntimeException(e);
                        } catch (IOException e) {
                            throw new RuntimeException(e);
                        }
                    }
                }
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        }
    }

    private void suaTaiKhoan(HttpServletRequest request, HttpServletResponse response) {
        int maTaiKhoan = Integer.parseInt(request.getParameter("maTaiKhoan"));
        String matKhau = request.getParameter("matKhau");
        String xacNhanMatKhau = request.getParameter("xacNhanMatKhau");
        String tenTaiKhoan = request.getParameter("tenTaiKhoan");
        if (matKhau.equals(xacNhanMatKhau)) {
            request.setAttribute("tenTaiKhoan", tenTaiKhoan);
            TaiKhoan taiKhoan = new TaiKhoan(maTaiKhoan, matKhau);
            this.service.suaTaiKhoan(taiKhoan);
            try {
                response.sendRedirect("nuoi-em-trang-chu.jsp");
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        } else {
            String thongBao = "Xác nhận mật khẩu sai";
            request.setAttribute("thongBao", thongBao);
            RequestDispatcher dispatcher = request.getRequestDispatcher("tai-khoan-sua-tai-khoan.jsp");
            try {
                dispatcher.forward(request, response);
            } catch (ServletException e) {
                throw new RuntimeException(e);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }

}