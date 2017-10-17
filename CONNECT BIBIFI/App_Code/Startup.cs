using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(CONNECT_BIBIFI.Startup))]
namespace CONNECT_BIBIFI
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
