<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Resultat.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>configuració Bussines Category => Grup AlFresco - Universitat de Lleida /// (ASIC Projectes Externs)</title>
    </head>
<body bgcolor="#EEEEEE">
<form id="infoDATAWebX" name="infoDATAWebX" method="POST" action="https://seuelectronica.udl.cat/auth_test/index.php" enctype="application/x-www-form-urlencoded">

	<input name="URLok" id="URLok" type="hidden" value="ercd.udl.cat:4444/resultat.aspx"/>
	<input name="URLfail" id="URLfail" type="hidden" value="ercd.udl.cat:4444/Default.aspx"/>
    <input name="SSOID" runat="server" id="SSOID" type="hidden" value=""/>
	<input name="SSLurl" id="SSLurl" type="hidden" value="true"/>

</form>

    <form id="form1" runat="server">
    
            
        <div style="height: 83px; width: 545px; margin-left: 159px; margin-top: 30px; background-color: #CCCCCC; font-family: Arial, Helvetica, sans-serif; font-weight: bold; font-style: normal; font-variant: small-caps;">
                   <asp:Label ID="lbInfoREsultat" runat="server"></asp:Label>
                   <br />
                   <br />
 <a href="default.aspx">Feu click en aquest enllaç per tornar al inici</a>
            </div>
             
    <div style="height: 284px; width: 141px; margin-top: 0px; background-color: #FFFFFF;">
    
            
        <img alt="" src="LogoUdL.GIF" /></div>
    </form>
</body>
</html>
