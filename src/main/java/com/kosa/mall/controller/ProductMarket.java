package com.kosa.mall.controller;

import java.io.IOException;

import com.kosa.mall.model.Action;
import com.kosa.mall.model.ContractAction;
import com.kosa.mall.model.FindZipNumAction;
import com.kosa.mall.model.IdCheckFormAction;
import com.kosa.mall.model.IndexAction;
import com.kosa.mall.model.JoinAction;
import com.kosa.mall.model.JoinFormAction;
import com.kosa.mall.model.LoginAction;
import com.kosa.mall.model.LoginFormAction;
import com.kosa.mall.model.ProductDetailAction;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class ProductMarket extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String command = request.getParameter("command");
		Action action = new IndexAction();
		System.out.println("ProductMarketServlet  :" + command);

		if ("index".equals(command)) {
			action = new IndexAction();
		} else if ("login_form".equals(command)) {
			action = new LoginFormAction();
		} else if ("login".equals(command)) {
			action = new LoginAction();
		} else if ("product_detail".equals(command)) {
			action = new ProductDetailAction();
		}else if (command.equals("join_form")) {
		      action = new JoinFormAction();
	    }else if (command.equals("contract")) {
	        action = new ContractAction();
	    }else if (command.equals("id_check_form")) {
	        action = new IdCheckFormAction();
	    }else if (command.equals("find_zip_num")) {
	        action = new FindZipNumAction();
	    }else if (command.equals("join")) {
	        action = new JoinAction();
	    }

		if (action != null) {
			action.execute(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}
}