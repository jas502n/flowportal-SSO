namespace Net.Common
{
    using System;
    using System.ComponentModel;
    using System.Runtime.InteropServices;
    using System.Threading;

    internal class JPerfCounter
    {
        private long freq;
        private long startTime = 0L;
        private long stopTime = 0L;

        public JPerfCounter(bool startTimer)
        {
            if (!QueryPerformanceFrequency(out this.freq))
            {
                throw new Win32Exception();
            }
            if (startTimer)
            {
                this.Start();
            }
        }

        [DllImport("Kernel32.dll")]
        private static extern bool QueryPerformanceCounter(out long lpPerformanceCount);
        [DllImport("Kernel32.dll")]
        private static extern bool QueryPerformanceFrequency(out long lpFrequency);
        public void Start()
        {
            Thread.Sleep(0);
            QueryPerformanceCounter(out this.startTime);
        }

        public void Stop()
        {
            QueryPerformanceCounter(out this.stopTime);
        }

        public double Duration
        {
            get
            {
                return (((double) (this.stopTime - this.startTime)) / ((double) this.freq));
            }
        }
    }
}

