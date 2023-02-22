<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1cv.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>

</head>
<body>
    <form id="form1" runat="server">
        <div class="col-md-8">
            <table class="table">

                <tr>
                    <th>First Name</th>
                    <td><asp:Textbox runat="server" ID="Textfname" CssClass="form-control"></asp:Textbox></td>
                </tr>
                <tr>
                    <th>Middle Name</th>
                    <td><asp:Textbox runat="server" ID="Textmname" CssClass="form-control"></asp:Textbox></td>
                </tr>
                <tr>
                    <th>Last Name</th>
                    <td><asp:Textbox runat="server" ID="Textlname" CssClass="form-control"></asp:Textbox></td>
                </tr>
                <tr>
                    <th>Address</th>
                    <td><asp:Textbox runat="server" ID="Textaddress" CssClass="form-control"></asp:Textbox></td>
                </tr>
                <tr>
                    <th>Email</th>
                    <td><asp:Textbox runat="server" ID="Textemail" CssClass="form-control"></asp:Textbox></td>
                </tr>
                <tr>
                    <th>Mobile Number</th>
                    <td><asp:Textbox runat="server" ID="Textmobilenumber" CssClass="form-control"></asp:Textbox></td>
                </tr>
                <tr>
                    <th>Higher Qualificaton</th>
                    <td><asp:Textbox runat="server" ID="Texthq" CssClass="form-control"></asp:Textbox></td>
                </tr>
                <tr>
                    <th>Secoundry Qualification</th>
                    <td><asp:Textbox runat="server" ID="Textsq" CssClass="form-control"></asp:Textbox></td>
                </tr>
                <tr>
                    <th>Primary Qualification</th>
                    <td><asp:Textbox runat="server" ID="Textpq" CssClass="form-control"></asp:Textbox></td>
                </tr>
                <tr><td>
                    <asp:Button runat="server" ID="subimitbtn" Text="SUBMIT" CssClass="btn btn-success" OnClick="subimitbtn_Click"> </asp:Button>
                    </td>
                    <td>
                    <asp:Button runat="server" ID="cancbtn" Text="CANCEL" CssClass="btn btn-danger"> </asp:Button>
                    </td>
                </tr>
               
            </table>
        </div>
        <div class="col-md-8">
            <asp:gridview ID="empgripview" runat="server" CssClass="table"
                AutoGeneratecolumns="false"
                OnRowDeleting="empgripview_RowDeleting"
                DataKeysName="empid"> 
               
                <columns>
             <asp:BoundField HeaderText="employee id" Datafield="empid" />                
            <asp:BoundField HeaderText="First Name" Datafield="firstname" />
            <asp:BoundField HeaderText="Middle Name" Datafield="middlename" />
            <asp:BoundField HeaderText="Last Name" Datafield="lasttname" />
            <asp:BoundField HeaderText="Address" Datafield="address" />
            <asp:BoundField HeaderText="Email" Datafield="email" />
            <asp:BoundField HeaderText="Mobile Number" Datafield="mobilenumber" />
            <asp:BoundField HeaderText="Higher Qualificaton" Datafield="higherqualification" />
            <asp:BoundField HeaderText="Secoundry Qualification" Datafield="secondaryqualification" />
            <asp:BoundField HeaderText="Primary Qualification" Datafield="primaryqualification" />
               <asp:TemplateField HeaderText="Action">  
                <ItemTemplate>
                        <asp:Button CommandName="Delete" CssClass="btn btn-danger" runat="server" Text="Remove" />
                    </ItemTemplate>
                 </asp:TemplateField>
                    </columns>
                
                </asp:gridview>
 </div>
    </form>
</body>
</html>
