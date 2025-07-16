<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ControlError.aspx.cs" Inherits="ControlError" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Página sin título</title>
</head>
<body>
<body bgcolor="#EEEEEE">


            
    <form id="form1" runat="server">


            
        <div style="height: 83px; width: 545px; margin-left: 159px; margin-top: 30px; background-color: #CCCCCC; font-family: Arial, Helvetica, sans-serif; font-weight: bold; font-style: normal; font-variant: small-caps;">
                   <p>
                       ERROR amb el seu certificat</p>
                   <asp:Label ID="missatgeError" runat="server" Text="missatgeError"></asp:Label>
                   <br />
                   <br />
                   <br />
                   <br />
                   El seu certificat es aquest:<br />
                   <br />
                   <asp:Label ID="certInfo" runat="server" Text="certInfo"></asp:Label>
                   <br />
                   <br />
 <a href="default.aspx">Feu click en aquest enllça per tornar al inici</a>
            </div>
             
    <div style="height: 284px; width: 141px; margin-top: 0px; background-color: #FFFFFF;">
    
            
        <img alt="" src="LogoUdL.GIF" /></div>
    <div>
    
    </div>
    </form>
</body>
</html>
