package net.javaguides.springboot.controller;

import net.javaguides.springboot.model.Employee;
import net.javaguides.springboot.service.IEmployeeService;
import net.javaguides.springboot.util.FileUploadUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.List;

@Controller
public class EmployeeController {

    @Autowired
    private IEmployeeService employeeService;

    @GetMapping("/")
    public String viewHomePage(Model model) {
        return findPaginated(model, 1,  "firstName", "asc", null);
    }

    @GetMapping("/showNewEmployeeForm")
    public String showNewEmployeeForm(Model model) {
        Employee employee = new Employee();
        model.addAttribute("employee", employee);
        return "employee_form";
    }

    @PostMapping("/saveEmloyee")
    public String saveEmloyee(@ModelAttribute("employee") Employee employee,
                              @RequestParam(value = "imageFile", required = false) MultipartFile multipartFile) throws IOException {
        String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
        if (multipartFile.getSize() > 0) {
            employee.setImage(fileName);
        } else {
//            Check update with no file upload
            if(employee.getId() != null) {
                fileName = employeeService.getEmployeeById(employee.getId()).getImage();
//                Already has image or no image
                if(fileName != null) {
                    employee.setImage(fileName);
                }
            }
        }

        Employee savedEmployee = employeeService.save(employee);

        if (multipartFile.getSize() > 0) {
            String uploadDir = "./images/employee-images/" + savedEmployee.getId();
            FileUploadUtil.saveFile(multipartFile, uploadDir, fileName);
        }

        return "redirect:/";
    }

    @GetMapping("/showFormForUpdate/{id}")
    public String showFormForUpdate(Model model, @PathVariable(value = "id") Long id) {
        Employee employee = employeeService.getEmployeeById(id);
        model.addAttribute("employee", employee);
        return "employee_form";
    }

    @GetMapping("/deleteEmployee/{id}")
    public String deleteEmployee(@PathVariable(value = "id") Long id) {
        employeeService.deleteById(id);
        return "redirect:/";
    }

    @GetMapping("/page/{pageNo}")
    public String findPaginated(Model model,
                                @PathVariable(value = "pageNo") Integer pageNo,
                                @RequestParam(value = "sortField", required = false, defaultValue = "firstName") String sortField,
                                @RequestParam(value = "sortDir", required = false, defaultValue = "asc") String sortDir,
                                @RequestParam(value = "keyword", required = false, defaultValue = "") String keyword) {
        Integer pageSize = 5;

        Page<Employee> page = employeeService.findPaginated(pageNo, pageSize, sortField, sortDir, keyword);
        List<Employee> listEmployees = page.getContent();

        model.addAttribute("currentPage", pageNo);
        model.addAttribute("totalPages", page.getTotalPages());
        model.addAttribute("totalItems", page.getTotalElements());
        model.addAttribute("listEmployees", listEmployees);

        model.addAttribute("sortField", sortField);
        model.addAttribute("sortDir", sortDir);
        model.addAttribute("reverseSortDir", sortDir.equals("asc") ?  "desc": "asc");

        model.addAttribute("keyword", keyword);

        return "index";
    }
}
