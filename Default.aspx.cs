using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            for (int i = 50; i <= 500; i += 50)
                ddlMonthlyInv.Items.Add(i.ToString());
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected decimal CalculateFutureValue(int monthlyInvestment,
        decimal monthlyInterestRate, int months) 
    {
        decimal futureValue = 0;
        for (int i = 0; i < months; i++)
        {
            futureValue = (futureValue + monthlyInvestment)
                * (1 + monthlyInterestRate);
        }
        return futureValue;
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        ddlMonthlyInv.SelectedIndex = 0;
        txtAnnIntRate.Text = "";
        txtNumOfYears.Text = "";
        lblFutureValue.Text = "";
    }
    protected void btnCalculate_Click(object sender, EventArgs e)
    {
        if (IsValid)
        {
            int monthlyInvestment =
                Convert.ToInt32(ddlMonthlyInv.SelectedValue);
            decimal yearlyInterestRate =
                Convert.ToDecimal(txtAnnIntRate.Text);
            int years =
                Convert.ToInt32(txtNumOfYears.Text);

            int months = years * 12;
            decimal monthlyInterestRate = yearlyInterestRate / 12 / 100;

            decimal futureValue =
                this.CalculateFutureValue(monthlyInvestment,monthlyInterestRate, months);

            lblFutureValue.Text = futureValue.ToString("c");
        }
    }
}