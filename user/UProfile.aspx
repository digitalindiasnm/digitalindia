
<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="UProfile.aspx.cs" Inherits="user_UProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="../assets/js/jquery-1.20.2.min.js"></script>
    <script type="text/javascript">

        $(document).ready(function () {
            $(".btnsubmit").click(function () {

                alert("enrolled successfully ")
            })
        })
        function pass(c) {
            var label = document.getElementById('<%=Label1.ClientID%>');
             if (c.value == "") {
                 label.innerText = "Enter proper Address";
             }
             else {
                 label.innerText = "";
             }
         }
         function pass1(c) {
             var label = document.getElementById('<%=Label2.ClientID%>');
             if (c.value == "") {
                 label.innerText = "Enter proper Date of Birth";
             }
             else {
                 label.innerText = "";
             }
         }
        
        function pass2(c) {
            var label = document.getElementById('<%=Label4.ClientID%>');
             if (c.value == "") {
                 label.innerText = "Field not Blank";
             }
             else {
                 label.innerText = "";
             }
        }
        function pass4(c) {
            var label = document.getElementById('<%=Label5.ClientID%>');
             if (c.value == "") {
                 label.innerText = "Field not Blank";
             }
             else {
                 label.innerText = "";
             }
        }
        function pass5(c) {
            var label = document.getElementById('<%=Label6.ClientID%>');
             if (c.value == "") {
                 label.innerText = "Field not Blank";
             }
             else {
                 label.innerText = "";
             }
        }
        function pass6(c) {
            var label = document.getElementById('<%=Label7.ClientID%>');
             if (c.value == "") {
                 label.innerText = "Field not Blank";
             }
             else {
                 label.innerText = "";
             }
        }
        function pass7(c) {
            var label = document.getElementById('<%=Label8.ClientID%>');
             if (c.value == "") {
                 label.innerText = "Field not Blank";
             }
             else {
                 label.innerText = "";
             }
        }
        function ValidateValue(str) {
            var label = document.getElementById('<%=Label4.ClientID%>');
            var regexPattern = /(^100(\.0{1,2})?$)|(^([1-9]([0-9])?|0)(\.[0-9]{1,2})?$)/i;
            if (!str.test(regexPattern)) {
                label.innerText = "value out of range or too much decimal";
            }
            else {
                label.innerText = "";
            }
        }






         
    </script>
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


          .auto-style17 {
              width: 120px;
          }
          .auto-style18 {
              width: 80px;
          }


  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server" >
      <div class="page-in">
        <div class="container">
          <div class="row">
            <div class="col-lg-6 pull-left">
              <div class="page-in-name"><h1>WelCome :&nbsp;&nbsp;<span><asp:Label ID="lbluname" runat="server" Text=""></asp:Label></span></h1></div>
            </div>
            <div class="col-lg-6 pull-right">
              <div class="page-in-bread"><span>Information about yourself here: </span><a href="../Default.aspx" title="Logut">Logout</a> </div></div>                
            </div> 
        </div>
      </div>
  

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <%-- <div class="container marg30">
        <div class="col-lg-6">--%>
  
                 
            

  
                <div class="container marg50">
        <div class="row">
          <div class="col-lg-9">
            <div class="classic-blog">
              <div class="cl-blog-img">
                    <div class="promo-block">
              <div class="promo-text">Digital India</div>
              <div class="center-line"></div>
            </div>
            <div class="marg50">
              


                <asp:MultiView ID="MultiView1" runat="server">
                <br />
                

    <asp:View ID="uprofile" runat="server">
      
        <div class="container">
                <div class="col-lg-10">
               
                <div class="col-lg-10">
                        <div class="panel panel-default">

                            <div class="panel-heading">
                            <h3> Personal Information</h3> 
                                </div>
                  
                           
                         <div class="panel-body">
                               
                                       <br />

      <table>
   
           <tr>
               <td class="auto-style7">
                   <asp:Label ID="lbladdr" Width="30px" runat="server" Text="Address"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="txtaddr" Width="200px" CssClass="form-control" runat="server" TextMode="MultiLine" onblur="pass(this)"></asp:TextBox> 
               </td>
               <td>
                    <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red" Width="350px"></asp:Label>
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
                   <asp:DropDownList ID="ddlstate" Width="200px" AutoPostBack="true" OnSelectedIndexChanged="ddlstate_SelectedIndexChanged" runat="server"></asp:DropDownList>
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
                   <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                       <ContentTemplate>
                           <asp:DropDownList ID="ddlcity" Width="200px" AutoPostBack="true" OnSelectedIndexChanged="ddlcity_SelectedIndexChanged" runat="server"></asp:DropDownList>         
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
                           <asp:DropDownList ID="ddllocation" Width="200px" runat="server"></asp:DropDownList>
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
                   <asp:Label ID="lblgen" Width="30px" runat="server" Text="Gender"></asp:Label>
               </td>
               <td>
                   <asp:RadioButtonList ID="rbtngen" Width="200px" RepeatDirection="Horizontal" runat="server" Height="16px">
                       <asp:ListItem Text="Female"></asp:ListItem>
                       <asp:ListItem Text="Male"></asp:ListItem>
                   </asp:RadioButtonList>
                   
               </td>
           </tr>
             <tr>
               <td class="auto-style7">
                   &nbsp;
               </td>
           </tr>
           <tr>
               <td class="auto-style7">
                   <asp:Label ID="lbldob" Width="85px" runat="server" Text="Date Of Birth" ></asp:Label>
               </td>
               <td>
                   <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtdob"/>
                    <asp:TextBox ID="txtdob" Width="200px" CssClass="form-control" runat="server" ></asp:TextBox>
                  <%-- onblur="pass1(this)" --%>
               </td>
               <td>
                    <asp:Label ID="Label2" runat="server" Text="" ForeColor="Red" Width="350px"></asp:Label>
               </td>
           </tr>
             <tr>
               <td class="auto-style7">
                   &nbsp;
               </td>
           </tr>

           <tr>
               <td class="auto-style7">
                   <asp:Label ID="lblpic" Width="85px" runat="server" Text="Upload Pic"></asp:Label>
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
       </table>
        
       <asp:Button ID="btnsubmit" text="Submit" runat="server" OnClick="btnsubmit_Click" class="btn btn-primary" CssClass="btnsubmit" ></asp:Button>
        </div>
                            </div>
                    </div>
                    </div>
            </div>
        
    </asp:View>
                

    <asp:View ID="quali" runat="server">
         <div class="container">
                <div class="col-lg-10">
               
                <div class="col-lg-10">
                        <div class="panel panel-default">

                            <div class="panel-heading">
                               <h3> User Qualification</h3>
                                </div>
                  
                           
                         <div class="panel-body">
                               
                                       <br />
       <%--<h5 style="font-size: large; font-weight: normal; font-style: italic; text-transform: uppercase; color: #FF0000; "> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; USER QUALIFICATION</h5>
        <hr />
       --%>
     <table>
       
           <tr>
             <td class="auto-style17">
                 <asp:Label ID="lblssc" runat="server" Text="SSC"></asp:Label>
             </td>
             <td class="auto-style18">  
                 <asp:TextBox ID="txtssc" Width="80px" CssClass="form-control"  runat="server" onblur=" ValidateValue(this)"></asp:TextBox>
                 </td>
                <td>
                    %
                    </td>
                    <td>
                 <asp:RangeValidator ID="RangeValidator1" width="200" runat="server" ControlToValidate="txtssc" ErrorMessage="Enter Proper Percentage" ForeColor="Red" MaximumValue="100" MinimumValue="10" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
               </td>
            
               <td>
                  <%-- <asp:Label ID="Label3" runat="server" Text="" ForeColor="Red" Width="350px"></asp:Label>--%>
               </td>
             <td>%</td>
               <td>
                   <asp:Label ID="Label4" runat="server" Text="" ForeColor="Red" Width="350px"></asp:Label>
               </td>
         </tr>
             <tr>
               <td class="auto-style17">
                   &nbsp;
               </td>
           </tr>
           <tr>
             <td class="auto-style17">
                 <asp:Label ID="lblhsc" runat="server" Text="HSC"></asp:Label>
             </td>
             <td class="auto-style18">
                 <asp:TextBox ID="txthsc" Width="80px" CssClass="form-control" runat="server"></asp:TextBox>
             </td>
                <td>%</td>
               <td>
                  <asp:RangeValidator ID="RangeValidator2" width="200" runat="server" ControlToValidate="txthsc" ErrorMessage="Enter Proper Percentage" ForeColor="Red" MaximumValue="100" MinimumValue="10" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
               
                   <asp:Label ID="Label5" runat="server" Text="" ForeColor="Red" Width="350px"></asp:Label>
               </td>
         </tr>
             <tr>
               <td class="auto-style17">
                   &nbsp;
               </td>
           </tr>
           <tr>
             <td class="auto-style17">
                 <asp:Label ID="lblgra" runat="server" Text="Graduation"></asp:Label>
             </td>
             <td class="auto-style18">
                 <asp:TextBox ID="txtgra" Width="80px" CssClass="form-control" runat="server"></asp:TextBox>
             </td>
                <td>%</td>
               <td>
                   <asp:RangeValidator ID="RangeValidator3" width="200" runat="server" ControlToValidate="txtgra" ErrorMessage="Enter Proper Percentage" ForeColor="Red" MaximumValue="100" MinimumValue="10" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
                   <asp:Label ID="Label6" runat="server" Text="" ForeColor="Red" Width="350px"></asp:Label>
               </td>
         </tr>
             <tr>
               <td class="auto-style17">
                   &nbsp;
               </td>
           </tr>
           <tr>
             <td class="auto-style17">
                 <asp:Label ID="lblpogra" runat="server" Text="Post-Graduation"></asp:Label>
             </td>
             <td class="auto-style18">
                 <asp:TextBox ID="txtpogra" Width="80px" CssClass="form-control" runat="server"></asp:TextBox>
             </td>
                <td>%</td>
               <td>
                    <asp:RangeValidator ID="RangeValidator4" width="200" runat="server" ControlToValidate="txtpogra" ErrorMessage="Enter Proper Percentage" ForeColor="Red" MaximumValue="100" MinimumValue="10" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
                   <asp:Label ID="Label7" runat="server" Text="" ForeColor="Red" Width="350px"></asp:Label>
               </td>
         </tr>
             <tr>
               <td class="auto-style17">
                   &nbsp;
               </td>
           </tr>
           <tr>
             <td class="auto-style17">
                 <asp:Label ID="lbldiplo" runat="server" Text="Diploma"></asp:Label>
             </td>
             <td class="auto-style18">
                 <asp:TextBox ID="txtdiplo" Width="80px" CssClass="form-control" runat="server"></asp:TextBox>
             </td>
                <td>%</td>
               <td>
                   <asp:RangeValidator ID="RangeValidator5" width="200" runat="server" ControlToValidate="txtdiplo" ErrorMessage="Enter Proper Percentage" ForeColor="Red" MaximumValue="100" MinimumValue="10" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
                   <asp:Label ID="Label8" runat="server" Text="" ForeColor="Red" Width="350px"></asp:Label>
               </td>
         </tr>
             <tr>
               <td class="auto-style17">
                   &nbsp;
               </td>
           </tr>
     </table>
          <asp:Button ID="btnsubm" text="Submit" runat="server" class="btn btn-primary" OnClick="btnsubm_Click" CssClass="btnsubmit"></asp:Button>
       </div>
                            </div>
                    </div>  
                    </div>
             </div> 
        <
    </asp:View>

    
