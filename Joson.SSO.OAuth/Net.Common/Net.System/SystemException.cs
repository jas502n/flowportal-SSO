namespace Net.Common
{
    using System;

    public class GetException : Exception
    {
        public GetException()
        {
        }

        public GetException(string msg)
            : base(msg)
        {
        }
    }
}

