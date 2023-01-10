<%@ Page Title="" Language="C#" MasterPageFile="~/Autosalone.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="container">
        <div class="row p-2">
            <div class="col-md-4">
                <div class="px-2 card">
                    <div class="card-header">
                        <h4>Annuncio agli utenti</h4>
                    </div>
                    <div class="card-body">
                        <p class="card-text">Il sito sta venendo sviluppato attivamente; per ora login e registrazione nuovo cliente funzionanti</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="px-2 card">
                    <div class="card-header">
                        <h4>Prossima implementazione</h4>
                    </div>
                    <div class="card-body">
                        <p class="card-text">Prossimamente aggiugeremo una pagina di cronologia Registrazioni clienti</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="px-2 card">
                    <div class="card-header">
                        <h4>Implementazioni programmate</h4>
                    </div>
                    <div class="card-body">
                        <p class="card-text">Pagine per: modificare i dati e Acquistare</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

