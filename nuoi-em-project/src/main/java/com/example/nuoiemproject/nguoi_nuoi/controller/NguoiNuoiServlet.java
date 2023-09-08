package com.example.nuoiemproject.nguoi_nuoi.controller;

import com.example.nuoiemproject.nguoi_nuoi.model.NguoiNuoi;
import com.example.nuoiemproject.nguoi_nuoi.model.NguoiNuoiDto;
import com.example.nuoiemproject.nguoi_nuoi.service.INguoiNuoiService;
import com.example.nuoiemproject.nguoi_nuoi.service.NguoiNuoiService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.ResultSet;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@WebServlet(name = "NguoiNuoiServlet", value = "/nguoi-nuoi")
public class NguoiNuoiServlet extends HttpServlet {
    private INguoiNuoiService service = new NguoiNuoiService();

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
            case "xemTre":
                hienThiXemTre(request,response);
                break;
            default:
                hienThiDanhSach(request, response);
                break;
        }
    }

    private void hienThiXemTre(HttpServletRequest request, HttpServletResponse response) {
        int maNguoiNuoi = Integer.parseInt(request.getParameter("maTaiKhoan"));
        List<NguoiNuoiDto> danhSachTre = service.xemTreEmNhan(maNguoiNuoi);
        if(danhSachTre.isEmpty()){
            String thongBao = "Chưa nhận trẻ nào!";
//            request.setAttribute("maTaiKhoan",maNguoiNuoi);
            request.setAttribute("thongBao", thongBao);
            try {
                request.getRequestDispatcher("/nguoi-nuoi-xem-tre.jsp").forward(request,response);
            } catch (ServletException e) {
                throw new RuntimeException(e);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
        else {
            request.setAttribute("danhSachTre",danhSachTre);
            try {
                request.getRequestDispatcher("/nguoi-nuoi-xem-tre.jsp").forward(request,response);
            } catch (ServletException e) {
                throw new RuntimeException(e);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }

    private void hienThiSua(HttpServletRequest request, HttpServletResponse response) {
        int maNguoiNuoi = Integer.parseInt(request.getParameter("maNguoiNuoi"));
        NguoiNuoi nguoiNuoi = service.xemChiTiet(maNguoiNuoi);
        request.setAttribute("nguoiNuoi", nguoiNuoi);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/nguoi-nuoi-sua-thong-tin.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void hienThiDanhSach(HttpServletRequest request, HttpServletResponse response) {
        List<NguoiNuoi> danhSach = service.hienThiDanhSach();
        request.setAttribute("danhSach", danhSach);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/nguoi-nuoi-danh-sach.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void hienThiThem(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/tai-khoan-them-tai-khoan.jsp");
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
                themNguoiNuoi(request, response);
                break;
            case "xoa":
                xoaNguoiNuoi(request, response);
                break;
            case "sua":
                suaNguoiNuoi(request, response);
                break;
            case "xemTre":
                xemTreEm(request, response);
                break;
        }
    }

    private void xemTreEm(HttpServletRequest request, HttpServletResponse response) {
        int maNguoiNuoi = Integer.parseInt(request.getParameter("maNguoiNuoi"));
        List<NguoiNuoiDto> danhSachTre = service.xemTreEmNhan(maNguoiNuoi);
        if(danhSachTre.isEmpty()){
            String thongBao = "Chưa nhận trẻ nào!";
            request.setAttribute("thongBao", thongBao);
            try {
                request.getRequestDispatcher("/nguoi-nuoi-xem-tre.jsp").forward(request,response);
            } catch (ServletException e) {
                throw new RuntimeException(e);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
        else {
            request.setAttribute("danhSachTre",danhSachTre);
            try {
                request.getRequestDispatcher("/nguoi-nuoi-xem-tre.jsp").forward(request,response);
            } catch (ServletException e) {
                throw new RuntimeException(e);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }

    private void suaNguoiNuoi(HttpServletRequest request, HttpServletResponse response) {
        int maNguoiNuoi = Integer.parseInt(request.getParameter("maNguoiNuoi"));
        String tenNguoiNuoi = request.getParameter("tenNguoiNuoi");
        int gioiTinh = Integer.parseInt(request.getParameter("gioiTinh"));
        int maTaiKhoan = Integer.parseInt(request.getParameter("maTaiKhoan"));
        int soDienThoai = Integer.parseInt(request.getParameter("soDienThoai"));
        String email = request.getParameter("email");
        NguoiNuoi nguoiNuoi = new NguoiNuoi(maNguoiNuoi,tenNguoiNuoi,gioiTinh,maTaiKhoan,soDienThoai,email);
        //        validate DL
        String soDienThoaiDung = "^[0-9]{10,12}$";
        Pattern pattern = Pattern.compile(soDienThoaiDung);
        Matcher matcher = pattern.matcher(request.getParameter("soDienThoai"));
        String emailDung = "^[A-Za-z0-9]+[A-Za-z0-9]*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)$";
        Pattern pattern1 = Pattern.compile(emailDung);
        Matcher matcher1 = pattern1.matcher(email);
        try {
            if (!matcher.matches()) {
                request.setAttribute("loi", "Số điện thoại không hợp lệ!");
                request.setAttribute("nguoiNuoi", nguoiNuoi);
                RequestDispatcher dispatcher = request.getRequestDispatcher("/nguoi-nuoi-sua-thong-tin.jsp");
                dispatcher.forward(request, response);
            } else if (!matcher1.matches()){
                request.setAttribute("loi1", "Email không hợp lệ!");
                request.setAttribute("nguoiNuoi", nguoiNuoi);
                RequestDispatcher dispatcher = request.getRequestDispatcher("/nguoi-nuoi-sua-thong-tin.jsp");
                dispatcher.forward(request, response);
            }
            else {
                service.sua(nguoiNuoi);
                request.setAttribute("thongBao", "Bạn đã sửa thông tin thành công!");
                RequestDispatcher dispatcher = request.getRequestDispatcher("/nguoi-nuoi-sua-thong-tin.jsp");
                dispatcher.forward(request,response);
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        }
    }

    private void xoaNguoiNuoi(HttpServletRequest request, HttpServletResponse response) {
        int ma_nguoi_nuoi = Integer.parseInt(request.getParameter("xoa_ma"));
        service.xoa(ma_nguoi_nuoi);
        try {
            response.sendRedirect("/nguoi-nuoi");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void themNguoiNuoi(HttpServletRequest request, HttpServletResponse response) {
        String tenNguoiNuoi = request.getParameter("tenNguoiNuoi");
        int gioiTinh = Integer.parseInt(request.getParameter("gioiTinh"));
        int maTaiKhoan = Integer.parseInt(request.getParameter("maTaiKhoan"));
        int soDienThoai = Integer.parseInt(request.getParameter("soDienThoai"));
        String email = request.getParameter("email");
        NguoiNuoi nguoiNuoi = new NguoiNuoi(tenNguoiNuoi, gioiTinh, maTaiKhoan, soDienThoai, email);

//        validate DL
        String soDienThoaiDung = "^(0\\d{9})$";
        Pattern pattern = Pattern.compile(soDienThoaiDung);
        Matcher matcher = pattern.matcher(request.getParameter("soDienThoai"));
        String emailDung = "^[A-Za-z0-9]+[A-Za-z0-9]*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)$";
        Pattern pattern1 = Pattern.compile(emailDung);
        Matcher matcher1 = pattern1.matcher(email);
        try {
            if (!matcher.matches()) {
                request.setAttribute("loi", "Số điện thoại không hợp lệ!");
                request.setAttribute("nguoiNuoi", nguoiNuoi);
                RequestDispatcher dispatcher = request.getRequestDispatcher("/nguoi-nuoi-them-moi.jsp");
                dispatcher.forward(request, response);
            } else if (!matcher1.matches()){
                request.setAttribute("loi1", "Email không hợp lệ!");
                request.setAttribute("nguoiNuoi", nguoiNuoi);
                RequestDispatcher dispatcher = request.getRequestDispatcher("/nguoi-nuoi-them-moi.jsp");
                dispatcher.forward(request, response);
            }
            else {
                service.them(nguoiNuoi);
                request.setAttribute("thongBao", "Bạn đã thêm mới thành công!");
                RequestDispatcher dispatcher = request.getRequestDispatcher("/nguoi-nuoi-them-moi.jsp");
                dispatcher.forward(request,response);
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        }
    }
}
