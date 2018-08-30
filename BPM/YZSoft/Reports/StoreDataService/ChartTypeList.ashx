<%@ WebHandler Language="C#" Class="YZSoft.Reports.ChartTypeList" %>

using System;
using System.Web;
using System.Text;
using System.Web.UI.DataVisualization.Charting;
using System.IO;
using System.Globalization;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Data;
using System.Collections.Generic;

namespace YZSoft.Reports
{
    public class ChartTypeList : IHttpHandler
    {
        private static SeriesChartTypeItemCollection _seriesChartTypeItems;

        static ChartTypeList()
        {
            _seriesChartTypeItems = new SeriesChartTypeItemCollection();
            _seriesChartTypeItems.Add(new SeriesChartTypeItem(SeriesChartType.Area, SeriesChartType.Area.ToString(), 1));
            _seriesChartTypeItems.Add(new SeriesChartTypeItem(SeriesChartType.Bar, SeriesChartType.Bar.ToString(), 1));
            _seriesChartTypeItems.Add(new SeriesChartTypeItem(SeriesChartType.BoxPlot, SeriesChartType.BoxPlot.ToString(), 1));
            _seriesChartTypeItems.Add(new SeriesChartTypeItem(SeriesChartType.Bubble, SeriesChartType.Bubble.ToString(), 1));
            _seriesChartTypeItems.Add(new SeriesChartTypeItem(SeriesChartType.Candlestick, SeriesChartType.Candlestick.ToString(), 1));
            _seriesChartTypeItems.Add(new SeriesChartTypeItem(SeriesChartType.Column, SeriesChartType.Column.ToString(), 1));
            _seriesChartTypeItems.Add(new SeriesChartTypeItem(SeriesChartType.Doughnut, SeriesChartType.Doughnut.ToString(), 1));
            _seriesChartTypeItems.Add(new SeriesChartTypeItem(SeriesChartType.ErrorBar, SeriesChartType.ErrorBar.ToString(), 1));
            _seriesChartTypeItems.Add(new SeriesChartTypeItem(SeriesChartType.FastLine, SeriesChartType.FastLine.ToString(), 1));
            _seriesChartTypeItems.Add(new SeriesChartTypeItem(SeriesChartType.FastPoint, SeriesChartType.FastPoint.ToString(), 1));
            _seriesChartTypeItems.Add(new SeriesChartTypeItem(SeriesChartType.Funnel, SeriesChartType.Funnel.ToString(), 1));
            _seriesChartTypeItems.Add(new SeriesChartTypeItem(SeriesChartType.Kagi, SeriesChartType.Kagi.ToString(), 2));
            _seriesChartTypeItems.Add(new SeriesChartTypeItem(SeriesChartType.Line, SeriesChartType.Line.ToString(), 1));
            _seriesChartTypeItems.Add(new SeriesChartTypeItem(SeriesChartType.Pie, SeriesChartType.Pie.ToString(), 1));
            _seriesChartTypeItems.Add(new SeriesChartTypeItem(SeriesChartType.Point, SeriesChartType.Point.ToString(), 1));
            _seriesChartTypeItems.Add(new SeriesChartTypeItem(SeriesChartType.PointAndFigure, SeriesChartType.PointAndFigure.ToString(), 2));
            _seriesChartTypeItems.Add(new SeriesChartTypeItem(SeriesChartType.Polar, SeriesChartType.Polar.ToString(), 1));
            _seriesChartTypeItems.Add(new SeriesChartTypeItem(SeriesChartType.Pyramid, SeriesChartType.Pyramid.ToString(), 1));
            _seriesChartTypeItems.Add(new SeriesChartTypeItem(SeriesChartType.Radar, SeriesChartType.Radar.ToString(), 1));
            _seriesChartTypeItems.Add(new SeriesChartTypeItem(SeriesChartType.Range, SeriesChartType.Range.ToString(), 1));
            _seriesChartTypeItems.Add(new SeriesChartTypeItem(SeriesChartType.RangeBar, SeriesChartType.RangeBar.ToString(), 1));
            _seriesChartTypeItems.Add(new SeriesChartTypeItem(SeriesChartType.RangeColumn, SeriesChartType.RangeColumn.ToString(), 1));
            _seriesChartTypeItems.Add(new SeriesChartTypeItem(SeriesChartType.Renko, SeriesChartType.Renko.ToString(), 2));
            _seriesChartTypeItems.Add(new SeriesChartTypeItem(SeriesChartType.Spline, SeriesChartType.Spline.ToString(), 1));
            _seriesChartTypeItems.Add(new SeriesChartTypeItem(SeriesChartType.SplineArea, SeriesChartType.SplineArea.ToString(), 1));
            _seriesChartTypeItems.Add(new SeriesChartTypeItem(SeriesChartType.SplineRange, SeriesChartType.SplineRange.ToString(), 1));
            _seriesChartTypeItems.Add(new SeriesChartTypeItem(SeriesChartType.StackedArea, SeriesChartType.StackedArea.ToString(), 1));
            _seriesChartTypeItems.Add(new SeriesChartTypeItem(SeriesChartType.StackedArea100, SeriesChartType.StackedArea100.ToString(), 1));
            _seriesChartTypeItems.Add(new SeriesChartTypeItem(SeriesChartType.StackedBar, SeriesChartType.StackedBar.ToString(), 1));
            _seriesChartTypeItems.Add(new SeriesChartTypeItem(SeriesChartType.StackedBar100, SeriesChartType.StackedBar100.ToString(), 1));
            _seriesChartTypeItems.Add(new SeriesChartTypeItem(SeriesChartType.StackedColumn, SeriesChartType.StackedColumn.ToString(), 1));
            _seriesChartTypeItems.Add(new SeriesChartTypeItem(SeriesChartType.StackedColumn100, SeriesChartType.StackedColumn100.ToString(), 1));
            _seriesChartTypeItems.Add(new SeriesChartTypeItem(SeriesChartType.StepLine, SeriesChartType.StepLine.ToString(), 1));
            _seriesChartTypeItems.Add(new SeriesChartTypeItem(SeriesChartType.Stock, SeriesChartType.Stock.ToString(), 1));
            _seriesChartTypeItems.Add(new SeriesChartTypeItem(SeriesChartType.ThreeLineBreak, SeriesChartType.ThreeLineBreak.ToString(), 2));
        }
        
