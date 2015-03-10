using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using School.BO;

namespace School.DAL
{
    public class StudentDal
    {
        SqlConnection cs = new SqlConnection("Data Source=SHUNNO-PC;Initial Catalog=SMS;User ID=sa;Password=123");
       // Student student = new Student();
        public bool StudentInfoSave(Student student)
        {
            bool status = false;
            try
            {
                SqlConnection cs = new SqlConnection("Data Source=SHUNNO-PC;Initial Catalog=SMS;User ID=sa;Password=123");
                cs.Open();
                SqlDataAdapter da = new SqlDataAdapter();

                da.InsertCommand = new SqlCommand("insert into StudentInfo(studentName,gender,fatherName,motherName,guardianName,phoneNo,address,studentClass,section,roll,addmissionYar) values(@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8,@p9,@p10,@p11)", cs);
                da.InsertCommand.Parameters.AddWithValue("@p1", student.studentName);
                da.InsertCommand.Parameters.AddWithValue("@p2", student.gender);
                da.InsertCommand.Parameters.AddWithValue("@p3", student.fatherName);
                da.InsertCommand.Parameters.AddWithValue("@p4", student.motherName);
                da.InsertCommand.Parameters.AddWithValue("@p5", student.guardianName);
                da.InsertCommand.Parameters.AddWithValue("@p6", student.phoneNo);
                da.InsertCommand.Parameters.AddWithValue("@p7", student.address);
                da.InsertCommand.Parameters.AddWithValue("@p8", student.studentClass);
                da.InsertCommand.Parameters.AddWithValue("@p9", student.section);
                da.InsertCommand.Parameters.AddWithValue("@p10", student.roll);
                da.InsertCommand.Parameters.AddWithValue("@p11", student.addmissionYar);
                da.InsertCommand.ExecuteNonQuery();
                da.Dispose();
                cs.Close();
                status = true;
            }
            catch (Exception)
            {
                
                throw;
            }
            
            return status;
        }

        internal DataTable View()
        {
            
            cs.Open();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = new SqlCommand("select * from StudentInfo", cs);
            da.SelectCommand.ExecuteNonQuery();
            cs.Close();
            DataTable dt = new DataTable();
            da.Fill(dt);
            da.Dispose();
            return dt;
        }

        public Student getStudentInfo(string id)
        {
            Student objStudent=new Student();
            cs.Open(); 
            SqlCommand com = new SqlCommand("select * from StudentInfo where studentID='"+ id + "'", cs); 
            SqlDataReader reader = com.ExecuteReader();
            while (reader.Read())
            {
                objStudent.studentID = reader["studentID"].ToString();
               objStudent.studentName = reader["studentName"].ToString();
               objStudent.fatherName = reader["fatherName"].ToString();
               objStudent.motherName = reader["motherName"].ToString();
               objStudent.guardianName = reader["guardianName"].ToString();
               objStudent.phoneNo = reader["phoneNo"].ToString();
               objStudent.address = reader["address"].ToString();
               objStudent.studentClass = reader["studentClass"].ToString();
               objStudent.section = reader["section"].ToString();
               objStudent.roll = reader["roll"].ToString();
               objStudent.addmissionYar = reader["addmissionYar"].ToString();
            }
            cs.Close();
            return objStudent;
        }

        public bool UpdateStudentInfo(Student objstudent)
        {
            bool status = false;
           
            try
            {
                cs.Open();
                SqlDataAdapter da = new SqlDataAdapter();

                da.UpdateCommand = new SqlCommand(@"update StudentInfo set studentName=@p1, gender=@p2, fatherName=@p3, motherName=@p4, guardianName=@p5, phoneNo=@p6, address=@p7, studentClass=@p8, section=@p9, roll=@p10, addmissionYar=@p11 
 where studentID='"+ objstudent.studentID + "'", cs);

                da.UpdateCommand.Parameters.AddWithValue("@p1", objstudent.studentName);
                da.UpdateCommand.Parameters.AddWithValue("@p2", objstudent.gender);
                da.UpdateCommand.Parameters.AddWithValue("@p3", objstudent.fatherName);
                da.UpdateCommand.Parameters.AddWithValue("@p4", objstudent.motherName);
                da.UpdateCommand.Parameters.AddWithValue("@p5", objstudent.guardianName);
                da.UpdateCommand.Parameters.AddWithValue("@p6", objstudent.phoneNo);
                da.UpdateCommand.Parameters.AddWithValue("@p7", objstudent.address);
                da.UpdateCommand.Parameters.AddWithValue("@p8", objstudent.studentClass);
                da.UpdateCommand.Parameters.AddWithValue("@p9", objstudent.section);
                da.UpdateCommand.Parameters.AddWithValue("@p10", objstudent.roll);
                da.UpdateCommand.Parameters.AddWithValue("@p11", objstudent.addmissionYar);
                da.UpdateCommand.ExecuteNonQuery();
                da.Dispose();
                cs.Close();
                status = true;
            }
            catch (Exception)
            {

                throw;
            }

            return status;
        }

        public bool DeleteStudentInfo(Student objstudent)
        {
            bool status = false;
            try
            {
                cs.Open();
                SqlDataAdapter da = new SqlDataAdapter();
                da.DeleteCommand = new SqlCommand("delete from StudentInfo where studentID='" + objstudent.studentID +
                "'", cs);
                da.DeleteCommand.ExecuteNonQuery();
                da.Dispose();
                cs.Close(); 
                status = true;
            }
            catch (Exception)
            {

                throw;
            }

            return status;
        }
    }
}