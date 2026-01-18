using BlogApp;
using BlogApp.Models;
using Microsoft.AspNetCore.Components.Web;
using Microsoft.AspNetCore.Components.WebAssembly.Hosting;
using MudBlazor.Services;
using System.Text.Json;
using System.Text.Json.Serialization;


var builder = WebAssemblyHostBuilder.CreateDefault(args);
builder.RootComponents.Add<App>("#app");
builder.RootComponents.Add<HeadOutlet>("head::after");

builder.Services.AddMudServices();


builder.Services.AddScoped(sp => new HttpClient { BaseAddress = new Uri("https://blog-backend-1-vip2.onrender.com") });


builder.Services.AddScoped<UserData>();

//builder.Services.Configure<JsonSerializerOptions>(options =>
//{
//    options.PropertyNameCaseInsensitive = true;
//    options.TypeInfoResolver = AppJsonSerializerContext.Default;
//});

await builder.Build().RunAsync();
