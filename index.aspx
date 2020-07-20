<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Youtube_View_Time_Calci.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>View Time Calculator</title>
    <script type="text/javascript">  
        function alertMessage(printstring) {
            alert('you saved '+printstring + ' minutes');  
        }  
    </script>
  </head>
<body>
    <form id="form1" runat="server">
        <div class="m-5">
            <p >
<h1 >This is an example application of calculating  the view time on selecting different speed controls</h1></p>
        </div>
        <hr class="alert-info" />
        <div>
            <asp:Table ID="tblYoutubeViewTime" HorizontalAlign="Center" runat="server" CssClass="table-active">
                <asp:TableHeaderRow CssClass="btn-info" HorizontalAlign="Center">
                    <asp:TableHeaderCell HorizontalAlign="Center" ColumnSpan="2">YouTube View Time Calculator</asp:TableHeaderCell>
                 </asp:TableHeaderRow>
                <asp:TableHeaderRow>
                    <asp:TableHeaderCell>
                        <asp:Label ID="lblVideoDuration" runat="server" Text="Duration in minutes"></asp:Label></asp:TableHeaderCell>
                <asp:TableHeaderCell>
                    <asp:TextBox ID="txtbxDuration" runat="server" TextMode="SingleLine"></asp:TextBox></asp:TableHeaderCell>
                </asp:TableHeaderRow>
                <asp:TableHeaderRow>
                    
                    <asp:TableHeaderCell>
                        <asp:Label ID="lblYoutubeheader" runat="server" Text="Select Speed Control"></asp:Label></asp:TableHeaderCell>
                    <asp:TableHeaderCell>
                        <asp:DropDownList ID="drpSpeedControls" runat="server">
                            <asp:ListItem>--Select--</asp:ListItem>
                            <asp:ListItem>Normal</asp:ListItem>
                            <asp:ListItem>1.25X</asp:ListItem>
                            <asp:ListItem>1.5X</asp:ListItem>
                            <asp:ListItem>1.75X</asp:ListItem>
                            <asp:ListItem>2X</asp:ListItem>
                        </asp:DropDownList></asp:TableHeaderCell>
                </asp:TableHeaderRow>
                <asp:TableHeaderRow HorizontalAlign="Center">
                    <asp:TableHeaderCell HorizontalAlign="Center" ColumnSpan="2"><asp:Button ID="btnCalculateViewTime" runat="server" Text="View Time" OnClick="btnCalculateViewTime_Click" /></asp:TableHeaderCell>
                </asp:TableHeaderRow>
                <asp:TableHeaderRow HorizontalAlign="Center">
                    <asp:TableHeaderCell HorizontalAlign="Center" ColumnSpan="2">
                        <asp:Label ID="lblYoutubeResult" runat="server" Text="Select speed and Calculate the view time"></asp:Label></asp:TableHeaderCell>
                </asp:TableHeaderRow>
                <asp:TableFooterRow HorizontalAlign="Center" CssClass="btn-info">
                    <asp:TableHeaderCell HorizontalAlign="Center" ColumnSpan="2">Sample designed by <a href="http://www.hometute.com/" style="text-decoration:none;" class="badge-dark rounded">hometute</a></asp:TableHeaderCell>
                </asp:TableFooterRow>
            </asp:Table>
            <div class="m-5">
                <h2>
                    You can clone this repository and can try adding mechanisms for rest of the speed controls such as
             <asp:BulletedList ID="BulletedList1" runat="server">
                 <asp:ListItem>0.25</asp:ListItem>
                 <asp:ListItem>0.50</asp:ListItem>
                 <asp:ListItem>0.75</asp:ListItem>
             </asp:BulletedList>   </h2>
                
            </div>
        </div>
    </form>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>
