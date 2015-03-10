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
    public partial class UpdateStudentInfo1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string ID = Request.QueryString["id"].ToString();
                StudentDal objStudentDal = new StudentDal();
                dynamic value = objStudentDal.getStudentInfo(ID);
                txtbxStudentName.Text = value.studentName;
                DropDownListGender.Text = value.gender;
                txtbxFatherName.Text = value.fatherName;
                txtbxaddress.Text = value.address;
                txtbxAdmissionYar.Text = value.addmissionYar;
                txtbxStudentClass.Text = value.studentClass;
                txtbxSection.Text = value.section;
                txtbxRoll.Text = value.roll;
                txtbxGuardianName.Text = value.guardianName;
                txtbxPhoneNo.Text = value.phoneNo;
                txtbxMotherName.Text = value.motherName;
                txtbxID.Text = ID;
            }
        }

        protected void btnView_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentInfo.aspx");
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            Student objstudent = new Student();
            objstudent.studentID = txtbxID.Text;
            objstudent.studentName = txtbxStudentName.Text;
            objstudent.fatherName = txtbxFatherName.Text;
            objstudent.motherName = txtbxMotherName.Text;
            objstudent.address = txtbxaddress.Text;
            objstudent.guardianName = txtbxGuardianName.Text;
            objstudent.studentClass = txtbxStudentClass.Text;
            objstudent.section = txtbxSection.Text;
            objstudent.roll = txtbxRoll.Text;
            objstudent.addmissionYar = txtbxAdmissionYar.Text;
            objstudent.phoneNo = txtbxPhoneNo.Text;
            objstudent.gender = DropDownListGender.Text;

            StudentDal sd = new StudentDal();
            bool status = sd.UpdateStudentInfo(objstudent);
            if (status)
            {
                lblMessage.Text = "Data Updated Successfully";
                lblMessage.ForeColor = Color.Green;
                lblMessage.Font.Size = 12;
            }

            else
            {
                lblMessage.Text = "Data Update Failed";
                lblMessage.ForeColor = Color.Red;
                lblMessage.Font.Size = 12;
            }

            Response.Redirect("StudentInfo.aspx");
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            Student objstudent = new Student();
            objstudent.studentID = txtbxID.Text;
            StudentDal sd = new StudentDal();
            bool status = sd.DeleteStudentInfo(objstudent);
            if (status)
            {
                lblMessage.Text = "Data Deleted Successfully";
                lblMessage.ForeColor = Color.Green;
                lblMessage.Font.Size = 12;
            }

            else
            {
                lblMessage.Text = "Data Delete Failed";
                lblMessage.ForeColor = Color.Red;
                lblMessage.Font.Size = 12;
            }
            Response.Redirect("StudentInfo.aspx");
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentInfo.aspx");
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtbxStudentName.Text = "";
            txtbxFatherName.Text = "";
            txtbxMotherName.Text = "";
            txtbxGuardianName.Text = "";
            txtbxPhoneNo.Text = "";
            txtbxaddress.Text = "";
            txtbxAdmissionYar.Text = "";
            txtbxStudentClass.Text = "";
            txtbxSection.Text = "";
            txtbxRoll.Text = "";
        }
    }
}