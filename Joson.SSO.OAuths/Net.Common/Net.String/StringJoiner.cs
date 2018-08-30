using System;
using System.Collections.Generic; 
using System.Text;

namespace Net.Common
{
    public class StringJoiner
    {
        protected StringBuilder Builder;
        public StringJoiner()
        {
            Builder = new StringBuilder();
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        public static implicit operator StringJoiner(string value)
        {
            StringJoiner text = new StringJoiner();
            text.Builder.Append(value);
            return text;
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="self"></param>
        /// <param name="value"></param>
        /// <returns></returns>
        public static StringJoiner operator +(StringJoiner self, string value)
        {
            self.Builder.Append(value);
            return self;
        }

        public static implicit operator string(StringJoiner value)
        {
            return value.ToString();
        }

        public override string ToString()
        {
            return this.Builder.ToString();
        }

    }


    public static partial class JosonStrings 
    {

        public static void AppendString(StringBuilder sb, string append)
        {
            AppendString(sb, append, ",");
        }

        public static void AppendString(StringBuilder sb, string append, string split)
        {
            if (sb.Length == 0)
            {
                sb.Append(append);
            }
            else
            {
                sb.Append(split);
                sb.Append(append);
            }
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="text"></param>
        /// <param name="start"></param>
        /// <param name="end"></param>
        /// <returns></returns>
        public static string FindString(ref string text, string start, string end = null)
        {
            int startPos = text.IndexOf(start);
            if (startPos != -1)
            {
                if (!string.IsNullOrEmpty(end))
                {
                    int endPos = text.IndexOf(end, startPos);
                    if (endPos != -1)
                    {
                        return text.Substring(startPos, endPos - startPos + end.Length);
                    }
                    return null;
                }
                return text.Substring(startPos);
            }
            return null;
        }
    }


    /*
     * 
 
   string Response = StringHelper.FindString(ref html, "<table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"0\" class=\"table_clist\">", "</table>");
   
   * */
}
