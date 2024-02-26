using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Hosting;
using Projeto_Web_Lh_Pets_versão_1;

var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();

app.MapGet("/", () => "Projeto Web - LHpet 1");

app.UseStaticFiles();
app.MapGet("/index", (HttpContext contexto) =>
{
    contexto.Response.Redirect("index.html", false);
});

Banco dba = new Banco();
app.MapGet("/rota", (HttpContext contexto) =>
{
    string listaString = dba.GetListaString();
    return contexto.Response.WriteAsync(listaString);
});

app.Run();
