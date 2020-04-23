using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace macro
{
    public interface IMainForm
    {
        void SetViewText(string control, string name, int index, string value);

        string GetViewText(string control, string name, int index);
    }
}