        public void ProcessRequest(HttpContext context)
        {
            YZAuthHelper.AshxAuthCheck();

            JsonItemCollection items = new JsonItemCollection();

            foreach (SeriesChartTypeItem chartType in ChartTypeList._seriesChartTypeItems)
            {
                JsonItem jsonItem = new JsonItem();
                items.Add(jsonItem);
                
                jsonItem.Attributes.Add("name", chartType._displayName);
                jsonItem.Attributes.Add("value", chartType._seriesChartType.ToString());
            }
            
            //输出数据
            context.Response.Write(items.ToString());
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
        
        private class SeriesChartTypeItem
        {
            internal SeriesChartType _seriesChartType;
            internal string _displayName;
            internal int _chartGroupID;

            public SeriesChartTypeItem(SeriesChartType seriesChartType, string displayName, int chartGroupID)
            {
                this._seriesChartType = seriesChartType;
                this._displayName = displayName;
                this._chartGroupID = chartGroupID;
            }
        }

        private class SeriesChartTypeItemCollection : List<SeriesChartTypeItem>
        {
            public SeriesChartTypeItem GetItem(SeriesChartType seriesChartType)
            {
                foreach (SeriesChartTypeItem item in this)
                {
                    if (item._seriesChartType == seriesChartType)
                        return item;
                }

                return null;
            }
        }
    }
}
