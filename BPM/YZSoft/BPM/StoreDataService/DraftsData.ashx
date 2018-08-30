<%@ WebHandler Language="C#" Class="YZSoft.BPM.StoreDataService.DraftsData" %>

using System;
using System.Web;
using System.Text;
using BPM;
using BPM.Client;

namespace YZSoft.BPM.StoreDataService
{
    public class DraftsData : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            YZAuthHelper.AshxAuthCheck();

            string loginAccount = YZAuthHelper.LoginUserAccount;      
            GridPageInfo gridPageInfo = new GridPageInfo(context);
            IQueryProvider queryProvider = QueryManager.GetCurrentProvider(context);

            //获得数据
            BPMDraftCollection drafts = new BPMDraftCollection();
            int rowcount;
            JsonItem rootItem = new JsonItem();
            using (BPMConnection cn = new BPMConnection())
            {
                cn.WebOpen();

                drafts = cn.GetMyDrafts(DraftType.Draft, null, queryProvider.SortStringDraftGrid, gridPageInfo.Start, gridPageInfo.Limit, out rowcount);

                //将数据转化为Json集合
                rootItem.Attributes.Add(JsonItem.TotalRows, rowcount);

                JsonItemCollection children = new JsonItemCollection();
                rootItem.Attributes.Add("children", children);

                foreach (BPMDraft draft in drafts)
                {
                    JsonItem item = new JsonItem();
                    children.Add(item);

                    item.Attributes.Add("DraftID", draft.DraftGuid.ToString());
                    item.Attributes.Add("ProcessName", draft.ProcessName);
                    item.Attributes.Add("CreateDate", YZStringHelper.DateToStringL(draft.CreateDate));
                    item.Attributes.Add("ModifyDate", YZStringHelper.DateToStringL(draft.ModifyDate));
                    item.Attributes.Add("Account", draft.Account);
                    item.Attributes.Add("OwnerAccount", draft.OwnerAccount);
                    item.Attributes.Add("Comments", draft.Comments);
                    item.Attributes.Add("Description", draft.Description);
                    if (!NameCompare.EquName(draft.OwnerAccount, loginAccount))
                        item.Attributes.Add("Owner", PositionManager.MemberFullNameFromID(cn,draft.OwnerPositionID));
                }
            }

            //输出数据
            context.Response.Write(rootItem.ToString());
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}
