(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-0bb77474"],{"0b33":function(t,e,n){"use strict";var i=n("d282"),r=n("9884"),s=Object(i["a"])("tab"),o=s[0],a=s[1];e["a"]=o({mixins:[Object(r["a"])("vanTabs")],props:{name:[Number,String],title:String,disabled:Boolean},data:function(){return{inited:!1}},computed:{computedName:function(){return this.name||this.index},isActive:function(){return this.computedName===this.parent.currentName}},watch:{"parent.currentIndex":function(){this.inited=this.inited||this.isActive},title:function(){this.parent.setLine()}},mounted:function(){this.slots("title")&&this.parent.renderTitle(this.$refs.title,this.index)},render:function(t){var e=this.slots,n=this.isActive,i=this.inited||!this.parent.lazyRender,r=[i?e():t()];return e("title")&&r.push(t("div",{ref:"title"},[e("title")])),this.parent.animated?t("div",{attrs:{role:"tabpanel","aria-hidden":!n},class:a("pane-wrapper",{inactive:!n})},[t("div",{class:a("pane")},[r])]):t("div",{directives:[{name:"show",value:n}],attrs:{role:"tabpanel"},class:a("pane")},[r])}})},4598:function(t,e,n){"use strict";(function(t){n.d(e,"a",function(){return c});var i=n("a142"),r=Date.now();function s(t){var e=Date.now(),n=Math.max(0,16-(e-r)),i=setTimeout(t,n);return r=e+n,i}var o=i["d"]?t:window,a=o.requestAnimationFrame||s;o.cancelAnimationFrame||o.clearTimeout;function c(t){return a.call(o,t)}}).call(this,n("c8ba"))},"5e46":function(t,e,n){"use strict";var i=n("d282"),r=n("a142"),s=n("ea8e"),o=n("4598");function a(t,e,n){var i=0,r=t.scrollLeft,s=0===n?1:Math.round(1e3*n/16);function a(){t.scrollLeft+=(e-r)/s,++i<s&&Object(o["a"])(a)}a()}function c(t){return"none"===window.getComputedStyle(t).display||null===t.offsetParent}var l=n("9884"),u=!1;if(!r["d"])try{var d={};Object.defineProperty(d,"passive",{get:function(){u=!0}}),window.addEventListener("test-passive",null,d)}catch(H){}function h(t,e,n,i){void 0===i&&(i=!1),r["d"]||t.addEventListener(e,n,!!u&&{capture:!1,passive:i})}function f(t,e,n){r["d"]||t.removeEventListener(e,n)}function p(t){function e(){this.binded||(t.call(this,h,!0),this.binded=!0)}function n(){this.binded&&(t.call(this,f,!1),this.binded=!1)}return{mounted:e,activated:e,deactivated:n,beforeDestroy:n}}var v="van-hairline",m=v+"--top-bottom",b=/scroll|auto/i;function y(t,e){void 0===e&&(e=window);var n=t;while(n&&"HTML"!==n.tagName&&1===n.nodeType&&n!==e){var i=window.getComputedStyle(n),r=i.overflowY;if(b.test(r)){if("BODY"!==n.tagName)return n;var s=window.getComputedStyle(n.parentNode),o=s.overflowY;if(b.test(o))return n}n=n.parentNode}return e}function x(t){return"scrollTop"in t?t.scrollTop:t.pageYOffset}function g(t,e){"scrollTop"in t?t.scrollTop=e:t.scrollTo(t.scrollX,e)}function w(){return window.pageYOffset||document.documentElement.scrollTop||document.body.scrollTop||0}function T(t){g(window,t),g(document.body,t)}function C(t){return(t===window?0:t.getBoundingClientRect().top)+w()}var S=Object(i["a"])("tab")[1],$={props:{type:String,color:String,title:String,isActive:Boolean,ellipsis:Boolean,disabled:Boolean,scrollable:Boolean,activeColor:String,inactiveColor:String,swipeThreshold:Number},computed:{style:function(){var t={},e=this.color,n=this.isActive,i="card"===this.type;e&&i&&(t.borderColor=e,this.disabled||(n?t.backgroundColor=e:t.color=e));var r=n?this.activeColor:this.inactiveColor;return r&&(t.color=r),this.scrollable&&this.ellipsis&&(t.flexBasis=88/this.swipeThreshold+"%"),t}},methods:{onClick:function(){this.$emit("click")},renderTitle:function(t){var e=this.$refs.title;e.innerHTML="",e.appendChild(t)}},render:function(){var t=arguments[0];return t("div",{attrs:{role:"tab","aria-selected":this.isActive},class:S({active:this.isActive,disabled:this.disabled,complete:!this.ellipsis}),style:this.style,on:{click:this.onClick}},[t("span",{ref:"title",class:{"van-ellipsis":this.ellipsis}},[this.title])])}};function I(){return I=Object.assign||function(t){for(var e=1;e<arguments.length;e++){var n=arguments[e];for(var i in n)Object.prototype.hasOwnProperty.call(n,i)&&(t[i]=n[i])}return t},I.apply(this,arguments)}var O=n("2b0e"),N=10;function k(t,e){return t>e&&t>N?"horizontal":e>t&&e>N?"vertical":""}var j=O["default"].extend({data:function(){return{direction:""}},methods:{touchStart:function(t){this.resetTouchStatus(),this.startX=t.touches[0].clientX,this.startY=t.touches[0].clientY},touchMove:function(t){var e=t.touches[0];this.deltaX=e.clientX-this.startX,this.deltaY=e.clientY-this.startY,this.offsetX=Math.abs(this.deltaX),this.offsetY=Math.abs(this.deltaY),this.direction=this.direction||k(this.offsetX,this.offsetY)},resetTouchStatus:function(){this.direction="",this.deltaX=0,this.deltaY=0,this.offsetX=0,this.offsetY=0}}}),L=Object(i["a"])("tabs"),A=L[0],B=L[1],E=50,X=A({mixins:[j],props:{count:Number,duration:Number,animated:Boolean,swipeable:Boolean,currentIndex:Number},computed:{style:function(){if(this.animated)return{transform:"translate3d("+-1*this.currentIndex*100+"%, 0, 0)",transitionDuration:this.duration+"s"}},listeners:function(){if(this.swipeable)return{touchstart:this.touchStart,touchmove:this.touchMove,touchend:this.onTouchEnd,touchcancel:this.onTouchEnd}}},methods:{onTouchEnd:function(){var t=this.direction,e=this.deltaX,n=this.currentIndex;"horizontal"===t&&this.offsetX>=E&&(e>0&&0!==n?this.$emit("change",n-1):e<0&&n!==this.count-1&&this.$emit("change",n+1))},renderChildren:function(){var t=this.$createElement;return this.animated?t("div",{class:B("track"),style:this.style},[this.slots()]):this.slots()}},render:function(){var t=arguments[0];return t("div",{class:B("content",{animated:this.animated}),on:I({},this.listeners)},[this.renderChildren()])}}),Y=Object(i["a"])("sticky"),M=Y[0],z=Y[1],D=M({mixins:[p(function(t){this.scroller||(this.scroller=y(this.$el)),t(this.scroller,"scroll",this.onScroll,!0),this.onScroll()})],props:{zIndex:Number,container:null,offsetTop:{type:Number,default:0}},data:function(){return{fixed:!1,height:0,transform:0}},computed:{style:function(){if(this.fixed){var t={};return Object(r["b"])(this.zIndex)&&(t.zIndex=this.zIndex),this.offsetTop&&this.fixed&&(t.top=this.offsetTop+"px"),this.transform&&(t.transform="translate3d(0, "+this.transform+"px, 0)"),t}}},methods:{onScroll:function(){var t=this;this.height=this.$el.offsetHeight;var e=this.container,n=this.offsetTop,i=x(window),r=C(this.$el),s=function(){t.$emit("scroll",{scrollTop:i,isFixed:t.fixed})};if(e){var o=r+e.offsetHeight;if(i+n+this.height>o){var a=this.height+i-o;return a<this.height?(this.fixed=!0,this.transform=-(a+n)):this.fixed=!1,void s()}}i+n>r?(this.fixed=!0,this.transform=0):this.fixed=!1,s()}},render:function(){var t=arguments[0],e=this.fixed,n={height:e?this.height+"px":null};return t("div",{style:n},[t("div",{class:z({fixed:e}),style:this.style},[this.slots()])])}}),P=Object(i["a"])("tabs"),R=P[0],F=P[1];e["a"]=R({mixins:[Object(l["b"])("vanTabs"),p(function(t){t(window,"resize",this.setLine,!0)})],model:{prop:"active"},props:{color:String,sticky:Boolean,animated:Boolean,swipeable:Boolean,background:String,lineWidth:[Number,String],lineHeight:[Number,String],titleActiveColor:String,titleInactiveColor:String,type:{type:String,default:"line"},active:{type:[Number,String],default:0},border:{type:Boolean,default:!0},ellipsis:{type:Boolean,default:!0},duration:{type:Number,default:.3},offsetTop:{type:Number,default:0},lazyRender:{type:Boolean,default:!0},swipeThreshold:{type:Number,default:4}},data:function(){return{position:"",currentIndex:null,lineStyle:{backgroundColor:this.color}}},computed:{scrollable:function(){return this.children.length>this.swipeThreshold||!this.ellipsis},navStyle:function(){return{borderColor:this.color,background:this.background}},currentName:function(){var t=this.children[this.currentIndex];if(t)return t.computedName}},watch:{color:"setLine",active:function(t){t!==this.currentName&&this.setCurrentIndexByName(t)},children:function(){var t=this;this.setCurrentIndexByName(this.currentName||this.active),this.setLine(),this.$nextTick(function(){t.scrollIntoView(!0)})},currentIndex:function(){this.scrollIntoView(),this.setLine(),this.stickyFixed&&T(Math.ceil(C(this.$el)-this.offsetTop))}},mounted:function(){this.onShow()},activated:function(){this.onShow(),this.setLine()},methods:{onShow:function(){var t=this;this.$nextTick(function(){t.inited=!0,t.scrollIntoView(!0)})},setLine:function(){var t=this,e=this.inited;this.$nextTick(function(){var n=t.$refs.titles;if(n&&n[t.currentIndex]&&"line"===t.type&&!c(t.$el)){var i=n[t.currentIndex].$el,o=t.lineWidth,a=t.lineHeight,l=Object(r["b"])(o)?o:i.offsetWidth/2,u=i.offsetLeft+i.offsetWidth/2,d={width:Object(s["a"])(l),backgroundColor:t.color,transform:"translateX("+u+"px) translateX(-50%)"};if(e&&(d.transitionDuration=t.duration+"s"),Object(r["b"])(a)){var h=Object(s["a"])(a);d.height=h,d.borderRadius=h}t.lineStyle=d}})},setCurrentIndexByName:function(t){var e=this.children.filter(function(e){return e.computedName===t}),n=(this.children[0]||{}).index||0;this.setCurrentIndex(e.length?e[0].index:n)},setCurrentIndex:function(t){if(t=this.findAvailableTab(t),Object(r["b"])(t)&&t!==this.currentIndex){var e=null!==this.currentIndex;this.currentIndex=t,this.$emit("input",this.currentName),e&&this.$emit("change",this.currentName,this.children[t].title)}},findAvailableTab:function(t){var e=t<this.currentIndex?-1:1;while(t>=0&&t<this.children.length){if(!this.children[t].disabled)return t;t+=e}},onClick:function(t){var e=this.children[t],n=e.title,i=e.disabled,r=e.computedName;i?this.$emit("disabled",r,n):(this.setCurrentIndex(t),this.$emit("click",r,n))},scrollIntoView:function(t){var e=this.$refs.titles;if(this.scrollable&&e&&e[this.currentIndex]){var n=this.$refs.nav,i=e[this.currentIndex].$el,r=i.offsetLeft-(n.offsetWidth-i.offsetWidth)/2;a(n,r,t?0:this.duration)}},renderTitle:function(t,e){var n=this;this.$nextTick(function(){n.$refs.titles[e].renderTitle(t)})},onScroll:function(t){this.stickyFixed=t.isFixed,this.$emit("scroll",t)}},render:function(){var t,e=this,n=arguments[0],i=this.type,r=this.ellipsis,s=this.animated,o=this.scrollable,a=this.children.map(function(t,s){return n($,{ref:"titles",refInFor:!0,attrs:{type:i,title:t.title,color:e.color,isActive:s===e.currentIndex,ellipsis:r,disabled:t.disabled,scrollable:o,activeColor:e.titleActiveColor,inactiveColor:e.titleInactiveColor,swipeThreshold:e.swipeThreshold},on:{click:function(){e.onClick(s)}}})}),c=n("div",{ref:"wrap",class:[F("wrap",{scrollable:o}),(t={},t[m]="line"===i&&this.border,t)]},[n("div",{ref:"nav",attrs:{role:"tablist"},class:F("nav",[i]),style:this.navStyle},[this.slots("nav-left"),a,"line"===i&&n("div",{class:F("line"),style:this.lineStyle}),this.slots("nav-right")])]);return n("div",{class:F([i])},[this.sticky?n(D,{attrs:{container:this.$el,offsetTop:this.offsetTop},on:{scroll:this.onScroll}},[c]):c,n(X,{attrs:{count:this.children.length,animated:s,duration:this.duration,swipeable:this.swipeable,currentIndex:this.currentIndex},on:{change:this.setCurrentIndex}},[this.slots()])])}})},"68ef":function(t,e,n){},9884:function(t,e,n){"use strict";n.d(e,"a",function(){return s}),n.d(e,"b",function(){return o});var i=n("2b0e");function r(t){var e=[];function n(t){t.forEach(function(t){e.push(t),t.children&&n(t.children)})}return n(t),e}function s(t,e){var n,s;void 0===e&&(e={});var o=e.indexKey||"index";return i["default"].extend({inject:(n={},n[t]={default:null},n),computed:(s={parent:function(){return this[t]}},s[o]=function(){return this.bindRelation(),this.parent.children.indexOf(this)},s),mounted:function(){this.bindRelation()},beforeDestroy:function(){var t=this;this.parent&&(this.parent.children=this.parent.children.filter(function(e){return e!==t}))},methods:{bindRelation:function(){if(this.parent&&-1===this.parent.children.indexOf(this)){var t=[].concat(this.parent.children,[this]),e=r(this.parent.slots());t.sort(function(t,n){return e.indexOf(t.$vnode)-e.indexOf(n.$vnode)}),this.parent.children=t}}}})}function o(t){return{provide:function(){var e;return e={},e[t]=this,e},data:function(){return{children:[]}}}}},a142:function(t,e,n){"use strict";n.d(e,"d",function(){return r}),n.d(e,"b",function(){return s}),n.d(e,"c",function(){return o}),n.d(e,"a",function(){return a});var i=n("2b0e"),r=i["default"].prototype.$isServer;function s(t){return void 0!==t&&null!==t}function o(t){var e=typeof t;return null!==t&&("object"===e||"function"===e)}function a(t,e){var n=e.split("."),i=t;return n.forEach(function(t){i=s(i[t])?i[t]:""}),i}},ae9e:function(t,e,n){},b807:function(t,e,n){},bda7:function(t,e,n){"use strict";n("68ef"),n("ae9e"),n("b807")},d282:function(t,e,n){"use strict";var i="__",r="--";function s(t,e,n){return e?t+n+e:t}function o(t,e){if("string"===typeof e)return s(t,e,r);if(Array.isArray(e))return e.map(function(e){return o(t,e)});var n={};return e&&Object.keys(e).forEach(function(i){n[t+r+i]=e[i]}),n}function a(t){return function(e,n){return e&&"string"!==typeof e&&(n=e,e=""),e=s(t,e,i),n?[e,o(e,n)]:e}}var c=/-(\w)/g;function l(t){return t.replace(c,function(t,e){return e.toUpperCase()})}var u=n("2b0e"),d=u["default"].extend({methods:{slots:function(t,e){void 0===t&&(t="default");var n=this.$slots,i=this.$scopedSlots,r=i[t];return r?r(e):n[t]}}});function h(t){var e=this.name;t.component(e,this),t.component(l("-"+e),this)}function f(t){var e=t.scopedSlots||t.data.scopedSlots||{},n=t.slots();return Object.keys(n).forEach(function(t){e[t]||(e[t]=function(){return n[t]})}),e}function p(t){return{functional:!0,props:t.props,model:t.model,render:function(e,n){return t(e,n.props,f(n),n)}}}function v(t){return function(e){return"function"===typeof e&&(e=p(e)),e.functional||(e.mixins=e.mixins||[],e.mixins.push(d)),e.name=t,e.install=h,e}}var m=n("a142"),b=Object.prototype.hasOwnProperty;function y(t,e,n){var i=e[n];Object(m["b"])(i)&&(b.call(t,n)&&Object(m["c"])(i)&&"function"!==typeof i?t[n]=x(Object(t[n]),e[n]):t[n]=i)}function x(t,e){return Object.keys(e).forEach(function(n){y(t,e,n)}),t}var g={name:"姓名",tel:"电话",save:"保存",confirm:"确认",cancel:"取消",delete:"删除",complete:"完成",loading:"加载中...",telEmpty:"请填写电话",nameEmpty:"请填写姓名",confirmDelete:"确定要删除么",telInvalid:"请填写正确的电话",vanContactCard:{addText:"添加联系人"},vanContactList:{addText:"新建联系人"},vanPagination:{prev:"上一页",next:"下一页"},vanPullRefresh:{pulling:"下拉即可刷新...",loosing:"释放即可刷新..."},vanSubmitBar:{label:"合计："},vanCoupon:{valid:"有效期",unlimited:"无使用门槛",discount:function(t){return t+"折"},condition:function(t){return"满"+t+"元可用"}},vanCouponCell:{title:"优惠券",tips:"使用优惠",count:function(t){return t+"张可用"}},vanCouponList:{empty:"暂无优惠券",exchange:"兑换",close:"不使用优惠",enable:"可使用优惠券",disabled:"不可使用优惠券",placeholder:"请输入优惠码"},vanAddressEdit:{area:"地区",postal:"邮政编码",areaEmpty:"请选择地区",addressEmpty:"请填写详细地址",postalEmpty:"邮政编码格式不正确",defaultAddress:"设为默认收货地址",telPlaceholder:"收货人手机号",namePlaceholder:"收货人姓名",areaPlaceholder:"选择省 / 市 / 区"},vanAddressEditDetail:{label:"详细地址",placeholder:"街道门牌、楼层房间号等信息"},vanAddressList:{add:"新增地址"}},w=u["default"].prototype,T=u["default"].util.defineReactive;T(w,"$vantLang","zh-CN"),T(w,"$vantMessages",{"zh-CN":g});var C={messages:function(){return w.$vantMessages[w.$vantLang]},use:function(t,e){var n;w.$vantLang=t,this.add((n={},n[t]=e,n))},add:function(t){void 0===t&&(t={}),x(w.$vantMessages,t)}};function S(t){var e=l(t)+".";return function(t){for(var n=Object(m["a"])(C.messages(),e+t)||Object(m["a"])(C.messages(),t),i=arguments.length,r=new Array(i>1?i-1:0),s=1;s<i;s++)r[s-1]=arguments[s];return"function"===typeof n?n.apply(void 0,r):n}}function $(t){return t="van-"+t,[v(t),a(t),S(t)]}n.d(e,"a",function(){return $})},da3c:function(t,e,n){"use strict";n("68ef"),n("f319")},ea8e:function(t,e,n){"use strict";var i=n("a142");function r(t){return/^\d+(\.\d+)?$/.test(t)}function s(t){if(Object(i["b"])(t))return t=String(t),r(t)?t+"px":t}n.d(e,"a",function(){return s})},f319:function(t,e,n){}}]);
//# sourceMappingURL=chunk-0bb77474.7aedbe95.js.map