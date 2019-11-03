package com.report.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.report.dto.Student;
import org.springframework.stereotype.Component;

@Mapper
public interface StudentMapper {
    Student findOne(int student_no);
    Student findByStudentId(String student_id);
    List<Student> findAll();
    void insert(Student student);
    void update(Student student);
    void delete(int student_no);
}

