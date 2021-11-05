package DTO;

import Config.SecurityConfig;
import Model.AccountsEntity;
import Model.RolesEntity;
import Model.UsersEntity;

import java.util.*;

import static Constant.WebConstant.ROLE_ADMIN;
import static Constant.WebConstant.ROLE_USER;

public class UserAccountDTO {
    private int id;
    private String email;
    private String lastname;
    private String firstname;
    private Set<String> roles;

    public UserAccountDTO() {
    }


    public UserAccountDTO(int id, String email, String lasname, String firstname, Set<String> roles) {
        this.id = id;
        this.email = email;
        this.lastname = lasname;
        this.firstname = firstname;
        this.roles = new HashSet<String>();
        for(String role : roles){
            this.roles.add(role);
        }
    }

    public UserAccountDTO(UsersEntity user, RolesEntity role) {
        this.id = user.getId();
        this.email = user.getEmail();
        this.firstname = user.getFirstName();
        this.lastname = user.getLastName();

        this.roles = new HashSet<String>();
        if(role != null)
        {
            this.roles.add(ROLE_USER);
            if(role.getName() == "admin")
                this.roles.add(ROLE_ADMIN);
        }

    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lasname) {
        this.lastname = lasname;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public Set<String> getRoles() {
        return roles;
    }

    public void setRoles(Set<String> roles) {
        this.roles = roles;
    }

}
