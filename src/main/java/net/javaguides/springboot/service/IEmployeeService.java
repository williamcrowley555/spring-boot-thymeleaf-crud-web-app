package net.javaguides.springboot.service;

import net.javaguides.springboot.model.Employee;
import org.springframework.data.domain.Page;

import java.util.List;

public interface IEmployeeService {
    List<Employee> findAll();
    Employee save(Employee employee);
    Employee getEmployeeById(Long id);
    void deleteById(Long id);
    Page<Employee> findPaginated(int pageNo, int pageSize, String sortField, String sortDirection, String keyword);
}
