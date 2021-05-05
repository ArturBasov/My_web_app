package com.arturbasov.my_web_app.entity;

import javax.persistence.*;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Entity
@Table(name = "employees")
public class Employee {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "name")
    @Size(min = 2, message = "Name must be min 2 symbols")
    private String name;

    @Column(name = "surname")
    private String surname;

    @Column(name = "department")
    @NotEmpty(message = "Department is required field")
    private String department;

    @Column(name = "salary")
    @Min(value = 1, message = "Must be greater than 0")
    private int salary;

    @Column(name = "phone_number")
    @Pattern(regexp = "\\+\\d{3} \\(\\d{2}\\) \\d{3}-\\d{2}-\\d{2}", message = "Please use pattern +XXX (XX) XXX-XX-XX")
    private String phoneNumber;

    public Employee() {
    }

    public Employee(String name, String surname, String department, int salary, String phoneNumber) {
        this.name = name;
        this.surname = surname;
        this.department = department;
        this.salary = salary;
        this.phoneNumber = phoneNumber;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public int getSalary() {
        return salary;
    }

    public void setSalary(int salary) {
        this.salary = salary;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }
}
