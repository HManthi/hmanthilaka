package usermanagement.controller;//package usermanagement.controller;
//
//import java.io.IOException;
//import java.text.ParseException;
//import java.text.SimpleDateFormat;
//import java.util.Date;
//
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
//import usermanagement.dao.UserDao;
//import usermanagement.dao.UserDaoHibernate;
//import usermanagement.domain.User;
//
//public class UserController extends HttpServlet {
//
//    private static final long serialVersionUID = 1L;
//
//    protected void doPost(HttpServletRequest request,
//            HttpServletResponse response) throws ServletException, IOException {
//
//        String userName = request.getParameter("userName");
//        String password = request.getParameter("password");
//        String roleId = request.getParameter("roleId");
//        String firstName = request.getParameter("firstName");
//        String lastName = request.getParameter("lastName");
//        String email = request.getParameter("email");
//        String phone = request.getParameter("phone");
//        String birthday = request.getParameter("birthday");
//        String departmentId = request.getParameter("departmentId");
//        String branchId = request.getParameter("branchId");
//
//        Date birthdate = null;
//		try {
//			if (birthday != null) {
//				birthdate = new SimpleDateFormat("dd/MM/yyyy").parse(birthday);
//			}
//
//		} catch (ParseException e1) {
//			// TODO Auto-generated catch block
//			e1.printStackTrace();
//		}
//
//
//        User user = new User(userName, password, (roleId != null ? Long.valueOf(roleId) : 0L),
//        		firstName, lastName, email, phone, birthdate,
//        		(departmentId !=null ? Long.valueOf(departmentId) : 0L),
//        		(branchId != null ? Long.valueOf(branchId) : 0L));
//
//        HttpSession session = request.getSession(true);
//        try {
//            UserDao userDao = new UserDaoHibernate();
//            userDao.addOrpdateUser(user);
//
//            response.sendRedirect("Success");
//        } catch (Exception e) {
//
//            e.printStackTrace();
//        }
//
//    }
//}
