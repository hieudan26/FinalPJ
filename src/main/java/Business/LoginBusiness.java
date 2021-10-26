package Business;

import DAO.AccountDAO;
import DTO.UserAccountDTO;
import Model.AccountsEntity;
import Model.RolesEntity;
import Model.UsersEntity;

public class LoginBusiness {
    public static UserAccountDTO getUserLogin(String username, String password){
        AccountsEntity acc = AccountDAO.Login(username, password);
        if(acc == null )
            return null;
        UsersEntity user =  acc.getUsersEntity();
        RolesEntity role = acc.getRolesEntity();
        return new UserAccountDTO(user,role);

    }
}
