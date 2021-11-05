package Business;

import DAO.UserDAOImpl;
import DTO.AddressDTO;
import Model.AccountsEntity;
import Model.UsersEntity;
import Utils.SingletonServiceUltils;

public class AccountBusiness {
    public static AddressDTO getaddressDTO(int id){
        UsersEntity user = SingletonServiceUltils.getUserDAOImpl().getOneById(id);
        if(user == null)
            return null;
        else{
            AddressDTO address = new AddressDTO(user.getAddress());
            return address;
        }
    }

    public static boolean UpdateInfo(String firstname,String lastname ,int id,AddressDTO addressDTO)
    {
        UsersEntity users =(UsersEntity) SingletonServiceUltils.getUserDAOImpl().getOneById(id);
        String address = addressDTO.toString();
        users.setFirstName(firstname);
        users.setLastName(lastname);
        users.setAddress(address);
        UsersEntity userUpdate = SingletonServiceUltils.getUserDAOImpl().update(users);
        return userUpdate!=null;
    }

    public static AccountsEntity CheckPassword(int id, String old_pass)
    {
        UsersEntity users = SingletonServiceUltils.getUserDAOImpl().getOneById(id);
        AccountsEntity acc = users.getAccountsEntity();
        if(old_pass.equals(acc.getPassword()))
            return acc;
        return null;
    }
}
