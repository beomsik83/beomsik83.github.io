<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EncPasswd.aspx.cs" Inherits="A1EQUIP.EncPasswd" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<html>
<head id="Head1" runat="server">
	<title>현황</title>
    <link rel="stylesheet" type="text/css" href="./Common/Css/common.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div style="width:500px;height:50px;text-align:center;">
        <h3>사용자 패스워드 암호화</h3>
    </div>
    <div>
        <li></li> 사용자 아이디 <span style="padding-right:13px;"></span> : 
        <asp:TextBox ID="txtUserID" runat="server" Width="80"></asp:TextBox>
        <li></li> 비밀번호 <span style="padding-right:41px;"></span> : 
        <asp:TextBox ID="txtPasswd" runat="server" ></asp:TextBox>
        <asp:Button ID="btnEncPasswd" runat="server" Text="암호화" OnClick="btnEncPasswd_Click" />
        <li></li><asp:Label ID="Label1" runat="server" Text="비밀번호 암호화"></asp:Label> : 
        <asp:TextBox ID="txtEncPasswd" runat="server" Width="350px"></asp:TextBox>
        <asp:Button ID="btnUpdate" runat="server" Text="DB 업데이트" OnClientClick="if(!confirm('업데이트 하시겠습니까?')) return false;" OnClick="btnUpdate_Click"  />
    </div>
    <div style="padding-top:10px;">
        <asp:Button ID="btnAllUserUpdate" runat="server" Text="전체 사용자의 비밀번호를 암호화하여 자동으로 업데이트 합니다." Width="570px" 
        OnClientClick="if(!confirm('업데이트 하시겠습니까?')) return false;" OnClick="btnAllUserUpdate_Click" />
    </div>
    <div>
        <li style="padding-top:15px;"></li> 결과 메시지 : 
        <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
    </div>
    </form>
</body>
</html>
