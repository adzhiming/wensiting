(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-275e4407"],{"00fd":function(t,e,r){"use strict";r.d(e,"a",function(){return i}),r.d(e,"d",function(){return o}),r.d(e,"b",function(){return c}),r.d(e,"c",function(){return d});r("a481");var a=r("f8b7"),s=r("cba2"),n=r("74f9");function i(t){return new Promise(function(e,r){s["a"].confirm({mes:"确认取消该订单?",opts:function(){Object(a["a"])(t).then(function(t){s["a"].success("取消成功"),e(t)}).catch(function(t){s["a"].error("取消失败"),r(t)})}})})}function o(t){return new Promise(function(e,r){Object(a["n"])(t).then(function(t){s["a"].success("收货成功"),e(t)}).catch(function(t){s["a"].error("收货失败"),r(t)})})}function c(t){return new Promise(function(e,r){s["a"].confirm({mes:"确认删除该订单?",opts:function(){Object(a["c"])(t).then(function(t){s["a"].success("删除成功"),e(t)}).catch(function(t){s["a"].error("删除失败"),r(t)})}})})}function d(t,e,r){return new Promise(function(i,o){s["a"].loading.open(""),Object(a["j"])(t,e,r).then(function(t){var e=t.data;switch(s["a"].loading.close(),e.status){case"WECHAT_H5_PAY":o(e),setTimeout(function(){location.replace(e.result.jsConfig.mweb_url)},100);break;case"ORDER_EXIST":case"EXTEND_ORDER":case"PAY_ERROR":case"PAY_DEFICIENCY":s["a"].toast({mes:t.msg}),o(e);break;case"SUCCESS":s["a"].success(t.msg),i(e);break;case"WECHAT_PAY":Object(n["pay"])(e.result.jsConfig).then(function(){i(e)})}}).catch(function(t){s["a"].loading.close(),s["a"].toast({mes:t.msg||"订单支付失败"})})})}},"029b":function(t,e,r){},"2a23":function(t,e,r){"use strict";var a=r("fde3"),s=r.n(a);s.a},"3b8d":function(t,e,r){"use strict";r.d(e,"a",function(){return i});var a=r("795b"),s=r.n(a);function n(t,e,r,a,n,i,o){try{var c=t[i](o),d=c.value}catch(u){return void r(u)}c.done?e(d):s.a.resolve(d).then(a,n)}function i(t){return function(){var e=this,r=arguments;return new s.a(function(a,s){var i=t.apply(e,r);function o(t){n(i,a,s,o,c,"next",t)}function c(t){n(i,a,s,o,c,"throw",t)}o(void 0)})}}},"713c":function(t,e,r){"use strict";var a=function(){var t=this,e=t.$createElement,r=t._self._c||e;return r("div",{staticClass:"orderGoods"},[r("div",{staticClass:"total"},[t._v("共"+t._s(t.cartInfo.length)+"件商品")]),r("div",{staticClass:"goodWrapper"},t._l(t.cartInfo,function(e){return r("div",{key:e.id,staticClass:"item acea-row row-between-wrapper"},[r("div",{staticClass:"pictrue"},[r("img",{staticClass:"image",attrs:{src:e.productInfo.image}})]),r("div",{staticClass:"text"},[r("div",{staticClass:"acea-row row-between-wrapper"},[r("div",{staticClass:"name line1"},[t._v(t._s(e.productInfo.store_name))]),r("div",{staticClass:"num"},[t._v("x "+t._s(e.cart_num))])]),e.productInfo.attrInfo?r("div",{staticClass:"attr line1"},[t._v("\n          "+t._s(e.productInfo.attrInfo.suk)+"\n        ")]):t._e(),r("div",{staticClass:"money font-color-red"},[t._v("￥"+t._s(e.truePrice))]),3===t.evaluate?r("div",{staticClass:"evaluate",on:{click:function(r){return t.$router.push({path:"/goods_evaluate/"+e.unique})}}},[t._v("\n          评价\n        ")]):t._e()])])}),0)])},s=[],n=(r("c5f6"),{name:"OrderGoods",props:{evaluate:Number,cartInfo:{type:Array,default:function(){return[]}}},data:function(){return{}},mounted:function(){},methods:{}}),i=n,o=r("2877"),c=Object(o["a"])(i,a,s,!1,null,null,null);e["a"]=c.exports},"795b":function(t,e,r){t.exports=r("696e")},"92b7":function(t,e,r){"use strict";var a=function(){var t=this,e=t.$createElement,r=t._self._c||e;return r("div",[r("div",{staticClass:"payment",class:!0===t.value?"on":""},[r("div",{staticClass:"title acea-row row-center-wrapper"},[t._v("\n      选择付款方式"),r("span",{staticClass:"iconfont icon-guanbi",on:{click:t.close}})]),-1!==t.types.indexOf("weixin")?r("div",{staticClass:"item acea-row row-between-wrapper",on:{click:function(e){return t.checked("weixin")}}},[t._m(0),r("div",{staticClass:"iconfont icon-xiangyou"})]):t._e(),-1!==t.types.indexOf("alipay")?r("div",{staticClass:"item acea-row row-between-wrapper",on:{click:function(e){return t.checked("alipay")}}},[t._m(1),r("div",{staticClass:"iconfont icon-xiangyou"})]):t._e(),-1!==t.types.indexOf("yue")?r("div",{staticClass:"item acea-row row-between-wrapper",on:{click:function(e){return t.checked("yue")}}},[r("div",{staticClass:"left acea-row row-between-wrapper"},[r("div",{staticClass:"iconfont icon-yuezhifu"}),r("div",{staticClass:"text"},[r("div",{staticClass:"name"},[t._v("余额支付")]),r("div",{staticClass:"info"},[t._v("\n            当前可用余额："),r("span",{staticClass:"money"},[t._v(t._s(t.balance))])])])]),r("div",{staticClass:"iconfont icon-xiangyou"})]):t._e(),-1!==t.types.indexOf("offline")?r("div",{staticClass:"item acea-row row-between-wrapper",on:{click:function(e){return t.checked("offline")}}},[t._m(2),r("div",{staticClass:"iconfont icon-xiangyou"})]):t._e()]),r("div",{directives:[{name:"show",rawName:"v-show",value:t.value,expression:"value"}],staticClass:"mask",on:{click:t.close}})])},s=[function(){var t=this,e=t.$createElement,r=t._self._c||e;return r("div",{staticClass:"left acea-row row-between-wrapper"},[r("div",{staticClass:"iconfont icon-weixinzhifu"}),r("div",{staticClass:"text"},[r("div",{staticClass:"name"},[t._v("微信支付")]),r("div",{staticClass:"info"},[t._v("使用微信快捷支付")])])])},function(){var t=this,e=t.$createElement,r=t._self._c||e;return r("div",{staticClass:"left acea-row row-between-wrapper"},[r("div",{staticClass:"iconfont icon-zhifubao"}),r("div",{staticClass:"text"},[r("div",{staticClass:"name"},[t._v("支付宝支付")]),r("div",{staticClass:"info"},[t._v("使用线上支付宝支付")])])])},function(){var t=this,e=t.$createElement,r=t._self._c||e;return r("div",{staticClass:"left acea-row row-between-wrapper"},[r("div",{staticClass:"iconfont icon-yuezhifu1"}),r("div",{staticClass:"text"},[r("div",{staticClass:"name"},[t._v("线下支付")]),r("div",{staticClass:"info"},[t._v("选择线下付款方式")])])])}],n=(r("c5f6"),{name:"Payment",props:{value:{type:Boolean,default:!1},balance:{type:[Number,String],default:0},types:{type:Array,default:function(){return["weixin","alipay","yue","offline"]}}},data:function(){return{}},mounted:function(){},methods:{checked:function(t){this.$emit("checked",t),this.close()},close:function(){this.$emit("input",!1)}}}),i=n,o=(r("2a23"),r("2877")),c=Object(o["a"])(i,a,s,!1,null,"54b2b916",null);e["a"]=c.exports},"96cf":function(t,e,r){var a=function(t){"use strict";var e,r=Object.prototype,a=r.hasOwnProperty,s="function"===typeof Symbol?Symbol:{},n=s.iterator||"@@iterator",i=s.asyncIterator||"@@asyncIterator",o=s.toStringTag||"@@toStringTag";function c(t,e,r,a){var s=e&&e.prototype instanceof _?e:_,n=Object.create(s.prototype),i=new j(a||[]);return n._invoke=x(t,r,i),n}function d(t,e,r){try{return{type:"normal",arg:t.call(e,r)}}catch(a){return{type:"throw",arg:a}}}t.wrap=c;var u="suspendedStart",l="suspendedYield",f="executing",v="completed",p={};function _(){}function h(){}function y(){}var m={};m[n]=function(){return this};var w=Object.getPrototypeOf,C=w&&w(w(S([])));C&&C!==r&&a.call(C,n)&&(m=C);var g=y.prototype=_.prototype=Object.create(m);function b(t){["next","throw","return"].forEach(function(e){t[e]=function(t){return this._invoke(e,t)}})}function I(t){function e(r,s,n,i){var o=d(t[r],t,s);if("throw"!==o.type){var c=o.arg,u=c.value;return u&&"object"===typeof u&&a.call(u,"__await")?Promise.resolve(u.__await).then(function(t){e("next",t,n,i)},function(t){e("throw",t,n,i)}):Promise.resolve(u).then(function(t){c.value=t,n(c)},function(t){return e("throw",t,n,i)})}i(o.arg)}var r;function s(t,a){function s(){return new Promise(function(r,s){e(t,a,r,s)})}return r=r?r.then(s,s):s()}this._invoke=s}function x(t,e,r){var a=u;return function(s,n){if(a===f)throw new Error("Generator is already running");if(a===v){if("throw"===s)throw n;return L()}r.method=s,r.arg=n;while(1){var i=r.delegate;if(i){var o=O(i,r);if(o){if(o===p)continue;return o}}if("next"===r.method)r.sent=r._sent=r.arg;else if("throw"===r.method){if(a===u)throw a=v,r.arg;r.dispatchException(r.arg)}else"return"===r.method&&r.abrupt("return",r.arg);a=f;var c=d(t,e,r);if("normal"===c.type){if(a=r.done?v:l,c.arg===p)continue;return{value:c.arg,done:r.done}}"throw"===c.type&&(a=v,r.method="throw",r.arg=c.arg)}}}function O(t,r){var a=t.iterator[r.method];if(a===e){if(r.delegate=null,"throw"===r.method){if(t.iterator["return"]&&(r.method="return",r.arg=e,O(t,r),"throw"===r.method))return p;r.method="throw",r.arg=new TypeError("The iterator does not provide a 'throw' method")}return p}var s=d(a,t.iterator,r.arg);if("throw"===s.type)return r.method="throw",r.arg=s.arg,r.delegate=null,p;var n=s.arg;return n?n.done?(r[t.resultName]=n.value,r.next=t.nextLoc,"return"!==r.method&&(r.method="next",r.arg=e),r.delegate=null,p):n:(r.method="throw",r.arg=new TypeError("iterator result is not an object"),r.delegate=null,p)}function k(t){var e={tryLoc:t[0]};1 in t&&(e.catchLoc=t[1]),2 in t&&(e.finallyLoc=t[2],e.afterLoc=t[3]),this.tryEntries.push(e)}function E(t){var e=t.completion||{};e.type="normal",delete e.arg,t.completion=e}function j(t){this.tryEntries=[{tryLoc:"root"}],t.forEach(k,this),this.reset(!0)}function S(t){if(t){var r=t[n];if(r)return r.call(t);if("function"===typeof t.next)return t;if(!isNaN(t.length)){var s=-1,i=function r(){while(++s<t.length)if(a.call(t,s))return r.value=t[s],r.done=!1,r;return r.value=e,r.done=!0,r};return i.next=i}}return{next:L}}function L(){return{value:e,done:!0}}return h.prototype=g.constructor=y,y.constructor=h,y[o]=h.displayName="GeneratorFunction",t.isGeneratorFunction=function(t){var e="function"===typeof t&&t.constructor;return!!e&&(e===h||"GeneratorFunction"===(e.displayName||e.name))},t.mark=function(t){return Object.setPrototypeOf?Object.setPrototypeOf(t,y):(t.__proto__=y,o in t||(t[o]="GeneratorFunction")),t.prototype=Object.create(g),t},t.awrap=function(t){return{__await:t}},b(I.prototype),I.prototype[i]=function(){return this},t.AsyncIterator=I,t.async=function(e,r,a,s){var n=new I(c(e,r,a,s));return t.isGeneratorFunction(r)?n:n.next().then(function(t){return t.done?t.value:n.next()})},b(g),g[o]="Generator",g[n]=function(){return this},g.toString=function(){return"[object Generator]"},t.keys=function(t){var e=[];for(var r in t)e.push(r);return e.reverse(),function r(){while(e.length){var a=e.pop();if(a in t)return r.value=a,r.done=!1,r}return r.done=!0,r}},t.values=S,j.prototype={constructor:j,reset:function(t){if(this.prev=0,this.next=0,this.sent=this._sent=e,this.done=!1,this.delegate=null,this.method="next",this.arg=e,this.tryEntries.forEach(E),!t)for(var r in this)"t"===r.charAt(0)&&a.call(this,r)&&!isNaN(+r.slice(1))&&(this[r]=e)},stop:function(){this.done=!0;var t=this.tryEntries[0],e=t.completion;if("throw"===e.type)throw e.arg;return this.rval},dispatchException:function(t){if(this.done)throw t;var r=this;function s(a,s){return o.type="throw",o.arg=t,r.next=a,s&&(r.method="next",r.arg=e),!!s}for(var n=this.tryEntries.length-1;n>=0;--n){var i=this.tryEntries[n],o=i.completion;if("root"===i.tryLoc)return s("end");if(i.tryLoc<=this.prev){var c=a.call(i,"catchLoc"),d=a.call(i,"finallyLoc");if(c&&d){if(this.prev<i.catchLoc)return s(i.catchLoc,!0);if(this.prev<i.finallyLoc)return s(i.finallyLoc)}else if(c){if(this.prev<i.catchLoc)return s(i.catchLoc,!0)}else{if(!d)throw new Error("try statement without catch or finally");if(this.prev<i.finallyLoc)return s(i.finallyLoc)}}}},abrupt:function(t,e){for(var r=this.tryEntries.length-1;r>=0;--r){var s=this.tryEntries[r];if(s.tryLoc<=this.prev&&a.call(s,"finallyLoc")&&this.prev<s.finallyLoc){var n=s;break}}n&&("break"===t||"continue"===t)&&n.tryLoc<=e&&e<=n.finallyLoc&&(n=null);var i=n?n.completion:{};return i.type=t,i.arg=e,n?(this.method="next",this.next=n.finallyLoc,p):this.complete(i)},complete:function(t,e){if("throw"===t.type)throw t.arg;return"break"===t.type||"continue"===t.type?this.next=t.arg:"return"===t.type?(this.rval=this.arg=t.arg,this.method="return",this.next="end"):"normal"===t.type&&e&&(this.next=e),p},finish:function(t){for(var e=this.tryEntries.length-1;e>=0;--e){var r=this.tryEntries[e];if(r.finallyLoc===t)return this.complete(r.completion,r.afterLoc),E(r),p}},catch:function(t){for(var e=this.tryEntries.length-1;e>=0;--e){var r=this.tryEntries[e];if(r.tryLoc===t){var a=r.completion;if("throw"===a.type){var s=a.arg;E(r)}return s}}throw new Error("illegal catch attempt")},delegateYield:function(t,r,a){return this.delegate={iterator:S(t),resultName:r,nextLoc:a},"next"===this.method&&(this.arg=e),p}},t}(t.exports);try{regeneratorRuntime=a}catch(s){Function("r","regeneratorRuntime = r")(a)}},"9d97":function(t,e,r){t.exports=r.p+"h5/img/writeOff.e1bf8d03.jpg"},afa3:function(t,e,r){t.exports=r.p+"h5/img/line.05bf1c84.jpg"},b11c:function(t,e,r){"use strict";var a=r("029b"),s=r.n(a);s.a},e68f:function(t,e,r){"use strict";r.r(e);var a=function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("div",{staticClass:"order-details"},[a("div",{staticClass:"header bg-color-red acea-row row-middle",class:t.refundOrder?"on":""},[t.refundOrder?t._e():a("div",{staticClass:"pictrue"},[a("img",{attrs:{src:t.orderInfo.status_pic}})]),a("div",{staticClass:"data",class:t.refundOrder?"on":""},[a("div",{staticClass:"state"},[t._v(t._s(t.orderInfo._status._msg))]),a("div",[t._v("\n        "+t._s(t.orderInfo.add_time_y)),a("span",{staticClass:"time"},[t._v(t._s(t.orderInfo.add_time_h))])])])]),t.refundOrder?t._e():[a("div",{staticClass:"nav"},[a("div",{staticClass:"navCon acea-row row-between-wrapper"},[a("div",{class:{on:0===t.status.type||9===t.status.type}},[t._v("\n          待付款\n        ")]),2===t.orderInfo.shipping_type?a("div",{class:{on:1===t.status.type}},[t._v("\n          待核销\n        ")]):a("div",{class:{on:1===t.status.type}},[t._v("待发货")]),1===t.orderInfo.shipping_type?a("div",{class:{on:2===t.status.type}},[t._v("\n          待收货\n        ")]):t._e(),a("div",{class:{on:3===t.status.type}},[t._v("待评价")]),a("div",{class:{on:4===t.status.type}},[t._v("已完成")])]),a("div",{staticClass:"progress acea-row row-between-wrapper"},[a("div",{staticClass:"iconfont",class:[0===t.status.type||9===t.status.type?"icon-webicon318":"icon-yuandianxiao",t.status.type>=0?"font-color-red":""]}),a("div",{staticClass:"line",class:{"bg-color-red":t.status.type>0&&9!=t.status.type}}),a("div",{staticClass:"iconfont",class:[1===t.status.type?"icon-webicon318":"icon-yuandianxiao",t.status.type>=1&&6!=t.status.type&&9!=t.status.type?"font-color-red":""]}),1===t.orderInfo.shipping_type?a("div",{staticClass:"line",class:{"bg-color-red":t.status.type>1&&6!=t.status.type&&9!=t.status.type}}):t._e(),1===t.orderInfo.shipping_type?a("div",{staticClass:"iconfont",class:[2===t.status.type?"icon-webicon318":"icon-yuandianxiao",t.status.type>=2&&6!=t.status.type&&9!=t.status.type?"font-color-red":""]}):t._e(),a("div",{staticClass:"line",class:{"bg-color-red":t.status.type>2&&6!=t.status.type&&9!=t.status.type}}),a("div",{staticClass:"iconfont",class:[3===t.status.type?"icon-webicon318":"icon-yuandianxiao",t.status.type>=3&&6!=t.status.type&&9!=t.status.type?"font-color-red":""]}),a("div",{staticClass:"line",class:{"bg-color-red":t.status.type>3&&6!=t.status.type&&9!=t.status.type}}),a("div",{staticClass:"iconfont",class:[4==t.status.type?"icon-webicon318":"icon-yuandianxiao",t.status.type>=4&&6!=t.status.type&&9!=t.status.type?"font-color-red":""]})])]),2===t.orderInfo.shipping_type&&1===t.orderInfo.paid?a("div",{staticClass:"writeOff"},[a("div",{staticClass:"title"},[t._v("核销信息")]),a("div",{staticClass:"grayBg"},[a("div",{staticClass:"pictrue"},[a("img",{attrs:{src:t.orderInfo.code}})])]),t._m(0),a("div",{staticClass:"num"},[t._v(t._s(t.orderInfo._verify_code))]),a("div",{staticClass:"rules"},[a("div",{staticClass:"item"},[t._m(1),a("div",{staticClass:"info"},[t._v("\n            每日："),a("span",{staticClass:"time"},[t._v(t._s(t.system_store.day_time))])])]),t._m(2)])]):t._e(),2===t.orderInfo.shipping_type&&1===t.orderInfo.paid?a("div",{staticClass:"map acea-row row-between-wrapper"},[a("div",[t._v("自提地址信息")]),a("div",{staticClass:"place cart-color acea-row row-center-wrapper",on:{click:t.showChang}},[a("span",{staticClass:"iconfont icon-weizhi"}),t._v("查看位置\n      ")])]):t._e(),1===t.orderInfo.shipping_type?a("div",{staticClass:"address"},[a("div",{staticClass:"name"},[t._v("\n        "+t._s(t.orderInfo.real_name)),a("span",{staticClass:"phone"},[t._v(t._s(t.orderInfo.user_phone))])]),a("div",[t._v(t._s(t.orderInfo.user_address))])]):a("div",{staticClass:"address"},[a("div",{staticClass:"name"},[t._v("\n        "+t._s(t.system_store.name)),a("span",{staticClass:"phone"},[t._v(t._s(t.system_store.phone))]),a("a",{staticClass:"iconfont icon-tonghua font-color-red",attrs:{href:"tel:"+t.system_store.phone}})]),a("div",[t._v(t._s(t.system_store._detailed_address))])]),1===t.orderInfo.shipping_type?a("div",{staticClass:"line"},[a("img",{attrs:{src:r("afa3")}})]):t._e()],a("OrderGoods",{attrs:{evaluate:t.status.type||0,cartInfo:t.orderInfo.cartInfo||[]}}),a("div",{staticClass:"wrapper"},[a("div",{staticClass:"item acea-row row-between"},[a("div",[t._v("订单编号：")]),a("div",{staticClass:"conter acea-row row-middle row-right"},[t._v("\n        "+t._s(t.orderInfo.order_id)),a("span",{staticClass:"copy copy-data",attrs:{"data-clipboard-text":t.orderInfo.order_id}},[t._v("复制")])])]),a("div",{staticClass:"item acea-row row-between"},[a("div",[t._v("下单时间：")]),a("div",{staticClass:"conter"},[t._v("\n        "+t._s(t.orderInfo.add_time_y+" "+t.orderInfo.add_time_h)+"\n      ")])]),a("div",{staticClass:"item acea-row row-between"},[a("div",[t._v("订单类型：")]),a("div",{staticClass:"conter"},[t._v("\n        "+t._s(t.orderTypeName)+"\n      ")])]),a("div",{staticClass:"item acea-row row-between"},[a("div",[t._v("支付状态：")]),a("div",{staticClass:"conter"},[t._v(t._s(t.orderInfo.paid?"已支付":"未支付"))])]),a("div",{staticClass:"item acea-row row-between"},[a("div",[t._v("支付方式：")]),a("div",{staticClass:"conter"},[t._v(t._s(t.orderInfo._status._payType))])]),t.orderInfo.mark?a("div",{staticClass:"item acea-row row-between"},[a("div",[t._v("买家留言：")]),a("div",{staticClass:"conter"},[t._v(t._s(t.orderInfo.mark))])]):t._e()]),0!=t.orderInfo.status?a("div",["express"===t.orderInfo.delivery_type?a("div",{staticClass:"wrapper"},[t._m(3),a("div",{staticClass:"item acea-row row-between"},[a("div",[t._v("快递公司：")]),a("div",{staticClass:"conter"},[t._v(t._s(t.orderInfo.delivery_name||""))])]),a("div",{staticClass:"item acea-row row-between"},[a("div",[t._v("快递号：")]),a("div",{staticClass:"conter"},[t._v(t._s(t.orderInfo.delivery_id||""))])])]):a("div",{staticClass:"wrapper"},[t._m(4),a("div",{staticClass:"item acea-row row-between"},[a("div",[t._v("配送人：")]),a("div",{staticClass:"conter"},[t._v(t._s(t.orderInfo.delivery_name||""))])]),a("div",{staticClass:"item acea-row row-between"},[a("div",[t._v("配送电话：")]),a("div",{staticClass:"conter acea-row row-middle row-right"},[t._v("\n          "+t._s(t.orderInfo.delivery_id||"")),a("span",{staticClass:"copy"},[t._v("拨打")])])])])]):t._e(),t.refundOrder?a("div",{staticClass:"wrapper"},[a("div",{staticClass:"item acea-row row-between"},[a("div",[t._v("收货人：")]),a("div",{staticClass:"conter"},[t._v(t._s(t.orderInfo.real_name))])]),a("div",{staticClass:"item acea-row row-between"},[a("div",[t._v("联系电话：")]),a("div",{staticClass:"conter"},[t._v(t._s(t.orderInfo.user_phone))])]),a("div",{staticClass:"item acea-row row-between"},[a("div",[t._v("收货地址：")]),a("div",{staticClass:"conter"},[t._v(t._s(t.orderInfo.user_address))])])]):t._e(),a("div",{staticClass:"wrapper"},[a("div",{staticClass:"item acea-row row-between"},[a("div",[t._v("支付金额：")]),a("div",{staticClass:"conter"},[t._v("￥"+t._s(t.orderInfo.total_price))])]),t.orderInfo.coupon_price>0?a("div",{staticClass:"item acea-row row-between"},[a("div",[t._v("优惠券抵扣：")]),a("div",{staticClass:"conter"},[t._v("-￥"+t._s(t.orderInfo.coupon_price))])]):t._e(),t.orderInfo.use_integral>0?a("div",{staticClass:"item acea-row row-between"},[a("div",[t._v("积分抵扣：")]),a("div",{staticClass:"conter"},[t._v("-￥"+t._s(t.orderInfo.deduction_price))])]):t._e(),t.orderInfo.pay_postage>0?a("div",{staticClass:"item acea-row row-between"},[a("div",[t._v("运费：")]),a("div",{staticClass:"conter"},[t._v("￥"+t._s(t.orderInfo.pay_postage))])]):t._e(),a("div",{staticClass:"actualPay acea-row row-right"},[t._v("\n      实付款："),a("span",{staticClass:"money font-color-red"},[t._v("￥"+t._s(t.orderInfo.pay_price))])])]),!t.refundOrder&&t.offlineStatus?a("div",{staticStyle:{height:"1.2rem"}}):t._e(),!t.refundOrder&&t.offlineStatus?a("div",{staticClass:"footer acea-row row-right row-middle"},[0===t.status.type?[a("div",{staticClass:"bnt cancel",on:{click:t.cancelOrder}},[t._v("取消订单")]),a("div",{staticClass:"bnt bg-color-red",on:{click:function(e){t.pay=!0}}},[t._v("立即付款")])]:t._e(),1===t.status.type?[a("div",{staticClass:"bnt cancel",on:{click:function(e){return t.$router.push({path:"/order/refund/"+t.orderInfo.order_id})}}},[t._v("\n        申请退款\n      ")])]:t._e(),2===t.status.type?[a("div",{staticClass:"bnt default",on:{click:function(e){return t.$router.push({path:"/order/logistics/"+t.orderInfo.order_id})}}},[t._v("\n        查看物流\n      ")]),a("div",{staticClass:"bnt bg-color-red",on:{click:t.takeOrder}},[t._v("\n        确认收货\n      ")])]:t._e(),3===t.status.type&&"express"===t.orderInfo.delivery_type?[a("div",{staticClass:"bnt default",on:{click:function(e){return t.$router.push({path:"/order/logistics/"+t.orderInfo.order_id})}}},[t._v("\n        查看物流\n      ")])]:t._e(),4===t.status.type?[a("div",{staticClass:"bnt cancel",on:{click:t.delOrder}},[t._v("\n        删除订单\n      ")]),a("div",{staticClass:"bnt default",on:{click:function(e){return t.$router.push({path:"/order/logistics/"+t.orderInfo.order_id})}}},[t._v("\n        查看物流\n      ")])]:t._e(),6===t.status.type?[a("div",{staticClass:"bnt bg-color-red",on:{click:function(e){return t.$router.push({path:"/activity/group_rule/"+t.orderInfo.pink_id})}}},[t._v("\n        查看拼团\n      ")])]:t._e()],2):t._e(),a("Payment",{attrs:{types:t.payType,balance:t.userInfo.now_money},on:{checked:t.toPay},model:{value:t.pay,callback:function(e){t.pay=e},expression:"pay"}}),t.mapShow?a("div",{staticClass:"geoPage"},[a("iframe",{attrs:{width:"100%",height:"100%",frameborder:"0",scrolling:"no",src:"https://apis.map.qq.com/uri/v1/geocoder?coord="+t.system_store.latitude+","+t.system_store.longitude+"&referer="+t.mapKey}})]):t._e()],2)},s=[function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("div",{staticClass:"gear"},[a("img",{attrs:{src:r("9d97")}})])},function(){var t=this,e=t.$createElement,r=t._self._c||e;return r("div",{staticClass:"rulesTitle acea-row row-middle"},[r("span",{staticClass:"iconfont icon-shijian"}),t._v("核销时间\n          ")])},function(){var t=this,e=t.$createElement,r=t._self._c||e;return r("div",{staticClass:"item"},[r("div",{staticClass:"rulesTitle acea-row row-middle"},[r("span",{staticClass:"iconfont icon-shuoming1"}),t._v("使用说明\n          ")]),r("div",{staticClass:"info"},[t._v("可将二维码出示给店员扫描或提供数字核销码")])])},function(){var t=this,e=t.$createElement,r=t._self._c||e;return r("div",{staticClass:"item acea-row row-between"},[r("div",[t._v("配送方式：")]),r("div",{staticClass:"conter"},[t._v("\n          发货\n        ")])])},function(){var t=this,e=t.$createElement,r=t._self._c||e;return r("div",{staticClass:"item acea-row row-between"},[r("div",[t._v("配送方式：")]),r("div",{staticClass:"conter"},[t._v("\n          送货\n        ")])])}],n=(r("96cf"),r("3b8d")),i=(r("a481"),r("7f7f"),r("cebc")),o=r("713c"),c=r("f8b7"),d=r("b311"),u=r.n(d),l=r("92b7"),f=r("ed08"),v=r("2f62"),p=r("00fd"),_=r("74f9"),h="OrderDetails",y={name:h,components:{OrderGoods:o["a"],Payment:l["a"]},props:{},data:function(){return{offlinePayStatus:2,orderTypeName:"普通订单",orderTypeNameStatus:!0,offlineStatus:!0,id:this.$route.params.id,orderInfo:{_status:{}},status:{},pay:!1,payType:["yue","weixin"],from:Object(f["d"])()?"weixin":"weixinh5",system_store:{},mapKay:"",mapShow:!1}},computed:Object(i["a"])({refundOrder:function(){return this.orderInfo.refund_status>0}},Object(v["b"])(["userInfo"])),watch:{$route:function(t){t.name===h&&this.id!==t.params.id&&(this.id=t.params.id,this.getDetail())}},inject:["app"],mounted:function(){this.getDetail(),this.$nextTick(function(){var t=this,e=document.getElementsByClassName("copy-data"),r=new u.a(e);r.on("success",function(){t.$dialog.success("复制成功")})})},methods:{showChang:function(){if(Object(f["d"])()){var t={latitude:parseFloat(this.system_store.latitude),longitude:parseFloat(this.system_store.longitude),name:this.system_store.name,address:this.system_store._detailed_address};Object(_["wechatEvevt"])("openLocation",t).then(function(t){console.log(t)}).catch(function(e){e.is_ready&&e.wx.openLocation(t)})}else{if(!this.mapKey)return this.$dialog.error("暂无法使用查看地图，请配置您的腾讯地图key");this.mapShow=!0}},goBack:function(){var t=this.app.history,e=t[t.length-1]||{};return"MyOrder"===e.name?this.$router.go(-1):this.$router.replace({path:"/order/list/"})},cancelOrder:function(){var t=this;Object(p["a"])(this.orderInfo.order_id).then(function(){setTimeout(function(){return t.goBack()},300)}).catch(function(){t.getDetail()})},takeOrder:function(){var t=this;Object(p["d"])(this.orderInfo.order_id).finally(function(){t.getDetail()})},delOrder:function(){var t=this;Object(p["b"])(this.orderInfo.order_id).then(function(){setTimeout(function(){return t.goBack()},300)})},setOfflinePayStatus:function(t){var e=this;e.offlinePayStatus=t,1===t&&!0===e.orderTypeNameStatus&&e.payType.push("offline")},getOrderStatus:function(){var t=this.orderInfo||{},e=t._status||{_type:0},r={},a=parseInt(e._type),s=t.delivery_type,n=t.seckill_id?parseInt(t.seckill_id):0,i=t.bargain_id?parseInt(t.bargain_id):0,o=t.combination_id?parseInt(t.combination_id):0;r={type:a,class_status:0},1===a&&o>0&&(r.type=6,r.class_status=1),2===a&&"express"===s&&(r.class_status=2),2===a&&(r.class_status=3),4!==a&&0!==a||(r.class_status=4),n||i||o||3!==a&&4!==a||(r.class_status=5),9==a&&(r.class_status=0,this.offlineStatus=!1),this.status=r},getDetail:function(){var t=this,e=this.id;if(!e)return this.$dialog.error("订单不存在");Object(c["i"])(e).then(function(e){t.orderInfo=e.data,t.getOrderStatus(),t.orderInfo.combination_id>0?(t.orderTypeName="拼团订单",t.orderTypeNameStatus=!1):t.orderInfo.bargain_id>0?(t.orderTypeName="砍价订单",t.orderTypeNameStatus=!1):t.orderInfo.seckill_id>0&&(t.orderTypeName="秒杀订单",t.orderTypeNameStatus=!1),t.system_store=e.data.system_store||{},t.mapKey=e.data.mapKey,t.setOfflinePayStatus(t.orderInfo.offlinePayStatus)}).catch(function(e){t.$dialog.error(e.msg)})},toPay:function(){var t=Object(n["a"])(regeneratorRuntime.mark(function t(e){var r;return regeneratorRuntime.wrap(function(t){while(1)switch(t.prev=t.next){case 0:return r=this,t.next=3,Object(p["c"])(this.orderInfo.order_id,e,r.from).then(function(){}).catch(function(t){"WECHAT_H5_PAY"===t.status&&r.$router.push({path:"/order/status/"+r.orderInfo.order_id+"/0"})});case 3:r.getDetail();case 4:case"end":return t.stop()}},t,this)}));function e(e){return t.apply(this,arguments)}return e}()}},m=y,w=(r("b11c"),r("2877")),C=Object(w["a"])(m,a,s,!1,null,"15d1bbac",null);e["default"]=C.exports},fde3:function(t,e,r){}}]);
//# sourceMappingURL=chunk-275e4407.f9d87ca9.js.map