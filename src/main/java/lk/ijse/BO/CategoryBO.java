package lk.ijse.BO;

import lk.ijse.DTO.CategoryDTO;
import lk.ijse.Entity.Category;

import java.sql.SQLException;
import java.util.List;


public interface CategoryBO extends SuperBO{
    boolean save(CategoryDTO dto) throws Exception;

    boolean update(CategoryDTO dto) throws Exception;

    boolean delete(String ID) throws Exception;

    List<CategoryDTO> getAll() throws SQLException, ClassNotFoundException;

    Category searchByID(String id) throws SQLException, ClassNotFoundException;
}
