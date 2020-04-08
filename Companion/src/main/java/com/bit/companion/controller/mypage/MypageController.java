package com.bit.companion.controller.mypage;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bit.companion.model.entity.login.MemberVo;
import com.bit.companion.model.entity.mypage.MyCartOrderList;
import com.bit.companion.model.entity.mypage.MypageCartVo;
import com.bit.companion.service.mypage.MypageService;

@Controller
public class MypageController {
	
	@Autowired
	MypageService mypageService;

	@RequestMapping("/mypagechk")
	public String mypageChk(HttpSession session) {
		MemberVo bean=(MemberVo) session.getAttribute("memberVo");
		if(bean==null) {
			return "redirect:/login";
		}
		return "mypage/mypagechk";
	}
	
	@RequestMapping(value="/mypagechk",method=RequestMethod.POST)
	public String loginChk(HttpSession session) {
		MemberVo bean=(MemberVo) session.getAttribute("memberVo");
		if(bean==null) {
			return "redirect:/login";
		}
		return "mypage/mypage";
	}
	
	@RequestMapping("/mypage")
	public String mypage(HttpSession session) {
		MemberVo bean=(MemberVo) session.getAttribute("memberVo");
		if(bean==null) {
			return "redirect:/login";
		}
		return "mypage/mypage";
	}
	
	@RequestMapping("/mypagequestion")
	public String mypagequestion(HttpSession session) {
		MemberVo bean=(MemberVo) session.getAttribute("memberVo");
		if(bean==null) {
			return "redirect:/login";
		}
		mypageService.questionList(session);
		return "mypage/mypagequestion";
	}
	
	@RequestMapping("/mypagereserve")
	public String mypagereserve(HttpSession session) {
		MemberVo bean=(MemberVo) session.getAttribute("memberVo");
		if(bean==null) {
			return "redirect:/login";
		}
		mypageService.reserveList(session);
		return "mypage/mypagereserve";
	}
	
	@RequestMapping(value="/mycart")
	public String mypagecart(HttpSession session) {
		MemberVo bean=(MemberVo) session.getAttribute("memberVo");
		if(bean==null) {
			return "redirect:/login";
		}
		mypageService.cartList(session);
		return "mypage/shoppingCart";
	}
	
	@RequestMapping(value="/mycart",method=RequestMethod.POST)
	public String myCartOrderRequest(@ModelAttribute(value="data-cartNum") MyCartOrderList cartOrderList,HttpSession session) {
		MemberVo bean=(MemberVo) session.getAttribute("memberVo");
		List<MypageCartVo> cartList=(List) session.getAttribute("cartList");
		String cart_id="";
		List<MypageCartVo> orderList=new ArrayList<>();
		if(bean==null) {
			return "redirect:/login";
		}
		for(int i=0;i<cartOrderList.getList().size();i++) {
			if(cartOrderList.getList().get(i)==null) {
				continue;
			}
			cart_id=cartOrderList.getList().get(i);
			for(int j=0; j<cartList.size();j++) {
				MypageCartVo bean2=(MypageCartVo) cartList.get(j);
				System.out.println("원래대상 cart_id : "+cart_id+"/ 비교대상 cart_id : "+bean2.getCart_id());
				if(cart_id.equals(bean2.getCart_id())) {
					orderList.add(bean2);
				}
			}
		}
		System.out.println(orderList.toString());
		return "mypage/cartPurchase";
	}
	
	@RequestMapping(value="/mycartorder")
	public String myCartOrder(HttpSession session) {
		MemberVo bean=(MemberVo) session.getAttribute("memberVo");
		if(bean==null) {
			return "redirect:/login";
		}
		return "mypage/cartPurchase";
	}

