package com.carRepair.carRepair.Services;

import com.carRepair.carRepair.Domain.User;
import com.carRepair.carRepair.Repositories.AccountRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.AuthenticationException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
@Transactional
public class AccountServiceImpl implements AccountService{

    @Autowired
    private AccountRepository accountRepository;

    @Override
    public User login(String email, String password) throws Exception {
        System.out.println("Account Service");

           User user =  accountRepository.findByEmailAndPassword(email , password);
        if(user == null){
            System.out.println("Exception");
            throw new Exception("User not found!");
        }
        return user;

    }

    @Override
    public void logout(String username) throws Exception{


    }

}