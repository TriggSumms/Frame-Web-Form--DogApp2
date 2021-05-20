using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(DogWalk_WebForm.Startup))]
namespace DogWalk_WebForm
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
