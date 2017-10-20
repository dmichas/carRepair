package com.carRepair.carRepair.Web.AdminControllers;

import com.carRepair.carRepair.Domain.Member;
import com.carRepair.carRepair.Exceptions.UserNotFoundException;
import com.carRepair.carRepair.Forms.SearchForm;
import com.carRepair.carRepair.Services.SearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class SearchController {

    private static final String SEARCH_FORM = "searchForm";


    @Autowired
    private SearchService searchService;


    @RequestMapping(value = "/admin/search-user", method = RequestMethod.GET)
    public String searchUser(Model model){


        model.addAttribute(SEARCH_FORM, new SearchForm());
        return "/admin/user/search-user";
    }

    @RequestMapping(value = "/admin/search-user", method = RequestMethod.POST)
    public String searchUserPost(Model model , @ModelAttribute(SEARCH_FORM) SearchForm searchForm){
        Member member = null;
        try {
            member = searchService.getMemberByVatOrMail(searchForm.getVat(), searchForm.getEmail());
        }catch(UserNotFoundException userNotFound){
            System.out.println("User not Found controller" + userNotFound);

        }
        model.addAttribute("member",member);
        return "/admin/user/update-user";
    }
}