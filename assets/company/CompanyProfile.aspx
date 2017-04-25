<%@ Page Title="" Language="C#" MasterPageFile="~/company/company.master" AutoEventWireup="true" CodeFile="CompanyProfile.aspx.cs" Inherits="company_CompanyProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
      .TabContainer
      {
         font: bold 0.75em Verdana;
         width: 60em;
         margin-top: 1.5em;
         padding-top: 2em;
      }
      .TabItemInactive
      {
         border-top: 1px solid white;
         border-left: 1px solid white;
         border-right: 1px solid #aaaaaa;
         border-bottom: none;      
         background-color:A;  
         text-align: center; 
         text-decoration: none;
         text-decoration-color:darkred;
         padding: 0.75em 0.25em 0 0.25em;
      }

      .TabItemInactive:hover
      {
         background: #808080;
      }   
      .TabItemActive
      {     
         border-top: 1px solid white;
         border-left: none;
         border-right: 1px solid #aaaaaa;
         border-bottom: none;
         text-decoration: none;
         background-color: #bbbbbb;  
         text-align: center;   
         padding: 0.75em 0.25em 0 0.25em;
      }

      .ContentPanel
      {
         background-color: #bbbbbb; 
         padding: 10px 10px 10px 10px;
         width: 60em;
         font: 0.8em Verdana;
      }


          .auto-style7 {
              width: 140px;
          }


          .auto-style10 {
              width: 90px;
          }


          .auto-style16 {
              width: 88px;
          }
          .auto-style17 {
              width: 120px;
          }
          .auto-style18 {
              width: 80px;
          }


  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="container marg30">
        <div class="col-lg-6">
    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CssClass="TabItemInactive">Company Profile</asp:LinkButton>
               
            </div></div>


    <div class="container">
            <div class="col-lg-6 col-md-6 col-sm-12">
            <div class="promo-block">
              <div class="promo-text">WelCome</div>
              <div class="center-line"></div>
            </div>
            <div class="marg50">
              <div>
                  <div class="container">
        <div class="row text-center  ">
            <div class="col-md-12">
            </div>
        </div>
         <div class="row">
          
                <div class="col-lg-6 col-md-6 col-sm-12">
                          <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="cprofile" runat="server">
       
        <br /><br />

      <table>
          <tr>
               <td class="auto-style7">
                   <asp:Label ID="lblname" Width="110px" runat="server" Text="Company Name"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="txtcname" Width="300px" CssClass="form-control" runat="server"></asp:TextBox> 
               </td>
           </tr>
           <tr>
               <td class="auto-style7">
                   &nbsp;
               </td>
           </tr>
           <tr>
               <td class="auto-style7">
                   <asp:Label ID="lbladdr" Width="30px" runat="server" Text="Address"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="txtaddr" Width="300px" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox> 
               </td>
           </tr>
           <tr>
               <td class="auto-style7">
                   &nbsp;
               </td>
           </tr>
           <tr>
               <td class="auto-style7">
                   <asp:Label ID="lblstate" Width="30px" runat="server" Text="State"></asp:Label>
               </td>
               <td>
                   <asp:DropDownList ID="ddlstate" Width="300px" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlstate_SelectedIndexChanged"></asp:DropDownList>
               </td>
           </tr>
             <tr>
               <td class="auto-style7">
                   &nbsp;
               </td>
           </tr>
           <tr>
               <td class="auto-style7">
                   <asp:Label ID="lblcity" Width="30px" runat="server" Text="City"></asp:Label>
               </td>
               <td>
                   <asp:UpdatePanel ID="UpdatePanel1" runat="server" ChildrenAsTriggers="true">
                       <ContentTemplate>
                           <asp:DropDownList ID="ddlcity" Width="300px" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ddlcity_SelectedIndexChanged"></asp:DropDownList>
                       </ContentTemplate>
                      <Triggers>
                          <asp:AsyncPostBackTrigger ControlID="ddlstate" EventName="SelectedIndexChanged" />
                      </Triggers>
                   </asp:UpdatePanel>
                   
               </td>
           </tr>
             <tr>
               <td class="auto-style7">
                   &nbsp;
               </td>
           </tr>
           <tr>
               <td class="auto-style7">
                   <asp:Label ID="lbllocation" Width="30px" runat="server" Text="Location"></asp:Label>
               </td>
               <td>
                   <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                       <ContentTemplate>
                             <asp:DropDownList ID="ddllocation" Width="300px" runat="server"></asp:DropDownList>
                       </ContentTemplate>
                       <Triggers>
                           <asp:AsyncPostBackTrigger ControlID="ddlcity" EventName="SelectedIndexChanged" />
                       </Triggers>
                   </asp:UpdatePanel>
                 
               </td>
           </tr>
             <tr>
               <td class="auto-style7">
                   &nbsp;
               </td>
           </tr>
          
           <tr>
               <td class="auto-style7">
                   <asp:Label ID="lbldos" Width="85px" runat="server" Text="Date of Start" ></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="txtdos" Width="300px" CssClass="form-control" runat="server" TextMode="Date" ></asp:TextBox>
               </td>
           </tr>
             <tr>
               <td class="auto-style7">
                   &nbsp;
               </td>
           </tr>
           <tr>
               <td class="auto-style7">
                   <asp:Label ID="Label1" Width="85px" runat="server" Text="Licence No : "></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="txtlicenceno" Width="300px" CssClass="form-control" runat="server"></asp:TextBox>
               </td>
           </tr>
             <tr>
               <td class="auto-style7">
                   &nbsp;
               </td>
           </tr>
           <tr>
               <td class="auto-style7">
                   <asp:Label ID="lblpic" Width="85px" runat="server" Text="Profile Image"></asp:Label>
               </td>
               <td>
                   <asp:FileUpload ID="fup" runat="server" />
               </td>
           </tr>
             <tr>
               <td class="auto-style7">
                   &nbsp;
               </td>
           </tr>
          <tr>
              <td>
                  <asp:Button ID="btnsubmit" text="Submit" runat="server" class="btn btn-primary" OnClick="btnsubmit_Click"></asp:Button>
              </td>
          </tr>
       </table>
                </asp:View>
                     </asp:MultiView>
                    </div>
         
            </div>
          </div>
              </div>
            </div>
          </div>

              <div class="col-lg-6 col-md-6 col-sm-12">
            <div class="promo-block">
              <div class="promo-text">Make In India</div>
              <div class="center-line"></div>
            </div>
            <div class="marg50">
              <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                  <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                  <li data-target="#carousel-example-generic" data-slide-to="1" class="active"></li>
                
                </ol>
                <div class="carousel-inner">
                  <div class="item active">
                    <img alt="" src="assets/images/s1.jpg"/>
                  </div>
                  <div class="item">
                    <img alt="" src="assets/images/s2.jpg"/>
                  </div>
                  
                   
                </div>
                <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                <i class="fa fa-angle-left car_icon"></i>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                <i class="fa fa-angle-right car_icon"></i>
                </a>
              </div>
            </div>
          </div>
   </div>


</asp:Content>

