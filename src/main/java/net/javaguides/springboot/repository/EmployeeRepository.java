package net.javaguides.springboot.repository;

import net.javaguides.springboot.model.Employee;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Long> {

    @Query("SELECT e FROM Employee e WHERE CONCAT(e.firstName, ' ', e.lastName, ' ', e.email) LIKE %:keyword%")
    public Page<Employee> findAll(@Param("keyword") String keyword, Pageable pageable);
}
