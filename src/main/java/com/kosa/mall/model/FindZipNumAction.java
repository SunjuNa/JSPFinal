package com.kosa.mall.model;

import java.io.IOException;
import java.util.ArrayList;

import com.kosa.dao.AddressDAO;
import com.kosa.dto.AddressVO;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class FindZipNumAction implements Action{

  @Override
  public void execute(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {		  
    String url="member/findZipNum.jsp";
    
    String dong=request.getParameter("dong");
    
    if(dong!=null && dong.trim().equals("")==false){
      AddressDAO addressDAO=AddressDAO.getInstance();      
      ArrayList<AddressVO> addressList = addressDAO.selectAddressByDong(dong.trim());      
      request.setAttribute("addressList", addressList);
    }
    
    RequestDispatcher dispatcher=request.getRequestDispatcher(url);
    dispatcher.forward(request, response);    
  }
}
