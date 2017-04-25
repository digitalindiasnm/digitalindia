<%@ Page Title="" Language="C#" MasterPageFile="~/company/company.master" AutoEventWireup="true" CodeFile="Requirements.aspx.cs" Inherits="company_Requirements" %>

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
    <div class="container marg30">
        <div class="col-lg-6">
   <%-- <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CssClass="TabItemInactive">Requirements</asp:LinkButton>--%>
     
            </div></div>


    
  
            <div class="col-lg-6 col-md-6 col-sm-12">
            <div class="promo-block">
              <div class="promo-text">Company Requirements From </div>
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
          
           
             <div class="container marg50">
        <div class="row">
          <div class="col-lg-9">
            <div class="classic-blog">
             <div class="container marg30">
        <div class="col-lg-6">
            <br />
            <br />
              <table>
          <tr>
               <td class="auto-style7">
                   <asp:Label ID="lbljob" Width="110px" runat="server" Text="Job Title"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="txtjob" Width="300px" CssClass="form-control" runat="server"></asp:TextBox> 
               </td>
           </tr>
           <tr>
               <td class="auto-style7">
                   &nbsp;
               </td>
           </tr>
           <tr>
               <td class="auto-style7">
                   <asp:Label ID="lblquali" Width="150px" runat="server" Text="Required Qualification"></asp:Label>
               </td>
               <td>
                   <%--<asp:TextBox ID="txtquali" Width="300px" CssClass="form-control" runat="server"></asp:TextBox> --%>
                   <asp:CheckBoxList ID="chkquali" runat="server" Height="23px" Width="200px" RepeatColumns="2" RepeatLayout="Table">
                       <asp:ListItem Text="SSC" Value="SSC"></asp:ListItem>
                       <asp:ListItem Text="BCA" Value="BCA"></asp:ListItem>
                       <asp:ListItem Text="Msc IT" Value="Msc IT"></asp:ListItem>
                        <asp:ListItem Text="DIPLOMA" Value="DIPLOMA"></asp:ListItem>
                       <asp:ListItem Text="HSC" Value="HSC"></asp:ListItem>
                       <asp:ListItem Text="MCA" Value="MCA"></asp:ListItem>
                       <asp:ListItem Text="Msc CA" Value="Msc CA"></asp:ListItem>
                   </asp:CheckBoxList>
               </td>
           </tr>
           <tr>
               <td class="auto-style7">
                   &nbsp;
               </td>
           </tr>
           <tr>
               <td class="auto-style7">
                   <asp:Label ID="lblexper" Width="30px" runat="server" Text="Experience"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="txtexper" Width="300px" CssClass="form-control" runat="server"></asp:TextBox>
               </td>
           </tr>
             <tr>
               <td class="auto-style7">
                   &nbsp;
               </td>
           </tr>
           <tr>
               <td class="auto-style7">
                   <asp:Label ID="lbldesc" Width="30px" runat="server" Text="Job_Description"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="txtdesc" CssClass="form-control" Width="300px" runat="server" TextMode="MultiLine"></asp:TextBox>
               </td>
           </tr>
             <tr>
               <td class="auto-style7">
                   &nbsp;
               </td>
           </tr>
           <tr>
               <td class="auto-style7">
                   <asp:Label ID="lblvacancy" Width="150px" runat="server" Text="Total Vacancies"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="txtvacancy" CssClass="form-control" Width="300px" runat="server"></asp:TextBox>
               </td>
           </tr>
             <tr>
               <td class="auto-style7">
                   &nbsp;
               </td>
           </tr>
          
           <tr>
               <td class="auto-style7">
                   <asp:Label ID="lblsala" Width="150px" runat="server" Text="Salary Package" ></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="txtsala" Width="300px" CssClass="form-control" runat="server"></asp:TextBox>
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
            </div>
        </div>
            
              
              <div class="cl-blog-line"></div>
            </div>
            <div class="classic-blog">
             
              </div>
            
            
         
          </div> 
          <div class="col-lg-3">   
                          <div class="marg50">      
            <div class="promo-text-blog">Make In India</div>
           <div class="classic-blog">
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
              <div class="cl-blog-naz">
                <div class="cl-blog-type"><i class="icon-pencil"></i></div>
                <div class="cl-blog-name"><a href="#">What is Make India?..</a></div>
                <div class="cl-blog-text">Make in India is an initiative launched by 
                  <p>the Government of India to encourage multi-national,</p>  
                  <p>well as national companies to manufacture their products</p>
                  <p>in India.It was launched by Prime Minister Narendra Modi
                  <p>>on 25 September 2014.India emerged, after initiation of</p>
                  <p>the programme in 2015, as the top destination globally </p>
                  <p>for foreign direct investment (FDI), surpassing the </p>
                  <p>United States of America as well as the People's Republic of China. </p>
                  <p>2015, India received US$63 billion in FDI.</p></div>
              </div>

               <!--Company end-->

              </div>
            </div>
              

       
        </div>


              
          
            
          </div>
        </div>
      </div>
        <br /><br />

      
                        
              </div>
            
     
  
  

</asp:Content>

