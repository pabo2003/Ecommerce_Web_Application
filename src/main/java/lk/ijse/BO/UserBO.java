package lk.ijse.BO;

import lk.ijse.DTO.UserDTO;
import lk.ijse.Entity.User;

import java.sql.SQLException;
import java.util.List;


public interface UserBO extends SuperBO{

    boolean save(UserDTO dto) throws Exception;

    boolean update(UserDTO dto) throws Exception;

    boolean delete(String ID) throws Exception;

    List<User> getAll() throws SQLException, ClassNotFoundException;

    User searchByEmail(String email) throws SQLException, ClassNotFoundException;
}
