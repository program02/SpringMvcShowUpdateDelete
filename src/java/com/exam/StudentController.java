/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam;

import javax.servlet.ServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Student
 */
@Controller
public class StudentController {

    @RequestMapping("/")
    public String home() {
        return "index";
    }

    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    public String insert(@ModelAttribute() Student student, Model m) {
        StudentDao d = new StudentDao();
        d.insert(student);
        m.addAttribute("students", d.show());
        return "result";
    }

    @RequestMapping(value = "/show")
    public String show(@ModelAttribute() Student student, Model m) {
        StudentDao d = new StudentDao();
        m.addAttribute("students", d.show());
        return "result";
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String update(@ModelAttribute() Student student, Model m) {
        StudentDao d = new StudentDao();
        d.update(student);
        m.addAttribute("students", d.show());
        return "result";
    }
        @RequestMapping(value = "/updatef", method = RequestMethod.POST)
    public String updatef(@ModelAttribute() Student student, Model m) {
        m.addAttribute("s", student);
        return "updatef";
    }

    @RequestMapping(value = "/delete")
    public String delete(@ModelAttribute() Student student, Model m) {
        StudentDao d = new StudentDao();
        d.delete(student);
        m.addAttribute("students", d.show());
        return "result";
    }
}
