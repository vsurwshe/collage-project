using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class Graph : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Chart1_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string m1 = DropDownList4.SelectedItem.Text;
        string m2 = DropDownList3.SelectedItem.Text;
        string m3 = DropDownList1.SelectedItem.Text;
        AccessDataSource2.ID = "AccessDataSource2";
        AccessDataSource2.DataFile = "~/PPDB.accdb";
        AccessDataSource2.SelectCommand = "SELECT * FROM [GOD_2014]";
        if (m1 == "Nanded" && m2 == "Godavari " && m3 == "2013")
        {
            AccessDataSource2.SelectCommand = "SELECT * FROM [GOD_2013]";
        }
        if (m1 == "Nanded" && m2 == "Godavari " && m3 == "2014")
        {
            AccessDataSource2.SelectCommand = "SELECT * FROM [GOD_2014]";
        }
        if (m1 == "Nanded" && m2 == "Godavari " && m3 == "2015")
        {
            AccessDataSource2.SelectCommand = "SELECT * FROM [GOD_2015]";
        }
        if (m1 == "Nanded" && m2 == "Godavari " && m3 == "2016")
        {
            AccessDataSource2.SelectCommand = "SELECT * FROM [GOD_2016]";
        }
        if (m1 == "Aurangabad" && m2 == "Godavari  " && m3 == "2013")
        {
            AccessDataSource2.SelectCommand = "SELECT * FROM [ABD_2013]";
        }
        if (m1 == "Aurangabad" && m2 == "Godavari  " && m3 == "2014")
        {
            AccessDataSource2.SelectCommand = "SELECT * FROM [ABD_2014]";
        }
        if (m1 == "Aurangabad" && m2 == "Godavari  " && m3 == "2015")
        {
            AccessDataSource2.SelectCommand = "SELECT * FROM [ABD_2015]";
        }
        if (m1 == "Aurangabad" && m2 == "Godavari  " && m3 == "2016")
        {
            AccessDataSource2.SelectCommand = "SELECT * FROM [ABD_2016]";
        }
        if (m1 == "Beed" && m2 == "Godavari  " && m3 == "2013")
        {
            AccessDataSource2.SelectCommand = "SELECT * FROM [BEED_2013]";
        }
        if (m1 == "Beed" && m2 == "Godavari  " && m3 == "2014")
        {
            AccessDataSource2.SelectCommand = "SELECT * FROM [BEED_2014]";
        }
        if (m1 == "Beed" && m2 == "Godavari  " && m3 == "2015")
        {
            AccessDataSource2.SelectCommand = "SELECT * FROM [BEED_2015]";
        }
        if (m1 == "Beed" && m2 == "Godavari  " && m3 == "2016")
        {
            AccessDataSource2.SelectCommand = "SELECT * FROM [BEED_2016]";
        }
        if (m1 == "Hingoli" && m2 == " Godavari " && m3 == "2013")
        {
            AccessDataSource2.SelectCommand = "SELECT * FROM [HING_2013]";
        }
        if (m1 == "Hingoli" && m2 == " Godavari " && m3 == "2014")
        {
            AccessDataSource2.SelectCommand = "SELECT * FROM [HING_2014]";
        }

        if (m1 == "Hingoli" && m2 == " Godavari " && m3 == "2015")
        {
            AccessDataSource2.SelectCommand = "SELECT * FROM [HING_2015]";
        }

        if (m1 == "Hingoli" && m2 == " Godavari " && m3 == "2016")
        {
            AccessDataSource2.SelectCommand = "SELECT * FROM [HING_2016]";
        }
        if (m1 == "Jalana" && m2 == "Godavari " && m3 == "2013")
        {
            AccessDataSource2.SelectCommand = "SELECT * FROM [JAL_2013]";
        }
        if (m1 == "Jalana" && m2 == "Godavari " && m3 == "2014")
        {
            AccessDataSource2.SelectCommand = "SELECT * FROM [JAL_2014]";
        }
        if (m1 == "Jalana" && m2 == "Godavari " && m3 == "2015")
        {
            AccessDataSource2.SelectCommand = "SELECT * FROM [JAL_2015]";
        }
        if (m1 == "Jalana" && m2 == "Godavari " && m3 == "2015")
        {
            AccessDataSource2.SelectCommand = "SELECT * FROM [JAL_2015]";
        }
        if (m1 == "Latur" && m2 == "Manar " && m3 == "2013")
        {
            AccessDataSource2.SelectCommand = "SELECT * FROM [LTR_2013]";
        }
        if (m1 == "Latur" && m2 == "Manar " && m3 == "2014")
        {
            AccessDataSource2.SelectCommand = "SELECT * FROM [LTR_2014]";
        }
        if (m1 == "Latur" && m2 == "Manar " && m3 == "2015")
        {
            AccessDataSource2.SelectCommand = "SELECT * FROM [LTR_2015]";

        }
        if (m1 == "Latur" && m2 == "Manar " && m3 == "2016")
        {
            AccessDataSource2.SelectCommand = "SELECT * FROM [LTR_2016]";
        }
        if (m1 == "Parbhani" && m2 == "Godavari " && m3 == "2013")
        {
            AccessDataSource2.SelectCommand = "SELECT * FROM [PAR_2013]";
        }
        if (m1 == "Parbhani" && m2 == "Godavari " && m3 == "2014")
        {
            AccessDataSource2.SelectCommand = "SELECT * FROM [PAR_2014]";
        }
        if (m1 == "Parbhani" && m2 == "Godavari " && m3 == "2015")
        {
            AccessDataSource2.SelectCommand = "SELECT * FROM [PAR_2015]";
        }
        if (m1 == "Parbhani" && m2 == "Godavari " && m3 == "2016")
        {
            AccessDataSource2.SelectCommand = "SELECT * FROM [PAR_2016]";
        }
        if (m1 == "Ossmanabad" && m2 == "Manjra " && m3 == "2013")
        {
            AccessDataSource2.SelectCommand = "SELECT * FROM [OBD_2013]";
        }
        if (m1 == "Ossmanabad" && m2 == "Manjra " && m3 == "2014")
        {
            AccessDataSource2.SelectCommand = "SELECT * FROM [OBD_2014]";
        }
        if (m1 == "Ossmanabad" && m2 == "Manjra " && m3 == "2015")
        {
            AccessDataSource2.SelectCommand = "SELECT * FROM [OBD_2015]";
        }
        if (m1 == "Ossmanabad" && m2 == "Manjra " && m3 == "2016")
        {
            AccessDataSource2.SelectCommand = "SELECT * FROM [OBD_2016]";
        }


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        DropDownList3.Items.Clear();

        string message = DropDownList4.SelectedItem.Text;
        if (message == "Nanded")
        {
           // Image1.ImageUrl = "~/NANDED.jpg";
            // Image1.ImageUrl = "~/NNDTiru.jpg";
            DropDownList3.Items.Clear();
            //DropDownList3.Items.Add("Aran ");
            //DropDownList3.Items.Add("AsnaN");
            DropDownList3.Items.Add("Godavari ");
            //DropDownList3.Items.Add("Gundarguni ");
            //DropDownList3.Items.Add("Kahala N ");
            //DropDownList3.Items.Add("Kahala R ");
            // DropDownList3.Items.Add("Kayadhu ");
            DropDownList3.Items.Add("Lendi ");
            DropDownList3.Items.Add("Manar ");
            //DropDownList3.Items.Add("Mandhlaa ");
            //DropDownList3.Items.Add("Manjra ");
            //DropDownList3.Items.Add("Parvati ");
            DropDownList3.Items.Add("Penganga ");
            //DropDownList3.Items.Add("Pus ");
            //DropDownList3.Items.Add("Siddha ");
            //DropDownList3.Items.Add("Sudda Vagu"); 
            //DropDownList3.Items.Add("Tiru");

        }

        if (message == "Aurangabad")
        {
          //  Image1.ImageUrl = "~/abad.jpg";
            DropDownList3.Items.Clear();
            DropDownList3.Items.Add("Godavari  ");
            DropDownList3.Items.Add("Girja  ");
            DropDownList3.Items.Add("Batra  ");
            DropDownList3.Items.Add("Purna ");
            DropDownList3.Items.Add("Dudhana  ");

        }
        if (message == "Beed")
        {
          //  Image1.ImageUrl = "~/BEED.jpg";
            DropDownList3.Items.Clear();
            DropDownList3.Items.Add("Manjra  ");
            DropDownList3.Items.Add("Godavari  ");


        }
        if (message == "Hingoli")
        {
          //  Image1.ImageUrl = "~/HINGOLI.jpg";
            DropDownList3.Items.Add("Asna N ");
            DropDownList3.Items.Add(" Godavari ");
            DropDownList3.Items.Add("Kayadhu  ");
            DropDownList3.Items.Add("Mandhlaa   ");
            DropDownList3.Items.Add("Penganga  ");
            DropDownList3.Items.Add("Purna  ");


        }
        if (message == "Jalana")
        {
            //Image1.ImageUrl = "~/JALNA.jpg";
//
            DropDownList3.Items.Add("Dudhana");

            DropDownList3.Items.Add("Girja ");
            DropDownList3.Items.Add("Godavari ");

            DropDownList3.Items.Add("Purna   ");


        }
        if (message == "Latur")
        {
            //Image1.ImageUrl = "~/LATUR.jpg";
            DropDownList3.Items.Add("Manar ");
            DropDownList3.Items.Add("Tawaraja  ");


        }
        if (message == "Ossmanabad")
        {
           // Image1.ImageUrl = "~/Osmanabad.jpg";

            DropDownList3.Items.Add("Benithora ");
            DropDownList3.Items.Add("Manjra ");

        }
        if (message == "Parbhani")
        {
            //Image1.ImageUrl = "~/Parbhani.jpg";

            DropDownList3.Items.Add("Dudhana ");
            DropDownList3.Items.Add("Godavari ");
            DropDownList3.Items.Add("Kastora ");
            DropDownList3.Items.Add("Purna ");


        }








    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Button1.Enabled = true;
    }
}