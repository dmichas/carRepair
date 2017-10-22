package com.carRepair.carRepair.Services.User;

import com.carRepair.carRepair.Domain.User;
import com.carRepair.carRepair.Exceptions.UserNotFoundException;
import com.carRepair.carRepair.Repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

//When the application boot up it make an instance (singleton ) of all the @Repair classes
@Service
@Transactional
public class UserServiceImpl implements UserService {

    //When spring making an instance of the userService class it inject a userRepository instance
    @Autowired
    private UserRepository userRepository;

    public User insertUser(User user) throws Exception{

        User newUser = userRepository.save(user);
        if(newUser == null){
            throw new Exception("User already exists");
        }
        return newUser;
    }


    public User findUser(long id) throws Exception{
        User u = userRepository.findOne(id);
        return u;
    }

    public User getUserByEmail(String email) throws UserNotFoundException{
        User u = userRepository.findByEmail(email);
        if(u != null){return u;}else{throw new UserNotFoundException("Use not found by email");}
    }

    /*public List<User> allUsers(){
        List<User> users = userRepository.findAll();
        return users;
    }

    public User searchUser(long id){
        User user = userRepository.findOne(id);
        return user;
    }

    public void insertUser(User user){ userRepository.save(user); }

    public void updateUser(Long id , User user){ userRepository.save(user); }

    public void deleteUser(long id){
        userRepository.delete(id);
    }
*/
}