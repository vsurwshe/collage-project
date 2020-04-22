using System;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class _Default : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        //disp();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //Image1.ImageUrl = "C:\\rivemap\\NNDAsna.jpg";
        // Image1.ImageUrl = "App_Data\\rivermap\\NNDAsna.jpg";
        string s2 = Image1.ImageUrl;

        string dist = DropDownList1.SelectedItem.Text;
        string rive = DropDownList3.SelectedItem.Text;

        //Label1.Text = rive;
        if (dist == "Nanded")
        {
            if (rive == "Godavari ")
            {
                //Image1.ImageUrl="C:\\rivermap\\NNDAsna.jpg";
                //Label1.Text = rive;
                //Image1.ImageUrl = "~/NNDAsna.jpg";
                Image1.ImageUrl = "~/NNDGOD.jpg";
            }
            if (rive == "Manar ")
            {
                Image1.ImageUrl = "~/NNDManar.jpg";
            }
            if (rive == "Lendi ")
            {
                Image1.ImageUrl = "~/NNDLENDI.jpg";
            }
            if (rive == "Penganga ")
            {
                Image1.ImageUrl = "~/NNDPEN.jpg";
            }
            if (rive == "Sudda Vagu")
            {
                //Image1.ImageUrl = "~/NNDSudha.jpg";
            }
            if (rive == "Tiru")
            {
                //Image1.ImageUrl = "~/NNDTiru.jpg";
            }



        }
        if (dist == "Aurangabad")
        {
            if (rive == "Godavari  ")
            {
                Image1.ImageUrl = "~/ABDGOD.jpg";
            }
            if (rive == "Dudhana  ")
            {
                Image1.ImageUrl = "~/ABDDUD.jpg";
            }
            if (rive == "Girja  ")
            {
                Image1.ImageUrl = "~/ABDGRJ.jpg";
            }
            if (rive == "Purna ")
            {
                Image1.ImageUrl = "~/ABDPUR.jpg";
            }

        }
        if (dist == "Beed")
        {
            if (rive == "Godavari  ")
            {
                Image1.ImageUrl = "~/BEEDGOD.jpg";
            }
            if (rive == "Manjra  ")
            {
                Image1.ImageUrl = "~/BEEDMANJ.jpg";
            }
        
        }
        if (dist == "Hingoli")
        {
            if (rive == " Godavari ")
            {
                Image1.ImageUrl = "~/HINGGOD.jpg";

            }
            if (rive == "Penganga  ")
            {
                Image1.ImageUrl = "~/HINGPEN.jpg";

            }
            if (rive == "Purna  ")
            {
                Image1.ImageUrl = "~/HINGPUR.jpg";

            }
            if (rive == "Manjra  ")
            {
                Image1.ImageUrl = "~/HINGKAYA.jpg";

            }
        
        }

        if (dist == "Jalana")
        {
            if (rive == "Dudhana")
            {
                Image1.ImageUrl = "~/JALDUD.jpg";

            }
            if (rive == "Girja ")
            {
                Image1.ImageUrl = "~/JALGIR.jpg";

            }
            if (rive == "Godavari ")
            {
                Image1.ImageUrl = "~/JALGOD.jpg";

            }
            if (rive == "Purna   ")
            {
                Image1.ImageUrl = "~/JALPUR.jpg";

            }
        }

        if (dist == "Latur")
        {
            if (rive == "Manjara ")
            {
                Image1.ImageUrl = "~/LTRMANAR.jpg";

            }
        }
        if (dist == "Beed")
        {
            if (rive == "Manjra ")
            {
                Image1.ImageUrl = "~/OBDMANJ.jpg";

            }
            if (rive == "Penganga ")
            {
                Image1.ImageUrl = "~/OBDPENN.jpg";

            }
        
        }

        if (dist == "Parbhani")
        {
            if (rive == "Godavari ")
            {
                Image1.ImageUrl = "~/PAGOD.jpg";

            }
            if (rive == "Dudhana ")
            {
                Image1.ImageUrl = "~/PARDUD.jpg";


            }
            if (rive == "Kastora ")
            {
                Image1.ImageUrl = "~/PARKAP.jpg";

            }
            if (rive == "Purna ")
            {
                Image1.ImageUrl = "~/PARPUR.jpg";

            }
            // disp();

        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        DropDownList3.Items.Clear();

        string message = DropDownList1.SelectedItem.Text;
        if (message == "Nanded")
        {
            Image1.ImageUrl = "~/NANDED.jpg";
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
            Image1.ImageUrl = "~/abad.jpg";
            DropDownList3.Items.Clear();
            DropDownList3.Items.Add("Godavari  ");
            DropDownList3.Items.Add("Girja  ");
            DropDownList3.Items.Add("Batra  ");
            DropDownList3.Items.Add("Purna ");
            DropDownList3.Items.Add("Dudhana  ");
            
        }
        if (message == "Beed")
        {
            Image1.ImageUrl = "~/BEED.jpg";
            DropDownList3.Items.Clear();
            DropDownList3.Items.Add("Manjra  ");
            DropDownList3.Items.Add("Godavari  ");
            

        }
        if (message == "Hingoli")
        {
            Image1.ImageUrl = "~/HINGOLI.jpg";
            DropDownList3.Items.Add("Asna N ");
            DropDownList3.Items.Add(" Godavari ");
            DropDownList3.Items.Add("Kayadhu  ");
            DropDownList3.Items.Add("Mandhlaa   ");
            DropDownList3.Items.Add("Penganga  ");
            DropDownList3.Items.Add("Purna  ");


        }
        if (message == "Jalana")
        {
            Image1.ImageUrl = "~/JALNA.jpg";
            
            DropDownList3.Items.Add("Dudhana");
           
            DropDownList3.Items.Add("Girja ");
            DropDownList3.Items.Add("Godavari ");
          
            DropDownList3.Items.Add("Purna   ");
          

        }
        if (message == "Latur")
        {
            Image1.ImageUrl = "~/LATUR.jpg";
            DropDownList3.Items.Add("Manjara ");
            //DropDownList3.Items.Add("Tawaraja  ");
            

        }
        if (message == "Ossmanabad")
        {
            Image1.ImageUrl = "~/Osmanabad.jpg";
            
            DropDownList3.Items.Add("Penganga ");
            DropDownList3.Items.Add("Manjra ");
            
        }
        if (message == "Parbhani")

        {
            Image1.ImageUrl = "~/Parbhani.jpg";
            
            DropDownList3.Items.Add("Dudhana ");
            DropDownList3.Items.Add("Godavari ");
            DropDownList3.Items.Add("Kastora ");
            DropDownList3.Items.Add("Purna ");
          

        }










    }


    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Graph.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Graph.aspx");
    }
}
