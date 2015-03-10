using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using School.BO;
using School.DAL;
using System.Drawing;

namespace School
{
    public partial class UpdateStudentInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Student student = new Student();
            student.studentName = txtbxStudentName.Text;
            student.fatherName = txtbxFatherName.Text;
            student.motherName = txtbxMotherName.Text;
            student.address = txtbxaddress.Text;
            student.guardianName = txtbxGuardianName.Text;
            student.studentClass = txtbxStudentClass.Text;
            student.section = txtbxSection.Text;
            student.roll = txtbxRoll.Text;
            student.addmissionYar = txtbxAdmissionYar.Text;
            student.phoneNo = txtbxPhoneNo.Text;
            student.gender = DropDownListGender.Text;

            StudentDal sd = new StudentDal();
            bool status = sd.StudentInfoSave(student);
            if (status)
            {
                lblMessage.Text = "Data Saved Successfully";
                lblMessage.ForeColor = Color.Green;
                lblMessage.Font.Size = 12;
            }

            else
            {
                lblMessage.Text = "Data Save Failed";
                lblMessage.ForeColor = Color.Red;
                lblMessage.Font.Size = 12;
            }
        }

        protected void btnView_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentInfo.aspx");
        }

        
    }
}