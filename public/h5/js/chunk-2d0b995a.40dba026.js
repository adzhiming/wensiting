(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-2d0b995a"],{3425:function(t,s,a){"use strict";a.r(s);var e=function(){var t=this,s=t.$createElement,a=t._self._c||s;return a("div",{staticClass:"my-promotion"},[a("div",{staticClass:"header"},[a("div",{staticClass:"name acea-row row-center-wrapper"},[a("div",[t._v("当前佣金")]),a("router-link",{staticClass:"record",attrs:{to:"/user/cashrecord"}},[t._v("\n        提现记录"),a("span",{staticClass:"iconfont icon-xiangyou"})])],1),a("div",{staticClass:"num"},[t._v(t._s(t.userInfo.brokerage_price||0))]),a("div",{staticClass:"profit acea-row row-between-wrapper"},[a("div",{staticClass:"item"},[a("div",[t._v("昨日收益")]),a("div",{staticClass:"money"},[t._v(t._s(t.userInfo.yesterDay||0))])]),a("div",{staticClass:"item"},[a("div",[t._v("累积已提")]),a("div",{staticClass:"money"},[t._v(t._s(t.userInfo.extractTotalPrice||0))])])])]),a("div",{staticClass:"bnt bg-color-red",on:{click:t.toCash}},[t._v("立即提现")]),a("div",{staticClass:"list acea-row row-between-wrapper"},[a("router-link",{staticClass:"item acea-row row-center-wrapper row-column",attrs:{to:"/user/poster"}},[a("span",{staticClass:"iconfont icon-erweima"}),a("div",[t._v("推广名片")])]),a("router-link",{staticClass:"item acea-row row-center-wrapper row-column",attrs:{to:"/user/commission"}},[a("span",{staticClass:"iconfont icon-qiandai"}),a("div",[t._v("佣金明细")])])],1)])},o=[],r=a("c24f"),i={name:"UserPromotion",components:{},props:{},data:function(){return{userInfo:{}}},mounted:function(){this.getInfo()},methods:{getInfo:function(){var t=this;Object(r["D"])().then(function(s){t.userInfo=s.data,console.log(t.userInfo)},function(s){t.$dialog.message(s.msg)})},toCash:function(){this.$router.push({path:"/user/user_cash"})}}},n=i,c=a("2877"),l=Object(c["a"])(n,e,o,!1,null,null,null);s["default"]=l.exports}}]);
//# sourceMappingURL=chunk-2d0b995a.40dba026.js.map