using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(www.JosonsX.com.Startup))]
namespace www.JosonsX.com
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
