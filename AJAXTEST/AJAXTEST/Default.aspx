<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <script>
        function calcola() {
            $.ajax({                type: "POST",                url: "Default.aspx/Sum",                data: "{'a': '10', 'b' : '1'}",                contentType: "application/json; charset=utf-8",                dataType: "json",                success: function (msg) {                    //alert(msg.d);                    $('#txtIn').val(msg.d);                },                error: function (err) {                    alert(err);
                }            });
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
