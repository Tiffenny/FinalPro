using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(WebSiteFIN.Startup))]
namespace WebSiteFIN
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