</asp:MultiView>

            </div>
              </div>
              
              
            </div>
            
            
            
            
          </div> 
           <div class="col-lg-3">
            <%--<div class="promo-text-blog">Search Company</div>--%>
               <%--<asp:TextBox ID="txtdes" class="blog-search" runat="server" placeholder="Designation"></asp:TextBox><br />
              <asp:TextBox ID="txtskill" class="blog-search" runat="server" placeholder="Skill"></asp:TextBox><br />
            
              <asp:Button ID="btnsearch" CssClass ="btn btn-violet" runat="server" Text="Search" OnClick="btnsearch_Click" />--%>
            <div class="promo-text-blog">Events</div>
            <div class="text-widget"><div style="background-color: #ffffff">
           
              <marquee behavior="scroll" direction="up" width="500" align="left" onmouseover="this.stop();" onmouseout="this.start();">
                <ul>
                <asp:DataList ID="DataList2" runat="server" RepeatDirection="Vertical" OnItemCommand="DataList2_ItemCommand" >
                <ItemTemplate>
                    <table>
                        <tr>
                            <td><asp:Label ID="Label1" text='<%#Eval("e_id") %>' clss="page-in-name" runat="server" Visible="false"></asp:Label></td>
                        </tr>
                        <tr>
                            <td>*</td>
                            <td><asp:LinkButton ID="LinkButton1"  runat="server" text='<%#Eval("title") %>' CommandName="view">  </asp:LinkButton></td>
                        </tr>

                     </table>
                </ItemTemplate>
               </asp:DataList> 
                </ul></marquee></div> </div>

            
        
            <div class="promo-text-blog">Category</div>
            <div class="classic-blog">
              <div class="cl-blog-video">
                   <video width="320" height="240" controls>
                     <source src="assets/images/Digital India Logo Unveiling Video.mp4" type="video/mp4"/>
                         Your browser does not support the video tag.
                    </video> 
 
              <div class="cl-blog-naz">
                <div class="cl-blog-type"><i class="icon-video"></i></div>
                <div class="cl-blog-name"><a href="#">Digital India Logo Unveiling Short Film </a></div>
            
              <div class="cl-blog-line"></div>
            </div>
            
                
            
        </div>
      </div>
 </div>
      </div>
      </div>
            
            

        <br />
    


</asp:Content>