﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <script>
        function calcola() {
            $.ajax({
                }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <button id="btnTest" onclick="calcola()">SOMMA</button>
            <input id="txtIn" type="text" />
        </div>
    </form>
</body>
</html>