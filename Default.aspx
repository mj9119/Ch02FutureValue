<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Future Value</title>
    <style type="text/css">
        .style1
        {
            width: 150px;
            height: 65px;
        }
        .style3
        {
            width: 26%;
            height: 271px;
        }
        .style5
        {
            text-align: center;
            font-size: x-large;
            color: #0099FF;
            height: 92px;
        }
        .style6
        {
            width: 368px;
        }
        .style8
        {
            width: 368px;
            height: 32px;
        }
        .style12
        {
            width: 368px;
            height: 33px;
        }
        .style13
        {
            width: 292px;
            height: 33px;
        }
        .style14
        {
            width: 292px;
        }
        .style15
        {
            width: 292px;
            height: 32px;
        }
        .style16
        {
            width: 292px;
            height: 17px;
        }
        .style17
        {
            width: 368px;
            height: 17px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <img alt="Murach" class="style1" src="Images/MurachLogo.jpg" /><table class="style3">
        <tr>
            <td class="style5" colspan="2">
                <strong>401K Future Value Calculator</strong></td>
        </tr>
        <tr>
            <td class="style13">
                Monthly investment:
            </td>
            <td class="style12">
                <asp:DropDownList ID="ddlMonthlyInv" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style14">
                Annual interest rate:</td>
            <td class="style6">
                <asp:TextBox ID="txtAnnIntRate" runat="server" 
                    ontextchanged="TextBox1_TextChanged" CausesValidation="True" Width="97px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style15">
                Number of years:</td>
            <td class="style8">
                <asp:TextBox ID="txtNumOfYears" runat="server" CausesValidation="True" 
                    Width="95px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style16">
                Future value:</td>
            <td class="style17">
                <asp:Label ID="lblFutureValue" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style14">
                <asp:Button ID="btnCalculate" runat="server" Text="Calculate" Width="100px" 
                    onclick="btnCalculate_Click" />
            </td>
            <td class="style6">
                <asp:Button ID="btnClear" runat="server" Text="Clear" Width="100px" 
                    CausesValidation="False" onclick="btnClear_Click" />
            </td>
        </tr>
    </table>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txtAnnIntRate" ErrorMessage="Interest Rate is required" 
        EnableClientScript="False"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="txtNumOfYears" ErrorMessage="Number of years is required"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:RangeValidator ID="RangeValidator1" runat="server" 
        ControlToValidate="txtAnnIntRate" 
        ErrorMessage="Interest rate must range from 1 to 20" MaximumValue="20" 
        MinimumValue="1" Type="Double"></asp:RangeValidator>
    <br />
    <br />
    <asp:RangeValidator ID="RangeValidator2" runat="server" 
        ControlToValidate="txtNumOfYears" ErrorMessage="RangeValidator" 
        MaximumValue="45" MinimumValue="1" Type="Integer">Years must range from 1 to 45</asp:RangeValidator>
    <br />
    <br />
    </form>
</body>
</html>
