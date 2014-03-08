﻿namespace DocumentSystem
{
    using System.Collections.Generic;

    public class VideoDocument : MultimediaDocument
    {
        public ulong? FrameRate { get; private set; }

        public override void LoadProperty(string key, string value)
        {
            if (key == "framerate")
            {
                this.FrameRate = ulong.Parse(value);
            }
            else
            {
                base.LoadProperty(key, value);
            }
        }

        public override void SaveAllProperties(IList<KeyValuePair<string, object>> output)
        {
            output.Add(new KeyValuePair<string, object>("framerate", this.FrameRate));

            base.SaveAllProperties(output);
        }
    }
}