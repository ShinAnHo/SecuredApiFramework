#pragma checksum "D:\SourceCode\SecuredApiFramework\Domain.Client.Web\Views\Home\Normal.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "a737299842526cb286d85e8cc0e0363b476ca6b5"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Home_Normal), @"mvc.1.0.view", @"/Views/Home/Normal.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "D:\SourceCode\SecuredApiFramework\Domain.Client.Web\Views\_ViewImports.cshtml"
using Domain.Client.Web;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "D:\SourceCode\SecuredApiFramework\Domain.Client.Web\Views\_ViewImports.cshtml"
using Domain.Client.Web.Models;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"a737299842526cb286d85e8cc0e0363b476ca6b5", @"/Views/Home/Normal.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"53fab5df7e8946054bb134266f45e3b679229e3d", @"/Views/_ViewImports.cshtml")]
    public class Views_Home_Normal : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#nullable restore
#line 1 "D:\SourceCode\SecuredApiFramework\Domain.Client.Web\Views\Home\Normal.cshtml"
  
    ViewData["Title"] = "Normal Page";

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n<div class=\"text-center\">\r\n    <h1 class=\"display-4\">Welcome</h1>\r\n\r\n    <button onclick=\"Form.NormalCall();\">Normal Call</button>\r\n</div>\r\n\r\n<script type=\"text/javascript\">\r\n\r\n</script>");
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<dynamic> Html { get; private set; }
    }
}
#pragma warning restore 1591
