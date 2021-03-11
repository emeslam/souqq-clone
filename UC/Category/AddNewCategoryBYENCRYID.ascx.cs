using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UC_Category_AddNewCategory : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

        //int id = 1;
        //try
        //{
        //    GetNextCategory();
        //}
        //catch (Exception)
        //{

        //    txtCatID.Text = id.ToString();
        //}

    }

    //public void GetNextCategory()
    //{

    //    using (SouqNewEntities db=new SouqNewEntities ())
    //    {
    //        var alldata = (from tbl in db.Category select tbl.CatId).Max() + 1;
    //        txtCatID.Text = alldata.ToString();
    //    }
    //}




    protected void Button1_Click(object sender, EventArgs e)
    {
        //int ID = int.Parse(txtCatID.Text);
        string catName = txtCategory.Text;
        string description = txtDescription.Text;

        using (SouqNewEntities db = new SouqNewEntities())
        {




            if (txtCategory.Text == string.Empty || txtDescription.Text == string.Empty)
            {
                lblResult.Visible = true;
                lblResult.Text = " ..... no data found ............";
                lblResult.ForeColor = System.Drawing.Color.Red;
                IMGCatName.Visible = true;
                IMGDESC.Visible = true;
            }

            else
            {

                try
                {

                    int rowaffected = db.AddNewCategory(catName, description);

                    if (rowaffected > 0)
                    {

                        lblResult.Visible = true;
                        lblResult.Text = "Add new Category";
                        lblResult.ForeColor = System.Drawing.Color.Green;

                        IMGCatName.Visible = false;
                        IMGDESC.Visible = false;


                        if (FileUpload1.HasFile)
                        {
                            FileUpload1.SaveAs(Server.MapPath("../CategoryPhoto" + "/" + txtCategory.Text + ".jpg"));
                            Image1.ImageUrl = "../../CategoryPhoto/" + txtCategory.Text + ".jpg";
                            lblPhoto.Visible = true;
                            lblPhoto.Text = "Upload Category Successfully";
                        }



                        //GetNextCategory();
                        txtCategory.Text = "";
                        txtDescription.Text = null;





                    }


                }
                catch (Exception)
                {
                    lblResult.Visible = true;
                    lblResult.Text = "this name is Already Exist";
                    lblResult.ForeColor = System.Drawing.Color.Red;

                }





            }




        }




    }




}