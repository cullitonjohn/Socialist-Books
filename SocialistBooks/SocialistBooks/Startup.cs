using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(SocialistBooks.Startup))]
namespace SocialistBooks
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
