(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-4c7921b6"],{"00fd":function(t,e,s){"use strict";s.d(e,"a",function(){return i}),s.d(e,"c",function(){return o}),s.d(e,"e",function(){return c}),s.d(e,"b",function(){return d}),s.d(e,"d",function(){return u});s("a481");var a=s("f8b7"),r=s("cba2"),n=s("74f9");function i(t){return new Promise(function(e,s){r["a"].confirm({mes:"确认取消该订单?",opts:function(){Object(a["a"])(t).then(function(t){r["a"].success("取消成功"),e(t)}).catch(function(t){r["a"].error("取消失败"),s(t)})}})})}function o(t){return new Promise(function(e,s){r["a"].confirm({mes:"确认收到继售订单商品资金？",opts:function(){Object(a["i"])(t).then(function(t){r["a"].success("操作成功"),e(t)}).catch(function(t){r["a"].error("取消失败"),s(t)})}})})}function c(t){return new Promise(function(e,s){Object(a["o"])(t).then(function(t){r["a"].success("收货成功"),e(t)}).catch(function(t){r["a"].error("收货失败"),s(t)})})}function d(t){return new Promise(function(e,s){r["a"].confirm({mes:"确认删除该订单?",opts:function(){Object(a["c"])(t).then(function(t){r["a"].success("删除成功"),e(t)}).catch(function(t){r["a"].error("删除失败"),s(t)})}})})}function u(t,e,s){return new Promise(function(i,o){r["a"].loading.open(""),Object(a["k"])(t,e,s).then(function(t){var e=t.data;switch(r["a"].loading.close(),e.status){case"WECHAT_H5_PAY":o(e),setTimeout(function(){location.replace(e.result.jsConfig.mweb_url)},100);break;case"ORDER_EXIST":case"EXTEND_ORDER":case"PAY_ERROR":case"PAY_DEFICIENCY":r["a"].toast({mes:t.msg}),o(e);break;case"SUCCESS":r["a"].success(t.msg),i(e);break;case"WECHAT_PAY":Object(n["pay"])(e.result.jsConfig).then(function(){i(e)})}}).catch(function(t){r["a"].loading.close(),r["a"].toast({mes:t.msg||"订单支付失败"})})})}},"2a23":function(t,e,s){"use strict";var a=s("fde3"),r=s.n(a);r.a},"3b8d":function(t,e,s){"use strict";s.d(e,"a",function(){return i});var a=s("795b"),r=s.n(a);function n(t,e,s,a,n,i,o){try{var c=t[i](o),d=c.value}catch(u){return void s(u)}c.done?e(d):r.a.resolve(d).then(a,n)}function i(t){return function(){var e=this,s=arguments;return new r.a(function(a,r){var i=t.apply(e,s);function o(t){n(i,a,r,o,c,"next",t)}function c(t){n(i,a,r,o,c,"throw",t)}o(void 0)})}}},"4bfa":function(t,e,s){"use strict";var a=function(){var t=this,e=t.$createElement,a=t._self._c||e;return t.posterImageStatus?a("div",{staticClass:"poster-first"},[a("div",{directives:[{name:"show",rawName:"v-show",value:!t.canvasStatus,expression:"!canvasStatus"}],staticClass:"poster-pop"},[a("img",{staticClass:"close",attrs:{src:s("acb3")},on:{click:t.posterImageClose}}),a("div",{ref:"poster",staticClass:"canvas"},[a("img",{staticClass:"image",attrs:{src:t.posterData.code,alt:"商品图片"}}),a("div",{staticClass:"text black"},[a("span",{domProps:{textContent:t._s(t.posterData.title)}})]),a("div",{staticClass:"text rad"},[a("span",{domProps:{textContent:t._s("￥"+t.posterData.price)}})]),a("div",{staticClass:"code"},[a("div",{staticClass:"code-img"},[a("img",{attrs:{src:t.posterData.image,alt:"二维码"}})]),t._m(0)])])]),a("div",{directives:[{name:"show",rawName:"v-show",value:t.canvasStatus,expression:"canvasStatus"}],staticClass:"poster-pop"},[a("img",{staticClass:"close",attrs:{src:s("acb3")},on:{click:t.posterImageClose}}),a("img",{staticClass:"poster-image",attrs:{src:t.posterImage,alt:"tp"}}),a("div",{staticClass:"keep"},[t._v("长按图片可以保存到手机")])]),a("div",{staticClass:"mask"})]):t._e()},r=[function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("div",{staticClass:"code-text"},[s("span",[t._v("长按识别付款码，立刻付款")])])}],n=s("c0e9"),i=s.n(n),o={name:"ShowPayCode",props:{posterImageStatus:Boolean,posterData:Object},data:function(){return{canvasStatus:!1}},watch:{posterImageStatus:function(){var t=this;!0===t.posterImageStatus&&t.$nextTick(function(){t.savePosterPath()})}},mounted:function(){},methods:{posterImageClose:function(){this.posterImageStatus=!1,this.canvasStatus=!1,this.$emit("setPosterImageStatus")},savePosterPath:function(){this.$dialog.loading.open(),this.setHtml2Canvas()},setHtml2Canvas:function(){var t=this,e=document.createElement("canvas"),s=t.$refs.poster,a=parseInt(window.getComputedStyle(s).width),r=parseInt(window.getComputedStyle(s).height);e.width=2*a,e.height=2*r,e.style.width=a+"px",e.style.height=r+"px";var n=e.getContext("2d");n.scale(2,2);var o={backgroundColor:null,canvas:e,useCORS:!0};i()(s,o).then(function(e){t.posterImage=e.toDataURL(),t.canvasStatus=!0,t.$dialog.loading.close()})}}},c=o,d=(s("9d38"),s("2877")),u=Object(d["a"])(c,a,r,!1,null,"bebef2f0",null);e["a"]=u.exports},"713c":function(t,e,s){"use strict";var a=function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("div",{staticClass:"orderGoods"},[s("div",{staticClass:"total"},[t._v("共"+t._s(t.cartInfo.length)+"件商品")]),s("div",{staticClass:"goodWrapper"},t._l(t.cartInfo,function(e){return s("div",{key:e.id,staticClass:"item acea-row row-between-wrapper"},[s("div",{staticClass:"pictrue"},[s("img",{staticClass:"image",attrs:{src:e.productInfo.image}})]),s("div",{staticClass:"text"},[s("div",{staticClass:"acea-row row-between-wrapper"},[s("div",{staticClass:"name line1"},[t._v(t._s(e.productInfo.store_name))]),s("div",{staticClass:"num"},[t._v("x "+t._s(e.cart_num))])]),e.productInfo.attrInfo?s("div",{staticClass:"attr line1"},[t._v("\n          "+t._s(e.productInfo.attrInfo.suk)+"\n        ")]):t._e(),s("div",{staticClass:"money font-color-red"},[t._v("￥"+t._s(e.truePrice))]),3===t.evaluate?s("div",{staticClass:"evaluate",on:{click:function(s){return t.$router.push({path:"/goods_evaluate/"+e.unique})}}},[t._v("\n          评价\n        ")]):t._e()])])}),0)])},r=[],n=(s("c5f6"),{name:"OrderGoods",props:{evaluate:Number,cartInfo:{type:Array,default:function(){return[]}}},data:function(){return{}},mounted:function(){},methods:{}}),i=n,o=s("2877"),c=Object(o["a"])(i,a,r,!1,null,null,null);e["a"]=c.exports},"795b":function(t,e,s){t.exports=s("696e")},"92b7":function(t,e,s){"use strict";var a=function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("div",[s("div",{staticClass:"payment",class:!0===t.value?"on":""},[s("div",{staticClass:"title acea-row row-center-wrapper"},[t._v("\n      选择付款方式"),s("span",{staticClass:"iconfont icon-guanbi",on:{click:t.close}})]),-1!==t.types.indexOf("weixin")?s("div",{staticClass:"item acea-row row-between-wrapper",on:{click:function(e){return t.checked("weixin")}}},[t._m(0),s("div",{staticClass:"iconfont icon-xiangyou"})]):t._e(),-1!==t.types.indexOf("alipay")?s("div",{staticClass:"item acea-row row-between-wrapper",on:{click:function(e){return t.checked("alipay")}}},[t._m(1),s("div",{staticClass:"iconfont icon-xiangyou"})]):t._e(),-1!==t.types.indexOf("yue")?s("div",{staticClass:"item acea-row row-between-wrapper",on:{click:function(e){return t.checked("yue")}}},[s("div",{staticClass:"left acea-row row-between-wrapper"},[s("div",{staticClass:"iconfont icon-yuezhifu"}),s("div",{staticClass:"text"},[s("div",{staticClass:"name"},[t._v("余额支付")]),s("div",{staticClass:"info"},[t._v("\n            当前可用余额："),s("span",{staticClass:"money"},[t._v(t._s(t.balance))])])])]),s("div",{staticClass:"iconfont icon-xiangyou"})]):t._e(),-1!==t.types.indexOf("offline")?s("div",{staticClass:"item acea-row row-between-wrapper",on:{click:function(e){return t.checked("offline")}}},[t._m(2),s("div",{staticClass:"iconfont icon-xiangyou"})]):t._e()]),s("div",{directives:[{name:"show",rawName:"v-show",value:t.value,expression:"value"}],staticClass:"mask",on:{click:t.close}})])},r=[function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("div",{staticClass:"left acea-row row-between-wrapper"},[s("div",{staticClass:"iconfont icon-weixinzhifu"}),s("div",{staticClass:"text"},[s("div",{staticClass:"name"},[t._v("微信支付")]),s("div",{staticClass:"info"},[t._v("使用微信快捷支付")])])])},function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("div",{staticClass:"left acea-row row-between-wrapper"},[s("div",{staticClass:"iconfont icon-zhifubao"}),s("div",{staticClass:"text"},[s("div",{staticClass:"name"},[t._v("支付宝支付")]),s("div",{staticClass:"info"},[t._v("使用线上支付宝支付")])])])},function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("div",{staticClass:"left acea-row row-between-wrapper"},[s("div",{staticClass:"iconfont icon-yuezhifu1"}),s("div",{staticClass:"text"},[s("div",{staticClass:"name"},[t._v("线下支付")]),s("div",{staticClass:"info"},[t._v("选择线下付款方式")])])])}],n=(s("c5f6"),{name:"Payment",props:{value:{type:Boolean,default:!1},balance:{type:[Number,String],default:0},types:{type:Array,default:function(){return["weixin","alipay","yue","offline"]}}},data:function(){return{}},mounted:function(){},methods:{checked:function(t){this.$emit("checked",t),this.close()},close:function(){this.$emit("input",!1)}}}),i=n,o=(s("2a23"),s("2877")),c=Object(o["a"])(i,a,r,!1,null,"54b2b916",null);e["a"]=c.exports},"96cf":function(t,e,s){var a=function(t){"use strict";var e,s=Object.prototype,a=s.hasOwnProperty,r="function"===typeof Symbol?Symbol:{},n=r.iterator||"@@iterator",i=r.asyncIterator||"@@asyncIterator",o=r.toStringTag||"@@toStringTag";function c(t,e,s,a){var r=e&&e.prototype instanceof h?e:h,n=Object.create(r.prototype),i=new E(a||[]);return n._invoke=x(t,s,i),n}function d(t,e,s){try{return{type:"normal",arg:t.call(e,s)}}catch(a){return{type:"throw",arg:a}}}t.wrap=c;var u="suspendedStart",l="suspendedYield",f="executing",p="completed",v={};function h(){}function _(){}function m(){}var y={};y[n]=function(){return this};var w=Object.getPrototypeOf,g=w&&w(w(P([])));g&&g!==s&&a.call(g,n)&&(y=g);var C=m.prototype=h.prototype=Object.create(y);function b(t){["next","throw","return"].forEach(function(e){t[e]=function(t){return this._invoke(e,t)}})}function I(t){function e(s,r,n,i){var o=d(t[s],t,r);if("throw"!==o.type){var c=o.arg,u=c.value;return u&&"object"===typeof u&&a.call(u,"__await")?Promise.resolve(u.__await).then(function(t){e("next",t,n,i)},function(t){e("throw",t,n,i)}):Promise.resolve(u).then(function(t){c.value=t,n(c)},function(t){return e("throw",t,n,i)})}i(o.arg)}var s;function r(t,a){function r(){return new Promise(function(s,r){e(t,a,s,r)})}return s=s?s.then(r,r):r()}this._invoke=r}function x(t,e,s){var a=u;return function(r,n){if(a===f)throw new Error("Generator is already running");if(a===p){if("throw"===r)throw n;return j()}s.method=r,s.arg=n;while(1){var i=s.delegate;if(i){var o=O(i,s);if(o){if(o===v)continue;return o}}if("next"===s.method)s.sent=s._sent=s.arg;else if("throw"===s.method){if(a===u)throw a=p,s.arg;s.dispatchException(s.arg)}else"return"===s.method&&s.abrupt("return",s.arg);a=f;var c=d(t,e,s);if("normal"===c.type){if(a=s.done?p:l,c.arg===v)continue;return{value:c.arg,done:s.done}}"throw"===c.type&&(a=p,s.method="throw",s.arg=c.arg)}}}function O(t,s){var a=t.iterator[s.method];if(a===e){if(s.delegate=null,"throw"===s.method){if(t.iterator["return"]&&(s.method="return",s.arg=e,O(t,s),"throw"===s.method))return v;s.method="throw",s.arg=new TypeError("The iterator does not provide a 'throw' method")}return v}var r=d(a,t.iterator,s.arg);if("throw"===r.type)return s.method="throw",s.arg=r.arg,s.delegate=null,v;var n=r.arg;return n?n.done?(s[t.resultName]=n.value,s.next=t.nextLoc,"return"!==s.method&&(s.method="next",s.arg=e),s.delegate=null,v):n:(s.method="throw",s.arg=new TypeError("iterator result is not an object"),s.delegate=null,v)}function k(t){var e={tryLoc:t[0]};1 in t&&(e.catchLoc=t[1]),2 in t&&(e.finallyLoc=t[2],e.afterLoc=t[3]),this.tryEntries.push(e)}function S(t){var e=t.completion||{};e.type="normal",delete e.arg,t.completion=e}function E(t){this.tryEntries=[{tryLoc:"root"}],t.forEach(k,this),this.reset(!0)}function P(t){if(t){var s=t[n];if(s)return s.call(t);if("function"===typeof t.next)return t;if(!isNaN(t.length)){var r=-1,i=function s(){while(++r<t.length)if(a.call(t,r))return s.value=t[r],s.done=!1,s;return s.value=e,s.done=!0,s};return i.next=i}}return{next:j}}function j(){return{value:e,done:!0}}return _.prototype=C.constructor=m,m.constructor=_,m[o]=_.displayName="GeneratorFunction",t.isGeneratorFunction=function(t){var e="function"===typeof t&&t.constructor;return!!e&&(e===_||"GeneratorFunction"===(e.displayName||e.name))},t.mark=function(t){return Object.setPrototypeOf?Object.setPrototypeOf(t,m):(t.__proto__=m,o in t||(t[o]="GeneratorFunction")),t.prototype=Object.create(C),t},t.awrap=function(t){return{__await:t}},b(I.prototype),I.prototype[i]=function(){return this},t.AsyncIterator=I,t.async=function(e,s,a,r){var n=new I(c(e,s,a,r));return t.isGeneratorFunction(s)?n:n.next().then(function(t){return t.done?t.value:n.next()})},b(C),C[o]="Generator",C[n]=function(){return this},C.toString=function(){return"[object Generator]"},t.keys=function(t){var e=[];for(var s in t)e.push(s);return e.reverse(),function s(){while(e.length){var a=e.pop();if(a in t)return s.value=a,s.done=!1,s}return s.done=!0,s}},t.values=P,E.prototype={constructor:E,reset:function(t){if(this.prev=0,this.next=0,this.sent=this._sent=e,this.done=!1,this.delegate=null,this.method="next",this.arg=e,this.tryEntries.forEach(S),!t)for(var s in this)"t"===s.charAt(0)&&a.call(this,s)&&!isNaN(+s.slice(1))&&(this[s]=e)},stop:function(){this.done=!0;var t=this.tryEntries[0],e=t.completion;if("throw"===e.type)throw e.arg;return this.rval},dispatchException:function(t){if(this.done)throw t;var s=this;function r(a,r){return o.type="throw",o.arg=t,s.next=a,r&&(s.method="next",s.arg=e),!!r}for(var n=this.tryEntries.length-1;n>=0;--n){var i=this.tryEntries[n],o=i.completion;if("root"===i.tryLoc)return r("end");if(i.tryLoc<=this.prev){var c=a.call(i,"catchLoc"),d=a.call(i,"finallyLoc");if(c&&d){if(this.prev<i.catchLoc)return r(i.catchLoc,!0);if(this.prev<i.finallyLoc)return r(i.finallyLoc)}else if(c){if(this.prev<i.catchLoc)return r(i.catchLoc,!0)}else{if(!d)throw new Error("try statement without catch or finally");if(this.prev<i.finallyLoc)return r(i.finallyLoc)}}}},abrupt:function(t,e){for(var s=this.tryEntries.length-1;s>=0;--s){var r=this.tryEntries[s];if(r.tryLoc<=this.prev&&a.call(r,"finallyLoc")&&this.prev<r.finallyLoc){var n=r;break}}n&&("break"===t||"continue"===t)&&n.tryLoc<=e&&e<=n.finallyLoc&&(n=null);var i=n?n.completion:{};return i.type=t,i.arg=e,n?(this.method="next",this.next=n.finallyLoc,v):this.complete(i)},complete:function(t,e){if("throw"===t.type)throw t.arg;return"break"===t.type||"continue"===t.type?this.next=t.arg:"return"===t.type?(this.rval=this.arg=t.arg,this.method="return",this.next="end"):"normal"===t.type&&e&&(this.next=e),v},finish:function(t){for(var e=this.tryEntries.length-1;e>=0;--e){var s=this.tryEntries[e];if(s.finallyLoc===t)return this.complete(s.completion,s.afterLoc),S(s),v}},catch:function(t){for(var e=this.tryEntries.length-1;e>=0;--e){var s=this.tryEntries[e];if(s.tryLoc===t){var a=s.completion;if("throw"===a.type){var r=a.arg;S(s)}return r}}throw new Error("illegal catch attempt")},delegateYield:function(t,s,a){return this.delegate={iterator:P(t),resultName:s,nextLoc:a},"next"===this.method&&(this.arg=e),v}},t}(t.exports);try{regeneratorRuntime=a}catch(r){Function("r","regeneratorRuntime = r")(a)}},"9d38":function(t,e,s){"use strict";var a=s("cdcf"),r=s.n(a);r.a},"9d97":function(t,e,s){t.exports=s.p+"h5/img/writeOff.e1bf8d03.jpg"},a544:function(t,e,s){},afa3:function(t,e,s){t.exports=s.p+"h5/img/line.05bf1c84.jpg"},cdad:function(t,e,s){"use strict";var a=s("a544"),r=s.n(a);r.a},cdcf:function(t,e,s){},e68f:function(t,e,s){"use strict";s.r(e);var a=function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("div",{staticClass:"order-details"},[a("div",{staticClass:"header bg-color-red acea-row row-middle",class:t.refundOrder?"on":""},[t.refundOrder?t._e():a("div",{staticClass:"pictrue"},[a("img",{attrs:{src:t.orderInfo.status_pic}})]),a("div",{staticClass:"data",class:t.refundOrder?"on":""},[a("div",{staticClass:"state"},[t._v(t._s(t.orderInfo._status._msg))]),a("div",[t._v("\n          "+t._s(t.orderInfo.add_time_y)),a("span",{staticClass:"time"},[t._v(t._s(t.orderInfo.add_time_h))])])])]),t.refundOrder?t._e():[a("div",{staticClass:"nav"},[a("div",{staticClass:"navCon acea-row row-between-wrapper"},[a("div",{class:{on:0===t.status.type||9===t.status.type}},[t._v("\n            待付款\n          ")]),2===t.orderInfo.shipping_type?a("div",{class:{on:1===t.status.type}},[t._v("\n            待核销\n          ")]):a("div",{class:{on:1===t.status.type}},[t._v("待发货")]),1===t.orderInfo.shipping_type?a("div",{class:{on:2===t.status.type}},[t._v("\n            待收货\n          ")]):t._e(),a("div",{class:{on:3===t.status.type}},[t._v("待评价")]),a("div",{class:{on:4===t.status.type}},[t._v("已完成")]),a("div",{class:{on:9===t.status.type}},[t._v("继售")])]),a("div",{staticClass:"progress acea-row row-between-wrapper"},[a("div",{staticClass:"iconfont",class:[0===t.status.type||9===t.status.type?"icon-webicon318":"icon-yuandianxiao",t.status.type>=0?"font-color-red":""]}),a("div",{staticClass:"line",class:{"bg-color-red":t.status.type>0&&9!=t.status.type}}),a("div",{staticClass:"iconfont",class:[1===t.status.type?"icon-webicon318":"icon-yuandianxiao",t.status.type>=1&&6!=t.status.type&&9!=t.status.type?"font-color-red":""]}),1===t.orderInfo.shipping_type?a("div",{staticClass:"line",class:{"bg-color-red":t.status.type>1&&6!=t.status.type&&9!=t.status.type}}):t._e(),1===t.orderInfo.shipping_type?a("div",{staticClass:"iconfont",class:[2===t.status.type?"icon-webicon318":"icon-yuandianxiao",t.status.type>=2&&6!=t.status.type&&9!=t.status.type?"font-color-red":""]}):t._e(),a("div",{staticClass:"line",class:{"bg-color-red":t.status.type>2&&6!=t.status.type&&9!=t.status.type}}),a("div",{staticClass:"iconfont",class:[3===t.status.type?"icon-webicon318":"icon-yuandianxiao",t.status.type>=3&&6!=t.status.type&&9!=t.status.type?"font-color-red":""]}),a("div",{staticClass:"line",class:{"bg-color-red":t.status.type>3&&6!=t.status.type&&9!=t.status.type}}),a("div",{staticClass:"iconfont",class:[4==t.status.type?"icon-webicon318":"icon-yuandianxiao",t.status.type>=4&&6!=t.status.type&&9!=t.status.type?"font-color-red":""]})])]),2===t.orderInfo.shipping_type&&1===t.orderInfo.paid?a("div",{staticClass:"writeOff"},[a("div",{staticClass:"title"},[t._v("核销信息")]),a("div",{staticClass:"grayBg"},[a("div",{staticClass:"pictrue"},[a("img",{attrs:{src:t.orderInfo.code}})])]),t._m(0),a("div",{staticClass:"num"},[t._v(t._s(t.orderInfo._verify_code))]),a("div",{staticClass:"rules"},[a("div",{staticClass:"item"},[t._m(1),a("div",{staticClass:"info"},[t._v("\n              每日："),a("span",{staticClass:"time"},[t._v(t._s(t.system_store.day_time))])])]),t._m(2)])]):t._e(),2===t.orderInfo.shipping_type&&1===t.orderInfo.paid?a("div",{staticClass:"map acea-row row-between-wrapper"},[a("div",[t._v("自提地址信息")]),a("div",{staticClass:"place cart-color acea-row row-center-wrapper",on:{click:t.showChang}},[a("span",{staticClass:"iconfont icon-weizhi"}),t._v("查看位置\n        ")])]):t._e(),1===t.orderInfo.shipping_type?a("div",{staticClass:"address"},[a("div",{staticClass:"name"},[t._v("\n          "+t._s(t.orderInfo.real_name)),a("span",{staticClass:"phone"},[t._v(t._s(t.orderInfo.user_phone))])]),a("div",[t._v(t._s(t.orderInfo.user_address))])]):a("div",{staticClass:"address"},[a("div",{staticClass:"name"},[t._v("\n          "+t._s(t.system_store.name)),a("span",{staticClass:"phone"},[t._v(t._s(t.system_store.phone))]),a("a",{staticClass:"iconfont icon-tonghua font-color-red",attrs:{href:"tel:"+t.system_store.phone}})]),a("div",[t._v(t._s(t.system_store._detailed_address))])]),1===t.orderInfo.shipping_type?a("div",{staticClass:"line"},[a("img",{attrs:{src:s("afa3")}})]):t._e()],a("OrderGoods",{attrs:{evaluate:t.status.type||0,cartInfo:t.orderInfo.cartInfo||[]}}),a("div",{staticClass:"wrapper"},[a("div",{staticClass:"item acea-row row-between"},[a("div",[t._v("订单编号：")]),a("div",{staticClass:"conter acea-row row-middle row-right"},[t._v("\n          "+t._s(t.orderInfo.order_id)),a("span",{staticClass:"copy copy-data",attrs:{"data-clipboard-text":t.orderInfo.order_id}},[t._v("复制")])])]),a("div",{staticClass:"item acea-row row-between"},[a("div",[t._v("下单时间：")]),a("div",{staticClass:"conter"},[t._v("\n          "+t._s(t.orderInfo.add_time_y+" "+t.orderInfo.add_time_h)+"\n        ")])]),a("div",{staticClass:"item acea-row row-between"},[a("div",[t._v("订单类型：")]),a("div",{staticClass:"conter"},[t._v("\n          "+t._s(t.orderTypeName)+"\n        ")])]),a("div",{staticClass:"item acea-row row-between"},[a("div",[t._v("支付状态：")]),a("div",{staticClass:"conter"},[t._v(t._s(t.orderInfo.paid?"已支付":"未支付"))])]),a("div",{staticClass:"item acea-row row-between"},[a("div",[t._v("支付方式：")]),a("div",{staticClass:"conter"},[t._v(t._s(t.orderInfo._status._payType))])]),t.orderInfo.mark?a("div",{staticClass:"item acea-row row-between"},[a("div",[t._v("买家留言：")]),a("div",{staticClass:"conter"},[t._v(t._s(t.orderInfo.mark))])]):t._e()]),0!=t.orderInfo.status?a("div",["express"===t.orderInfo.delivery_type?a("div",{staticClass:"wrapper"},[t._m(3),a("div",{staticClass:"item acea-row row-between"},[a("div",[t._v("快递公司：")]),a("div",{staticClass:"conter"},[t._v(t._s(t.orderInfo.delivery_name||""))])]),a("div",{staticClass:"item acea-row row-between"},[a("div",[t._v("快递号：")]),a("div",{staticClass:"conter"},[t._v(t._s(t.orderInfo.delivery_id||""))])])]):a("div",{staticClass:"wrapper"},[t._m(4),a("div",{staticClass:"item acea-row row-between"},[a("div",[t._v("配送人：")]),a("div",{staticClass:"conter"},[t._v(t._s(t.orderInfo.delivery_name||""))])]),a("div",{staticClass:"item acea-row row-between"},[a("div",[t._v("配送电话：")]),a("div",{staticClass:"conter acea-row row-middle row-right"},[t._v("\n            "+t._s(t.orderInfo.delivery_id||"")),a("span",{staticClass:"copy"},[t._v("拨打")])])])])]):t._e(),t.refundOrder?a("div",{staticClass:"wrapper"},[a("div",{staticClass:"item acea-row row-between"},[a("div",[t._v("收货人：")]),a("div",{staticClass:"conter"},[t._v(t._s(t.orderInfo.real_name))])]),a("div",{staticClass:"item acea-row row-between"},[a("div",[t._v("联系电话：")]),a("div",{staticClass:"conter"},[t._v(t._s(t.orderInfo.user_phone))])]),a("div",{staticClass:"item acea-row row-between"},[a("div",[t._v("收货地址：")]),a("div",{staticClass:"conter"},[t._v(t._s(t.orderInfo.user_address))])])]):t._e(),a("div",{staticClass:"wrapper"},[a("div",{staticClass:"item acea-row row-between"},[a("div",[t._v("支付金额：")]),a("div",{staticClass:"conter"},[t._v("￥"+t._s(t.orderInfo.total_price))])]),t.orderInfo.coupon_price>0?a("div",{staticClass:"item acea-row row-between"},[a("div",[t._v("优惠券抵扣：")]),a("div",{staticClass:"conter"},[t._v("-￥"+t._s(t.orderInfo.coupon_price))])]):t._e(),t.orderInfo.use_integral>0?a("div",{staticClass:"item acea-row row-between"},[a("div",[t._v("积分抵扣：")]),a("div",{staticClass:"conter"},[t._v("-￥"+t._s(t.orderInfo.deduction_price))])]):t._e(),t.orderInfo.pay_postage>0?a("div",{staticClass:"item acea-row row-between"},[a("div",[t._v("运费：")]),a("div",{staticClass:"conter"},[t._v("￥"+t._s(t.orderInfo.pay_postage))])]):t._e(),a("div",{staticClass:"actualPay acea-row row-right"},[t._v("\n        实付款："),a("span",{staticClass:"money font-color-red"},[t._v("￥"+t._s(t.orderInfo.pay_price))])])]),!t.refundOrder&&t.offlineStatus?a("div",{staticStyle:{height:"1.2rem"}}):t._e(),!t.refundOrder&&t.offlineStatus?a("div",{staticClass:"footer acea-row row-right row-middle"},[0===t.status.type?[a("div",{staticClass:"bnt cancel",on:{click:t.cancelOrder}},[t._v("取消订单")]),a("div",{staticClass:"bnt bg-color-red",on:{click:t.showCode}},[t._v("立即付款")])]:t._e(),1===t.status.type?[a("div",{staticClass:"bnt cancel",on:{click:function(e){return t.$router.push({path:"/order/refund/"+t.orderInfo.order_id})}}},[t._v("\n          申请退款\n        ")])]:t._e(),2===t.status.type?[a("div",{staticClass:"bnt default",on:{click:function(e){return t.$router.push({path:"/order/logistics/"+t.orderInfo.order_id})}}},[t._v("\n          查看物流\n        ")]),a("div",{staticClass:"bnt bg-color-red",on:{click:t.takeOrder}},[t._v("\n          确认收货\n        ")])]:t._e(),3===t.status.type&&"express"===t.orderInfo.delivery_type?[a("div",{staticClass:"bnt default",on:{click:function(e){return t.$router.push({path:"/order/logistics/"+t.orderInfo.order_id})}}},[t._v("\n          查看物流\n        ")])]:t._e(),4===t.status.type?[a("div",{staticClass:"bnt cancel",on:{click:t.delOrder}},[t._v("\n          删除订单\n        ")]),a("div",{staticClass:"bnt default",on:{click:function(e){return t.$router.push({path:"/order/logistics/"+t.orderInfo.order_id})}}},[t._v("\n          查看物流\n        ")])]:t._e(),6===t.status.type?[a("div",{staticClass:"bnt bg-color-red",on:{click:function(e){return t.$router.push({path:"/activity/group_rule/"+t.orderInfo.pink_id})}}},[t._v("\n          查看拼团\n        ")])]:t._e()],2):t._e(),a("Payment",{attrs:{types:t.payType,balance:t.userInfo.now_money},on:{checked:t.toPay},model:{value:t.pay,callback:function(e){t.pay=e},expression:"pay"}}),a("ShowPayCode",{attrs:{posterImageStatus:t.posterImageStatus,posterData:t.posterData},on:{setPosterImageStatus:t.setPosterImageStatus}}),t.mapShow?a("div",{staticClass:"geoPage"},[a("iframe",{attrs:{width:"100%",height:"100%",frameborder:"0",scrolling:"no",src:"https://apis.map.qq.com/uri/v1/geocoder?coord="+t.system_store.latitude+","+t.system_store.longitude+"&referer="+t.mapKey}})]):t._e()],2)},r=[function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("div",{staticClass:"gear"},[a("img",{attrs:{src:s("9d97")}})])},function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("div",{staticClass:"rulesTitle acea-row row-middle"},[s("span",{staticClass:"iconfont icon-shijian"}),t._v("核销时间\n            ")])},function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("div",{staticClass:"item"},[s("div",{staticClass:"rulesTitle acea-row row-middle"},[s("span",{staticClass:"iconfont icon-shuoming1"}),t._v("使用说明\n            ")]),s("div",{staticClass:"info"},[t._v("可将二维码出示给店员扫描或提供数字核销码")])])},function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("div",{staticClass:"item acea-row row-between"},[s("div",[t._v("配送方式：")]),s("div",{staticClass:"conter"},[t._v("\n            发货\n          ")])])},function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("div",{staticClass:"item acea-row row-between"},[s("div",[t._v("配送方式：")]),s("div",{staticClass:"conter"},[t._v("\n            送货\n          ")])])}],n=(s("96cf"),s("3b8d")),i=(s("a481"),s("7f7f"),s("cebc")),o=s("713c"),c=s("f8b7"),d=s("b311"),u=s.n(d),l=s("92b7"),f=s("4bfa"),p=s("73f5"),v=s("ed08"),h=s("2f62"),_=s("00fd"),m=s("74f9"),y="OrderDetails",w={name:y,components:{OrderGoods:o["a"],Payment:l["a"],ShowPayCode:f["a"]},props:{},data:function(){return{offlinePayStatus:2,orderTypeName:"普通订单",orderTypeNameStatus:!0,offlineStatus:!0,id:this.$route.params.id,orderInfo:{_status:{}},status:{},pay:!1,payType:["yue","weixin"],from:Object(v["d"])()?"weixin":"weixinh5",system_store:{},mapKay:"",mapShow:!1,paycode:"",posterImageStatus:!1,posterData:{image:"",title:"",price:"",code:""}}},computed:Object(i["a"])({refundOrder:function(){return this.orderInfo.refund_status>0}},Object(h["b"])(["userInfo"])),watch:{$route:function(t){t.name===y&&this.id!==t.params.id&&(this.id=t.params.id,this.getDetail())}},inject:["app"],mounted:function(){this.getDetail(),this.$nextTick(function(){var t=this,e=document.getElementsByClassName("copy-data"),s=new u.a(e);s.on("success",function(){t.$dialog.success("复制成功")})})},methods:{showChang:function(){if(Object(v["d"])()){var t={latitude:parseFloat(this.system_store.latitude),longitude:parseFloat(this.system_store.longitude),name:this.system_store.name,address:this.system_store._detailed_address};Object(m["wechatEvevt"])("openLocation",t).then(function(t){console.log(t)}).catch(function(e){e.is_ready&&e.wx.openLocation(t)})}else{if(!this.mapKey)return this.$dialog.error("暂无法使用查看地图，请配置您的腾讯地图key");this.mapShow=!0}},showCode:function(){var t=this;Object(p["j"])(this.orderInfo.order_id).then(function(e){t.paycode=e.msg}).catch(function(){}),this.posterData.image=this.orderInfo.cartInfo[0].productInfo.image,this.posterData.title=this.orderInfo.cartInfo[0].productInfo.store_name,this.posterData.price=this.orderInfo.cartInfo[0].truePrice,this.posterData.code=this.paycode,this.setPosterImageStatus()},setPosterImageStatus:function(){var t=document.body||document.documentElement;t.scrollTop=0,this.posterImageStatus=!this.posterImageStatus,this.posters=!1},goBack:function(){var t=this.app.history,e=t[t.length-1]||{};return"MyOrder"===e.name?this.$router.go(-1):this.$router.replace({path:"/order/list/"})},cancelOrder:function(){var t=this;Object(_["a"])(this.orderInfo.order_id).then(function(){setTimeout(function(){return t.goBack()},300)}).catch(function(){t.getDetail()})},takeOrder:function(){var t=this;Object(_["e"])(this.orderInfo.order_id).finally(function(){t.getDetail()})},delOrder:function(){var t=this;Object(_["b"])(this.orderInfo.order_id).then(function(){setTimeout(function(){return t.goBack()},300)})},setOfflinePayStatus:function(t){var e=this;e.offlinePayStatus=t,1===t&&!0===e.orderTypeNameStatus&&e.payType.push("offline")},getOrderStatus:function(){var t=this.orderInfo||{},e=t._status||{_type:0},s={},a=parseInt(e._type),r=t.delivery_type,n=t.seckill_id?parseInt(t.seckill_id):0,i=t.bargain_id?parseInt(t.bargain_id):0,o=t.combination_id?parseInt(t.combination_id):0;s={type:a,class_status:0},1===a&&o>0&&(s.type=6,s.class_status=1),2===a&&"express"===r&&(s.class_status=2),2===a&&(s.class_status=3),4!==a&&0!==a||(s.class_status=4),n||i||o||3!==a&&4!==a||(s.class_status=5),9==a&&(s.class_status=0,this.offlineStatus=!1),this.status=s},getDetail:function(){var t=this,e=this.id;if(!e)return this.$dialog.error("订单不存在");Object(c["j"])(e).then(function(e){t.orderInfo=e.data,t.getOrderStatus(),t.orderInfo.combination_id>0?(t.orderTypeName="拼团订单",t.orderTypeNameStatus=!1):t.orderInfo.bargain_id>0?(t.orderTypeName="砍价订单",t.orderTypeNameStatus=!1):t.orderInfo.seckill_id>0&&(t.orderTypeName="秒杀订单",t.orderTypeNameStatus=!1),t.system_store=e.data.system_store||{},t.mapKey=e.data.mapKey,t.setOfflinePayStatus(t.orderInfo.offlinePayStatus)}).catch(function(e){t.$dialog.error(e.msg)})},toPay:function(){var t=Object(n["a"])(regeneratorRuntime.mark(function t(e){var s;return regeneratorRuntime.wrap(function(t){while(1)switch(t.prev=t.next){case 0:return s=this,t.next=3,Object(_["d"])(this.orderInfo.order_id,e,s.from).then(function(){}).catch(function(t){"WECHAT_H5_PAY"===t.status&&s.$router.push({path:"/order/status/"+s.orderInfo.order_id+"/0"})});case 3:s.getDetail();case 4:case"end":return t.stop()}},t,this)}));function e(e){return t.apply(this,arguments)}return e}()}},g=w,C=(s("cdad"),s("2877")),b=Object(C["a"])(g,a,r,!1,null,"10766ade",null);e["default"]=b.exports},fde3:function(t,e,s){}}]);
//# sourceMappingURL=chunk-4c7921b6.4e2a1a70.js.map