	@ResponseBody
	@RequestMapping(value="/mypage/pwchange",method=RequestMethod.POST)
	public int pwChange(String pw_change,String id_chk,HttpSession session) {
		if(mypageService.pwChange(pw_change, id_chk)==1) {
			MemberVo memberVo=(MemberVo)session.getAttribute("memberVo");
			memberVo.setMember_pw(pw_change);
			session.setAttribute("memberVo", memberVo);
		}
		return mypageService.pwChange(pw_change,id_chk);
	}
	
	@ResponseBody
	@RequestMapping(value="/mypage/telchange",method=RequestMethod.POST)
	public int telChange(String tel_change,String id_chk,HttpSession session) {
		if(mypageService.telChange(tel_change, id_chk)==1) {
			MemberVo memberVo=(MemberVo)session.getAttribute("memberVo");
			memberVo.setMember_tel(tel_change);
			session.setAttribute("memberVo", memberVo);
		}
		return mypageService.telChange(tel_change,id_chk);
	}
	
	@ResponseBody
	@RequestMapping(value="/mypage/phonechange",method=RequestMethod.POST)
	public int phoneChange(String phone_change,String id_chk,HttpSession session) {
		if(mypageService.phoneChange(phone_change, id_chk)==1) {
			MemberVo memberVo=(MemberVo)session.getAttribute("memberVo");
			memberVo.setMember_phone(phone_change);
			session.setAttribute("memberVo", memberVo);
		}
		return mypageService.phoneChange(phone_change,id_chk);
	}
	
	@ResponseBody
	@RequestMapping(value="/mypage/emailchange",method=RequestMethod.POST)
	public int emailChange(String email_change,String id_chk,HttpSession session) {
		if(mypageService.emailChange(email_change, id_chk)==1) {
			MemberVo memberVo=(MemberVo)session.getAttribute("memberVo");
			memberVo.setMember_email(email_change);
			session.setAttribute("memberVo", memberVo);
		}
		return mypageService.emailChange(email_change,id_chk);
	}
	
	@ResponseBody
	@RequestMapping(value="/mypage/addrchange",method=RequestMethod.POST)
	public int addrChange(String addr1_change,String addr2_change,String addr3_change,String id_chk,HttpSession session) {
		if(mypageService.addrChange(addr1_change,addr2_change,addr3_change, id_chk)==1) {
			MemberVo memberVo=(MemberVo)session.getAttribute("memberVo");
			memberVo.setMember_addr1(addr1_change);
			memberVo.setMember_addr2(addr2_change);
			memberVo.setMember_addr3(addr3_change);
			session.setAttribute("memberVo", memberVo);
		}
		return mypageService.addrChange(addr1_change,addr2_change,addr3_change,id_chk);
	}
	
	@ResponseBody
	@RequestMapping(value="/mypage/selectDeleteCart",method=RequestMethod.POST)
	public int selectDeleteCart(HttpSession session,@RequestParam(value="check[]") List<String> checkList) {
		System.out.println(checkList.toString());
		MemberVo member=(MemberVo)session.getAttribute("memberVo");
		String member_id=member.getMember_id();
		String cart_id="";
		int result=0;
		for(int i=0; i<checkList.size(); i++) {
			cart_id=checkList.get(i);
			result+=mypageService.selectDeleteCart(cart_id,member_id);
		}
		
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value="/mypage/cartChangeOption",method=RequestMethod.POST)
	public int changeOptionCart(HttpSession session,String change_option,String product_id) {
		MemberVo member=(MemberVo)session.getAttribute("memberVo");
		String member_id=member.getMember_id();
		int result=0;
		result=mypageService.changeOptionCart(change_option,product_id,member_id);
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value="/mypage/cartChangeQuantity",method=RequestMethod.POST)
	public int changeQuantityCart(HttpSession session,String change_quantity,String product_id) {
		MemberVo member=(MemberVo)session.getAttribute("memberVo");
		String member_id=member.getMember_id();
		int result=0;
		result=mypageService.changeQuantityCart(change_quantity,product_id,member_id);
		return result;
	}
}
