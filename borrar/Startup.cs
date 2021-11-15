using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(borrar.Startup))]
namespace borrar
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
