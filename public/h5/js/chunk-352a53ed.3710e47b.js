(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-352a53ed"],{"0636":function(s,t,i){"use strict";i.r(t);var n=function(){var s=this,t=s.$createElement,i=s._self._c||t;return i("div",{staticClass:"sign"},[i("div",{staticClass:"header bg-color-red"},[i("div",{staticClass:"headerCon acea-row row-between-wrapper"},[i("div",{staticClass:"left acea-row row-between-wrapper"},[i("div",{staticClass:"pictrue"},[i("img",{attrs:{src:s.userInfo.avatar}})]),i("div",{staticClass:"text"},[i("div",{staticClass:"line1"},[s._v(s._s(s.userInfo.nickname))]),i("div",{staticClass:"integral acea-row"},[i("span",[s._v("积分: "+s._s(s.userInfo.integral))])])])]),i("router-link",{staticClass:"right acea-row row-middle",attrs:{to:"/user/sign_record"}},[i("div",{staticClass:"iconfont icon-caidan"}),i("div",[s._v("明细")])])],1)]),i("div",{staticClass:"wrapper"},[i("div",{staticClass:"list acea-row row-between-wrapper"},s._l(s.signSystemList,function(t,n){return i("div",{key:n,staticClass:"item"},[i("div",{class:n+1===s.signSystemList.length?"rewardTxt":""},[s._v("\n          "+s._s(t.day)+"\n        ")]),i("div",{staticClass:"venus",class:(n+1===s.signSystemList.length?"reward":"")+" "+(s.sign_index>=n+1?"venusSelect":"")}),i("div",{staticClass:"num",class:s.sign_index>=n+1?"on":""},[s._v("\n          +"+s._s(t.sign_num)+"\n        ")])])}),0),i("div",{staticClass:"but bg-color-red",class:s.userInfo.is_day_sgin?"on":"",on:{click:s.goSign}},[s._v("\n      "+s._s(s.userInfo.is_day_sgin?"已签到":"立即签到")+"\n    ")]),i("div",{staticClass:"lock"})]),i("div",{staticClass:"wrapper wrapper2"},[i("div",{staticClass:"tip"},[s._v("已累计签到")]),i("div",{staticClass:"list2 acea-row row-center row-bottom"},[s._l(s.signCount,function(t,n){return i("div",{key:n,staticClass:"item"},[s._v("\n        "+s._s(t||0)+"\n      ")])}),i("div",{staticClass:"data"},[s._v("天")])],2),i("div",{staticClass:"tip2"},[s._v("\n      据说连续签到第"+s._s(s.day)+"天可获得超额积分，一定要坚持签到哦~~~\n    ")]),i("div",{staticClass:"list3"},[s._l(s.signList,function(t,n){return i("div",{key:n,staticClass:"item acea-row row-between-wrapper"},[i("div",[i("div",{staticClass:"name line1"},[s._v(s._s(t.title))]),i("div",{staticClass:"data"},[s._v(s._s(t.add_time))])]),i("div",{staticClass:"num font-color-red"},[s._v("+"+s._s(t.number))])])}),s.signList.length>0?i("router-link",{staticClass:"Loads acea-row row-center-wrapper",attrs:{to:"/user/sign_record"}},[s._v("\n        点击加载更多\n        "),i("div",{staticClass:"iconfont icon-xiangyou acea-row row-center-wrapper"})]):s._e()],2)]),i("div",{staticClass:"signTip acea-row row-center-wrapper",class:!0===s.active?"on":""},[i("div",{staticClass:"signTipLight loadingpic"}),i("div",{staticClass:"signTipCon"},[i("div",{staticClass:"state"},[s._v("签到成功")]),i("div",{staticClass:"integral"},[s._v("获得"+s._s(s.integral)+"积分")]),i("div",{staticClass:"signTipBnt",on:{click:s.close}},[s._v("好的")])])]),i("div",{staticClass:"mask",attrs:{hidden:!1===s.active},on:{touchmove:function(s){s.preventDefault()}}})])},a=[],e=(i("28a5"),i("c24f")),r=i("9fd0"),c={name:"Sign",components:{},props:{},data:function(){return{userInfo:{},integral:0,signCount:[],sign_index:0,signSystemList:[],signList:[],page:1,limit:3,active:!1,day:""}},mounted:function(){this.signUser(),this.signConfig(),this.getSignList()},methods:{PrefixInteger:function(s,t){return(Array(t).join("0")+s).slice(-t).split("")},Rp:function(s){var t=["零","一","二","三","四","五","六","七","八","九"],i="";s=""+s;for(var n=0;n<s.length;n++)i+=t[parseInt(s.charAt(n))];return i},signUser:function(){var s=this;Object(e["N"])({sign:1}).then(function(t){t.data.integral=parseInt(t.data.integral);var i=t.data.sum_sgin_day;s.userInfo=t.data,s.signCount=s.PrefixInteger(i,4),s.sign_index=parseInt(t.data.sign_num)})},signConfig:function(){var s=this;Object(e["w"])().then(function(t){s.signSystemList=t.data,s.day=s.Rp(s.signSystemList.length)})},goSign:function(){var s=this,t=s.userInfo.sum_sgin_day;if(s.userInfo.is_day_sgin)return s.$dialog.toast({mes:"您今日已签到!"});Object(e["M"])().then(function(i){s.active=!0,s.integral=i.data.integral;var n=parseInt(s.sign_index+1);s.sign_index=n>s.signSystemList.length?1:n,s.signCount=s.PrefixInteger(t+1,4),s.userInfo.is_day_sgin=!0,s.userInfo.integral=Object(r["a"])(s.userInfo.integral,i.data.integral),s.getSignList()})},getSignList:function(){var s=this;Object(e["x"])(s.page,s.limit).then(function(t){s.signList=t.data})},close:function(){this.active=!1}}},o=c,l=(i("210b"),i("2877")),d=Object(l["a"])(o,n,a,!1,null,"67d3757c",null);t["default"]=d.exports},"210b":function(s,t,i){"use strict";var n=i("2165"),a=i.n(n);a.a},2165:function(s,t,i){}}]);
//# sourceMappingURL=chunk-352a53ed.3710e47b.js.map