<%@ Page Title="" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="man ki baat.aspx.cs" Inherits="man_ki_baat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    








    <%--Video Display start--%>



    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            video:
            <asp:Label ID="videoLabel" runat="server" Text='<%# Eval("video") %>' />
            <br />
            vi_desc:
            <asp:Label ID="vi_descLabel" runat="server" Text='<%# Eval("vi_desc") %>' />
            <br />
            vi_title:
            <asp:Label ID="vi_titleLabel" runat="server" Text='<%# Eval("vi_title") %>' />
            <br />
<br />
        </ItemTemplate>
      
    </asp:DataList>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:digitalIndiaConnectionString %>" SelectCommand="SELECT [video], [vi_desc], [vi_title] FROM [tbl_video_admin]"></asp:SqlDataSource>


    <div class="medium-blog">
                <div class="col-lg-5">
                  <div class="cl-blog-video"><iframe src="http://player.vimeo.com/video/84759655?title=0&amp;byline=0&amp;portrait=0&amp;color=00c0e1" width="100%" height="258" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div>
                </div>
                <div class="col-lg-7">
                  <div class="med-blog-naz">
                    <div class="cl-blog-type"><i class="icon-videocam"></i></div>
                    <div class="cl-blog-name"><a href="#">Passed her indeed uneasy shy polite appear denied (Video Post)</a></div>
                    <div class="cl-blog-detail">13 February 2014 - 21:43, by <a href="#">Admin</a>, in <a href="#">Joomla</a>, <a href="#">Creative</a>, <a href="#">No comment</a></div>
                    <div class="cl-blog-text">Recommend existence curiosity perfectly favourite get eat she why daughters. Not may too nay busy last song must sell. An newspaper assurance discourse ye certainly. Soon gone game and why many calm have. An so vulgar to on points wanted.</div>
                  </div>
                  <div class="cl-blog-read"><a href="#">Read More</a></div>
                </div>
                <div class="cl-blog-line"></div>
              </div>


    <div class="medium-blog">
         <div class="col-lg-5">
                  <div class="cl-blog-video">
                      <asp:DataList ID="dtlvideo" runat="server"></asp:DataList>
   
                </div>
        </div>
         <div class="col-lg-7">

        </div> 

                <div class="col-lg-7">

    </div>



    <%--Video Display end--%>






</asp:Content>

