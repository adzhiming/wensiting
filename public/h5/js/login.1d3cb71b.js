(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["login"],{1348:function(t,e,a){"use strict";a.r(e);var r=function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("div",{staticClass:"register absolute"},[t._m(0),a("div",{staticClass:"whiteBg"},[a("div",{staticClass:"title"},[t._v("注册账号")]),a("div",{staticClass:"list"},[a("div",{staticClass:"item"},[a("div",[a("svg",{staticClass:"icon",attrs:{"aria-hidden":"true"}},[a("use",{attrs:{"xlink:href":"#icon-phone_"}})]),a("input",{attrs:{type:"text",placeholder:"输入手机号码"}})])]),a("div",{staticClass:"item"},[a("div",{staticClass:"align-left"},[a("svg",{staticClass:"icon",attrs:{"aria-hidden":"true"}},[a("use",{attrs:{"xlink:href":"#icon-code_1"}})]),a("input",{staticClass:"codeIput",attrs:{type:"text",placeholder:"填写验证码"}}),a("button",{staticClass:"code",class:!0===t.disabled?"on":"",attrs:{disabled:t.disabled},on:{click:t.code}},[t._v("\n            "+t._s(t.text)+"\n          ")])])]),a("div",{staticClass:"item"},[a("div",[a("svg",{staticClass:"icon",attrs:{"aria-hidden":"true"}},[a("use",{attrs:{"xlink:href":"#icon-code_"}})]),a("input",{attrs:{type:"text",placeholder:"填写您的登录密码"}})])])]),a("div",{staticClass:"logon"},[t._v("注册")]),a("div",{staticClass:"tip"},[t._v("\n      已有账号?\n      "),a("span",{staticClass:"font-color-red",on:{click:function(e){return t.$router.push({name:"Login"})}}},[t._v("立即登录")])])]),a("div",{staticClass:"bottom"})])},n=[function(){var t=this,e=t.$createElement,r=t._self._c||e;return r("div",{staticClass:"shading"},[r("div",{staticClass:"pictrue acea-row row-center-wrapper"},[r("img",{attrs:{src:a("dd88")}})])])}],s=a("f750"),c={name:"Register",mixins:[s["a"]],methods:{code:function(){this.sendCode()}}},i=c,o=a("2877"),u=Object(o["a"])(i,r,n,!1,null,null,null);e["default"]=u.exports},"230d":function(t,e,a){"use strict";var r=a("d532"),n=a.n(r);n.a},"3b8d":function(t,e,a){"use strict";a.d(e,"a",function(){return c});var r=a("795b"),n=a.n(r);function s(t,e,a,r,s,c,i){try{var o=t[c](i),u=o.value}catch(l){return void a(l)}o.done?e(u):n.a.resolve(u).then(r,s)}function c(t){return function(){var e=this,a=arguments;return new n.a(function(r,n){var c=t.apply(e,a);function i(t){s(c,r,n,i,o,"next",t)}function o(t){s(c,r,n,i,o,"throw",t)}i(void 0)})}}},"61f7":function(t,e,a){"use strict";a.d(e,"d",function(){return c}),a.d(e,"a",function(){return d}),a.d(e,"b",function(){return g});var r=a("bd86"),n=(a("ac6a"),a("456d"),a("cebc")),s=(a("a481"),function(t,e){t.message=function(t){return e.replace("%s",t||"")}});function c(t){var e=arguments.length>1&&void 0!==arguments[1]?arguments[1]:{};return Object(n["a"])({required:!0,message:t,type:"string"},e)}function i(t){var e=arguments.length>1&&void 0!==arguments[1]?arguments[1]:{};return Object(n["a"])({type:"url",message:t},e)}function o(t){var e=arguments.length>1&&void 0!==arguments[1]?arguments[1]:{};return Object(n["a"])({type:"email",message:t},e)}function u(t){return b.pattern(/^[\w]+$/,t)}function l(t){return b.pattern(/^[\w\d_-]+$/,t)}function d(t){return b.pattern(/^[\w\d]+$/,t)}function p(t){return b.pattern(/(^[1-9]([0-9]+)?(\.[0-9]{1,2})?$)|(^(0){1}$)|(^[0-9]\.[0-9]([0-9])?$)/,t)}function h(t){return b.pattern(/^[\u4e00-\u9fa5]+$/,t)}function v(t){return b.pattern(/^[\u4e00-\u9fa5\w]+$/,t)}function f(t){return b.pattern(/^[\u4e00-\u9fa5\w\d]+$/,t)}function m(t){return b.pattern(/^[\u4e00-\u9fa5\w\d-_]+$/,t)}function g(t){return b.pattern(/^1(3|4|5|7|8|9|6)\d{9}$/i,t)}s(c,"请输入%s"),s(i,"请输入正确的链接"),s(o,"请输入正确的邮箱地址"),s(u,"%s必须是字母"),s(l,"%s只能包含由字母、数字，以及 - 和 _"),s(d,"%s只能包含字母、数字"),s(p,"%s格式不正确"),s(h,"%s只能是汉字"),s(v,"%s只能包含汉字、字母"),s(f,"%s只能包含汉字、字母和数字"),s(m,"%s只能包含由汉字、字母、数字，以及 - 和 _"),s(g,"请输入正确的手机号码");var w={min:"%s最小长度为:min",max:"%s最大长度为:max",length:"%s长度必须为:length",range:"%s长度为:range",pattern:"$s格式错误"},b=Object.keys(w).reduce(function(t,e){return t[e]=function(t){var a=arguments.length>1&&void 0!==arguments[1]?arguments[1]:"",s=arguments.length>2&&void 0!==arguments[2]?arguments[2]:{},c="range"===e?{min:t[0],max:t[1]}:Object(r["a"])({},e,t);return Object(n["a"])({message:a.replace(":".concat(e),"range"===e?"".concat(t[0],"-").concat(t[1]):t),type:"string"},c,s)},s(t[e],w[e]),t},{});e["c"]=b},"795b":function(t,e,a){t.exports=a("696e")},"7d2e":function(t,e,a){"use strict";a.r(e);var r=function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("div",{staticClass:"register absolute"},[t._m(0),a("div",{staticClass:"whiteBg"},[a("div",{staticClass:"title"},[t._v("找回密码")]),a("div",{staticClass:"list"},[a("div",{staticClass:"item"},[a("div",[a("svg",{staticClass:"icon",attrs:{"aria-hidden":"true"}},[a("use",{attrs:{"xlink:href":"#icon-phone_"}})]),a("input",{directives:[{name:"model",rawName:"v-model",value:t.account,expression:"account"}],attrs:{type:"text",placeholder:"输入手机号码"},domProps:{value:t.account},on:{input:function(e){e.target.composing||(t.account=e.target.value)}}})])]),a("div",{staticClass:"item"},[a("div",{staticClass:"align-left"},[a("svg",{staticClass:"icon",attrs:{"aria-hidden":"true"}},[a("use",{attrs:{"xlink:href":"#icon-code_1"}})]),a("input",{directives:[{name:"model",rawName:"v-model",value:t.captcha,expression:"captcha"}],staticClass:"codeIput",attrs:{type:"text",placeholder:"填写验证码"},domProps:{value:t.captcha},on:{input:function(e){e.target.composing||(t.captcha=e.target.value)}}}),a("button",{staticClass:"code",class:!0===t.disabled?"on":"",attrs:{disabled:t.disabled},on:{click:t.code}},[t._v("\n            "+t._s(t.text)+"\n          ")])])]),a("div",{staticClass:"item"},[a("div",[a("svg",{staticClass:"icon",attrs:{"aria-hidden":"true"}},[a("use",{attrs:{"xlink:href":"#icon-code_"}})]),a("input",{directives:[{name:"model",rawName:"v-model",value:t.password,expression:"password"}],attrs:{type:"password",placeholder:"填写您的登录密码"},domProps:{value:t.password},on:{input:function(e){e.target.composing||(t.password=e.target.value)}}})])])]),a("div",{staticClass:"logon",on:{click:t.registerReset}},[t._v("确认")]),a("div",{staticClass:"tip"},[a("span",{staticClass:"font-color-red",on:{click:function(e){return t.$router.push({name:"Login"})}}},[t._v("立即登录")])])]),a("div",{staticClass:"bottom"})])},n=[function(){var t=this,e=t.$createElement,r=t._self._c||e;return r("div",{staticClass:"shading"},[r("div",{staticClass:"pictrue acea-row row-center-wrapper"},[r("img",{attrs:{src:a("dd88")}})])])}],s=(a("96cf"),a("3b8d")),c=a("f750"),i=a("c24f"),o=a("cba2"),u=a("61f7"),l={name:"RetrievePassword",data:function(){return{account:"",password:"",captcha:""}},mixins:[c["a"]],methods:{registerReset:function(){var t=Object(s["a"])(regeneratorRuntime.mark(function t(){var e,a,r,n;return regeneratorRuntime.wrap(function(t){while(1)switch(t.prev=t.next){case 0:return e=this,a=e.account,r=e.captcha,n=e.password,t.prev=2,t.next=5,e.$validator({account:[Object(u["d"])(u["d"].message("手机号码")),Object(u["b"])(u["b"].message())],captcha:[Object(u["d"])(u["d"].message("验证码")),Object(u["a"])(u["a"].message("验证码"))],password:[Object(u["d"])(u["d"].message("密码")),u["c"].range([6,16],u["c"].range.message("密码")),Object(u["a"])(u["a"].message("密码"))]}).validate({account:a,captcha:r,password:n});case 5:t.next=10;break;case 7:return t.prev=7,t.t0=t["catch"](2),t.abrupt("return",Object(o["b"])(t.t0));case 10:Object(i["R"])({account:e.account,captcha:e.captcha,password:e.password}).then(function(t){e.$dialog.success(t.msg).then(function(){e.$router.push({name:"Login"})})}).catch(function(t){e.$dialog.error(t.msg)});case 11:case"end":return t.stop()}},t,this,[[2,7]])}));function e(){return t.apply(this,arguments)}return e}(),code:function(){var t=Object(s["a"])(regeneratorRuntime.mark(function t(){var e,a;return regeneratorRuntime.wrap(function(t){while(1)switch(t.prev=t.next){case 0:return e=this,a=e.account,t.prev=2,t.next=5,e.$validator({account:[Object(u["d"])(u["d"].message("手机号码")),Object(u["b"])(u["b"].message())]}).validate({account:a});case 5:t.next=10;break;case 7:return t.prev=7,t.t0=t["catch"](2),t.abrupt("return",Object(o["b"])(t.t0));case 10:Object(i["S"])({phone:e.account}).then(function(t){e.$dialog.success(t.msg),e.sendCode()}).catch(function(t){e.$dialog.error(t.msg)});case 11:case"end":return t.stop()}},t,this,[[2,7]])}));function e(){return t.apply(this,arguments)}return e}()}},d=l,p=a("2877"),h=Object(p["a"])(d,r,n,!1,null,null,null);e["default"]=h.exports},"96cf":function(t,e,a){var r=function(t){"use strict";var e,a=Object.prototype,r=a.hasOwnProperty,n="function"===typeof Symbol?Symbol:{},s=n.iterator||"@@iterator",c=n.asyncIterator||"@@asyncIterator",i=n.toStringTag||"@@toStringTag";function o(t,e,a,r){var n=e&&e.prototype instanceof f?e:f,s=Object.create(n.prototype),c=new L(r||[]);return s._invoke=O(t,a,c),s}function u(t,e,a){try{return{type:"normal",arg:t.call(e,a)}}catch(r){return{type:"throw",arg:r}}}t.wrap=o;var l="suspendedStart",d="suspendedYield",p="executing",h="completed",v={};function f(){}function m(){}function g(){}var w={};w[s]=function(){return this};var b=Object.getPrototypeOf,y=b&&b(b(E([])));y&&y!==a&&r.call(y,s)&&(w=y);var x=g.prototype=f.prototype=Object.create(w);function C(t){["next","throw","return"].forEach(function(e){t[e]=function(t){return this._invoke(e,t)}})}function _(t){function e(a,n,s,c){var i=u(t[a],t,n);if("throw"!==i.type){var o=i.arg,l=o.value;return l&&"object"===typeof l&&r.call(l,"__await")?Promise.resolve(l.__await).then(function(t){e("next",t,s,c)},function(t){e("throw",t,s,c)}):Promise.resolve(l).then(function(t){o.value=t,s(o)},function(t){return e("throw",t,s,c)})}c(i.arg)}var a;function n(t,r){function n(){return new Promise(function(a,n){e(t,r,a,n)})}return a=a?a.then(n,n):n()}this._invoke=n}function O(t,e,a){var r=l;return function(n,s){if(r===p)throw new Error("Generator is already running");if(r===h){if("throw"===n)throw s;return R()}a.method=n,a.arg=s;while(1){var c=a.delegate;if(c){var i=j(c,a);if(i){if(i===v)continue;return i}}if("next"===a.method)a.sent=a._sent=a.arg;else if("throw"===a.method){if(r===l)throw r=h,a.arg;a.dispatchException(a.arg)}else"return"===a.method&&a.abrupt("return",a.arg);r=p;var o=u(t,e,a);if("normal"===o.type){if(r=a.done?h:d,o.arg===v)continue;return{value:o.arg,done:a.done}}"throw"===o.type&&(r=h,a.method="throw",a.arg=o.arg)}}}function j(t,a){var r=t.iterator[a.method];if(r===e){if(a.delegate=null,"throw"===a.method){if(t.iterator["return"]&&(a.method="return",a.arg=e,j(t,a),"throw"===a.method))return v;a.method="throw",a.arg=new TypeError("The iterator does not provide a 'throw' method")}return v}var n=u(r,t.iterator,a.arg);if("throw"===n.type)return a.method="throw",a.arg=n.arg,a.delegate=null,v;var s=n.arg;return s?s.done?(a[t.resultName]=s.value,a.next=t.nextLoc,"return"!==a.method&&(a.method="next",a.arg=e),a.delegate=null,v):s:(a.method="throw",a.arg=new TypeError("iterator result is not an object"),a.delegate=null,v)}function k(t){var e={tryLoc:t[0]};1 in t&&(e.catchLoc=t[1]),2 in t&&(e.finallyLoc=t[2],e.afterLoc=t[3]),this.tryEntries.push(e)}function $(t){var e=t.completion||{};e.type="normal",delete e.arg,t.completion=e}function L(t){this.tryEntries=[{tryLoc:"root"}],t.forEach(k,this),this.reset(!0)}function E(t){if(t){var a=t[s];if(a)return a.call(t);if("function"===typeof t.next)return t;if(!isNaN(t.length)){var n=-1,c=function a(){while(++n<t.length)if(r.call(t,n))return a.value=t[n],a.done=!1,a;return a.value=e,a.done=!0,a};return c.next=c}}return{next:R}}function R(){return{value:e,done:!0}}return m.prototype=x.constructor=g,g.constructor=m,g[i]=m.displayName="GeneratorFunction",t.isGeneratorFunction=function(t){var e="function"===typeof t&&t.constructor;return!!e&&(e===m||"GeneratorFunction"===(e.displayName||e.name))},t.mark=function(t){return Object.setPrototypeOf?Object.setPrototypeOf(t,g):(t.__proto__=g,i in t||(t[i]="GeneratorFunction")),t.prototype=Object.create(x),t},t.awrap=function(t){return{__await:t}},C(_.prototype),_.prototype[c]=function(){return this},t.AsyncIterator=_,t.async=function(e,a,r,n){var s=new _(o(e,a,r,n));return t.isGeneratorFunction(a)?s:s.next().then(function(t){return t.done?t.value:s.next()})},C(x),x[i]="Generator",x[s]=function(){return this},x.toString=function(){return"[object Generator]"},t.keys=function(t){var e=[];for(var a in t)e.push(a);return e.reverse(),function a(){while(e.length){var r=e.pop();if(r in t)return a.value=r,a.done=!1,a}return a.done=!0,a}},t.values=E,L.prototype={constructor:L,reset:function(t){if(this.prev=0,this.next=0,this.sent=this._sent=e,this.done=!1,this.delegate=null,this.method="next",this.arg=e,this.tryEntries.forEach($),!t)for(var a in this)"t"===a.charAt(0)&&r.call(this,a)&&!isNaN(+a.slice(1))&&(this[a]=e)},stop:function(){this.done=!0;var t=this.tryEntries[0],e=t.completion;if("throw"===e.type)throw e.arg;return this.rval},dispatchException:function(t){if(this.done)throw t;var a=this;function n(r,n){return i.type="throw",i.arg=t,a.next=r,n&&(a.method="next",a.arg=e),!!n}for(var s=this.tryEntries.length-1;s>=0;--s){var c=this.tryEntries[s],i=c.completion;if("root"===c.tryLoc)return n("end");if(c.tryLoc<=this.prev){var o=r.call(c,"catchLoc"),u=r.call(c,"finallyLoc");if(o&&u){if(this.prev<c.catchLoc)return n(c.catchLoc,!0);if(this.prev<c.finallyLoc)return n(c.finallyLoc)}else if(o){if(this.prev<c.catchLoc)return n(c.catchLoc,!0)}else{if(!u)throw new Error("try statement without catch or finally");if(this.prev<c.finallyLoc)return n(c.finallyLoc)}}}},abrupt:function(t,e){for(var a=this.tryEntries.length-1;a>=0;--a){var n=this.tryEntries[a];if(n.tryLoc<=this.prev&&r.call(n,"finallyLoc")&&this.prev<n.finallyLoc){var s=n;break}}s&&("break"===t||"continue"===t)&&s.tryLoc<=e&&e<=s.finallyLoc&&(s=null);var c=s?s.completion:{};return c.type=t,c.arg=e,s?(this.method="next",this.next=s.finallyLoc,v):this.complete(c)},complete:function(t,e){if("throw"===t.type)throw t.arg;return"break"===t.type||"continue"===t.type?this.next=t.arg:"return"===t.type?(this.rval=this.arg=t.arg,this.method="return",this.next="end"):"normal"===t.type&&e&&(this.next=e),v},finish:function(t){for(var e=this.tryEntries.length-1;e>=0;--e){var a=this.tryEntries[e];if(a.finallyLoc===t)return this.complete(a.completion,a.afterLoc),$(a),v}},catch:function(t){for(var e=this.tryEntries.length-1;e>=0;--e){var a=this.tryEntries[e];if(a.tryLoc===t){var r=a.completion;if("throw"===r.type){var n=r.arg;$(a)}return n}}throw new Error("illegal catch attempt")},delegateYield:function(t,a,r){return this.delegate={iterator:E(t),resultName:a,nextLoc:r},"next"===this.method&&(this.arg=e),v}},t}(t.exports);try{regeneratorRuntime=r}catch(n){Function("r","regeneratorRuntime = r")(r)}},ac2a:function(t,e,a){"use strict";a.r(e);var r=function(){var t=this,e=t.$createElement,r=t._self._c||e;return r("div",{staticClass:"register absolute"},[r("div",{staticClass:"shading"},[r("div",{staticClass:"pictrue acea-row row-center-wrapper"},[t.logoUrl?r("img",{attrs:{src:t.logoUrl}}):r("img",{attrs:{src:a("dd88")}})])]),1===t.formItem?r("div",{staticClass:"whiteBg"},[r("div",{staticClass:"title acea-row row-center-wrapper"},t._l(t.navList,function(e,a){return r("div",{key:a,staticClass:"item",class:t.current===a?"on":"",on:{click:function(e){return t.navTap(a)}}},[t._v("\n        "+t._s(e)+"\n      ")])}),0),r("div",{staticClass:"list",attrs:{hidden:0!==t.current}},[r("form",{on:{submit:function(e){return e.preventDefault(),t.submit(e)}}},[r("div",{staticClass:"item"},[r("div",{staticClass:"acea-row row-between-wrapper"},[r("svg",{staticClass:"icon",attrs:{"aria-hidden":"true"}},[r("use",{attrs:{"xlink:href":"#icon-phone_"}})]),r("input",{directives:[{name:"model",rawName:"v-model",value:t.account,expression:"account"}],attrs:{type:"text",placeholder:"输入手机号码",required:""},domProps:{value:t.account},on:{input:function(e){e.target.composing||(t.account=e.target.value)}}})])]),r("div",{staticClass:"item"},[r("div",{staticClass:"acea-row row-between-wrapper"},[r("svg",{staticClass:"icon",attrs:{"aria-hidden":"true"}},[r("use",{attrs:{"xlink:href":"#icon-code_"}})]),r("input",{directives:[{name:"model",rawName:"v-model",value:t.password,expression:"password"}],attrs:{type:"password",placeholder:"填写登录密码",required:""},domProps:{value:t.password},on:{input:function(e){e.target.composing||(t.password=e.target.value)}}})])])]),r("div",{staticClass:"forgetPwd",on:{click:function(e){return t.$router.push({name:"RetrievePassword"})}}},[r("span",{staticClass:"iconfont icon-wenti"}),t._v("忘记密码\n      ")])]),r("div",{staticClass:"list",attrs:{hidden:1!==t.current}},[r("div",{staticClass:"item"},[r("div",{staticClass:"acea-row row-between-wrapper"},[r("svg",{staticClass:"icon",attrs:{"aria-hidden":"true"}},[r("use",{attrs:{"xlink:href":"#icon-phone_"}})]),r("input",{directives:[{name:"model",rawName:"v-model",value:t.account,expression:"account"}],attrs:{type:"text",placeholder:"输入手机号码"},domProps:{value:t.account},on:{input:function(e){e.target.composing||(t.account=e.target.value)}}})])]),r("div",{staticClass:"item"},[r("div",{staticClass:"align-left"},[r("svg",{staticClass:"icon",attrs:{"aria-hidden":"true"}},[r("use",{attrs:{"xlink:href":"#icon-code_1"}})]),r("input",{directives:[{name:"model",rawName:"v-model",value:t.captcha,expression:"captcha"}],staticClass:"codeIput",attrs:{type:"text",placeholder:"填写验证码"},domProps:{value:t.captcha},on:{input:function(e){e.target.composing||(t.captcha=e.target.value)}}}),r("button",{staticClass:"code",class:!0===t.disabled?"on":"",attrs:{disabled:t.disabled},on:{click:t.code}},[t._v("\n            "+t._s(t.text)+"\n          ")])])])]),r("div",{staticClass:"logon",attrs:{hidden:1!==t.current},on:{click:t.loginMobile}},[t._v("登录")]),r("div",{staticClass:"logon",attrs:{hidden:1===t.current},on:{click:t.submit}},[t._v("登录")]),r("div",{staticClass:"tip"},[t._v("\n      没有账号?\n      "),r("span",{staticClass:"font-color-red",on:{click:function(e){t.formItem=2}}},[t._v("立即注册")])])]):r("div",{staticClass:"whiteBg"},[r("div",{staticClass:"title"},[t._v("注册账号")]),r("div",{staticClass:"list"},[r("div",{staticClass:"item"},[r("div",[r("svg",{staticClass:"icon",attrs:{"aria-hidden":"true"}},[r("use",{attrs:{"xlink:href":"#icon-phone_"}})]),r("input",{directives:[{name:"model",rawName:"v-model",value:t.account,expression:"account"}],attrs:{type:"text",placeholder:"输入手机号码"},domProps:{value:t.account},on:{input:function(e){e.target.composing||(t.account=e.target.value)}}})])]),r("div",{staticClass:"item"},[r("div",{staticClass:"align-left"},[r("svg",{staticClass:"icon",attrs:{"aria-hidden":"true"}},[r("use",{attrs:{"xlink:href":"#icon-code_1"}})]),r("input",{directives:[{name:"model",rawName:"v-model",value:t.captcha,expression:"captcha"}],staticClass:"codeIput",attrs:{type:"text",placeholder:"填写验证码"},domProps:{value:t.captcha},on:{input:function(e){e.target.composing||(t.captcha=e.target.value)}}}),r("button",{staticClass:"code",class:!0===t.disabled?"on":"",attrs:{disabled:t.disabled},on:{click:t.code}},[t._v("\n            "+t._s(t.text)+"\n          ")])])]),r("div",{staticClass:"item"},[r("div",[r("svg",{staticClass:"icon",attrs:{"aria-hidden":"true"}},[r("use",{attrs:{"xlink:href":"#icon-code_"}})]),r("input",{directives:[{name:"model",rawName:"v-model",value:t.password,expression:"password"}],attrs:{type:"password",placeholder:"填写您的登录密码"},domProps:{value:t.password},on:{input:function(e){e.target.composing||(t.password=e.target.value)}}})])])]),r("div",{staticClass:"logon",on:{click:t.register}},[t._v("注册")]),r("div",{staticClass:"tip"},[t._v("\n      已有账号?\n      "),r("span",{staticClass:"font-color-red",on:{click:function(e){t.formItem=1}}},[t._v("立即登录")])])]),r("div",{staticClass:"bottom"})])},n=[],s=(a("a481"),a("96cf"),a("3b8d")),c=a("f750"),i=a("c24f"),o=a("61f7"),u=a("cba2"),l=a("e876"),d=a("5a0c"),p=a.n(d),h=a("d0a4"),v="login_back_url",f={name:"Login",mixins:[c["a"]],data:function(){return{navList:["账号登录","快速登录"],current:1,account:"",password:"",captcha:"",formItem:1,type:"login",logoUrl:""}},mounted:function(){this.getLogoImage()},methods:{getLogoImage:function(){var t=Object(s["a"])(regeneratorRuntime.mark(function t(){var e;return regeneratorRuntime.wrap(function(t){while(1)switch(t.prev=t.next){case 0:e=this,Object(l["g"])(2).then(function(t){e.logoUrl=t.data.logo_url});case 2:case"end":return t.stop()}},t,this)}));function e(){return t.apply(this,arguments)}return e}(),loginMobile:function(){var t=Object(s["a"])(regeneratorRuntime.mark(function t(){var e,a,r;return regeneratorRuntime.wrap(function(t){while(1)switch(t.prev=t.next){case 0:return e=this,a=e.account,r=e.captcha,t.prev=2,t.next=5,e.$validator({account:[Object(o["d"])(o["d"].message("手机号码")),Object(o["b"])(o["b"].message())],captcha:[Object(o["d"])(o["d"].message("验证码")),Object(o["a"])(o["a"].message("验证码"))]}).validate({account:a,captcha:r});case 5:t.next=10;break;case 7:return t.prev=7,t.t0=t["catch"](2),t.abrupt("return",Object(u["b"])(t.t0));case 10:Object(i["I"])({phone:e.account,captcha:e.captcha,spread:h["a"].get("spread")}).then(function(t){var a=t.data,r=Math.round(new Date/1e3);e.$store.commit("LOGIN",a.token,p()(a.expires_time)-r);var n=h["a"].get(v)||"/";h["a"].remove(v),e.$router.replace({path:n})}).catch(function(t){e.$dialog.error(t.msg)});case 11:case"end":return t.stop()}},t,this,[[2,7]])}));function e(){return t.apply(this,arguments)}return e}(),register:function(){var t=Object(s["a"])(regeneratorRuntime.mark(function t(){var e,a,r,n;return regeneratorRuntime.wrap(function(t){while(1)switch(t.prev=t.next){case 0:return e=this,a=e.account,r=e.captcha,n=e.password,t.prev=2,t.next=5,e.$validator({account:[Object(o["d"])(o["d"].message("手机号码")),Object(o["b"])(o["b"].message())],captcha:[Object(o["d"])(o["d"].message("验证码")),Object(o["a"])(o["a"].message("验证码"))],password:[Object(o["d"])(o["d"].message("密码")),o["c"].range([6,16],o["c"].range.message("密码")),Object(o["a"])(o["a"].message("密码"))]}).validate({account:a,captcha:r,password:n});case 5:t.next=10;break;case 7:return t.prev=7,t.t0=t["catch"](2),t.abrupt("return",Object(u["b"])(t.t0));case 10:Object(i["Q"])({account:e.account,captcha:e.captcha,password:e.password,spread:h["a"].get("spread")}).then(function(t){e.$dialog.success(t.msg),e.formItem=1}).catch(function(t){e.$dialog.error(t.msg)});case 11:case"end":return t.stop()}},t,this,[[2,7]])}));function e(){return t.apply(this,arguments)}return e}(),code:function(){var t=Object(s["a"])(regeneratorRuntime.mark(function t(){var e,a;return regeneratorRuntime.wrap(function(t){while(1)switch(t.prev=t.next){case 0:return e=this,a=e.account,t.prev=2,t.next=5,e.$validator({account:[Object(o["d"])(o["d"].message("手机号码")),Object(o["b"])(o["b"].message())]}).validate({account:a});case 5:t.next=10;break;case 7:return t.prev=7,t.t0=t["catch"](2),t.abrupt("return",Object(u["b"])(t.t0));case 10:return 2==e.formItem&&(e.type="register"),t.next=13,Object(i["S"])({phone:e.account,type:e.type}).then(function(t){e.$dialog.success(t.msg),e.sendCode()}).catch(function(t){e.$dialog.error(t.msg)});case 13:case"end":return t.stop()}},t,this,[[2,7]])}));function e(){return t.apply(this,arguments)}return e}(),navTap:function(t){this.current=t},submit:function(){var t=Object(s["a"])(regeneratorRuntime.mark(function t(){var e,a,r=this;return regeneratorRuntime.wrap(function(t){while(1)switch(t.prev=t.next){case 0:return e=this.account,a=this.password,t.prev=1,t.next=4,this.$validator({account:[Object(o["d"])(o["d"].message("账号")),o["c"].range([5,16],o["c"].range.message("账号")),Object(o["a"])(o["a"].message("账号"))],password:[Object(o["d"])(o["d"].message("密码")),o["c"].range([6,16],o["c"].range.message("密码")),Object(o["a"])(o["a"].message("密码"))]}).validate({account:e,password:a});case 4:t.next=9;break;case 6:return t.prev=6,t.t0=t["catch"](1),t.abrupt("return",Object(u["b"])(t.t0));case 9:Object(i["H"])({account:e,password:a}).then(function(t){var e=t.data;r.$store.commit("LOGIN",e.token,p()(e.expires_time));var a=h["a"].get(v)||"/";h["a"].remove(v),r.$router.replace({path:a})}).catch(function(t){r.$dialog.error(t.msg)});case 10:case"end":return t.stop()}},t,this,[[1,6]])}));function e(){return t.apply(this,arguments)}return e}()}},m=f,g=a("2877"),w=Object(g["a"])(m,r,n,!1,null,null,null);e["default"]=w.exports},c242:function(t,e,a){"use strict";a.r(e);var r=function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("div",{staticClass:"ChangePassword"},[a("div",{staticClass:"phone"},[t._v("\n    当前手机号:"),a("input",{directives:[{name:"model",rawName:"v-model",value:t.phone,expression:"phone"}],attrs:{type:"text",disabled:""},domProps:{value:t.phone},on:{input:function(e){e.target.composing||(t.phone=e.target.value)}}})]),a("div",{staticClass:"list"},[a("div",{staticClass:"item"},[a("input",{directives:[{name:"model",rawName:"v-model",value:t.password,expression:"password"}],attrs:{type:"password",placeholder:"设置新密码"},domProps:{value:t.password},on:{input:function(e){e.target.composing||(t.password=e.target.value)}}})]),a("div",{staticClass:"item"},[a("input",{directives:[{name:"model",rawName:"v-model",value:t.password2,expression:"password2"}],attrs:{type:"password",placeholder:"确认新密码"},domProps:{value:t.password2},on:{input:function(e){e.target.composing||(t.password2=e.target.value)}}})]),a("div",{staticClass:"item acea-row row-between-wrapper"},[a("input",{directives:[{name:"model",rawName:"v-model",value:t.captcha,expression:"captcha"}],staticClass:"codeIput",attrs:{type:"text",placeholder:"填写验证码"},domProps:{value:t.captcha},on:{input:function(e){e.target.composing||(t.captcha=e.target.value)}}}),a("button",{staticClass:"code font-color-red",class:!0===t.disabled?"on":"",attrs:{disabled:t.disabled},on:{click:t.code}},[t._v("\n        "+t._s(t.text)+"\n      ")])])]),a("div",{staticClass:"confirmBnt bg-color-red",on:{click:t.confirm}},[t._v("确认修改")])])},n=[],s=(a("96cf"),a("3b8d")),c=(a("a481"),a("f750")),i=a("61f7"),o=a("cba2"),u=a("c24f"),l={name:"ChangePassword",components:{},props:{},data:function(){return{password:"",password2:"",captcha:"",phone:"",yphone:""}},mixins:[c["a"]],mounted:function(){this.getUserInfo()},methods:{getUserInfo:function(){var t=this;Object(u["E"])().then(function(e){t.yphone=e.data.phone;var a=/^(\d{3})\d*(\d{4})$/;t.phone=t.yphone.replace(a,"$1****$2")})},confirm:function(){var t=Object(s["a"])(regeneratorRuntime.mark(function t(){var e,a,r,n;return regeneratorRuntime.wrap(function(t){while(1)switch(t.prev=t.next){case 0:return e=this,a=e.password,r=e.password2,n=e.captcha,t.prev=2,t.next=5,e.$validator({password:[Object(i["d"])(i["d"].message("密码")),i["c"].range([6,16],i["c"].range.message("密码")),Object(i["a"])(i["a"].message("密码"))],captcha:[Object(i["d"])(i["d"].message("验证码")),Object(i["a"])(i["a"].message("验证码"))]}).validate({password:a,captcha:n});case 5:t.next=10;break;case 7:return t.prev=7,t.t0=t["catch"](2),t.abrupt("return",Object(o["b"])(t.t0));case 10:if(a===r){t.next=12;break}return t.abrupt("return",e.$dialog.error("两次密码不一致"));case 12:Object(u["R"])({account:e.yphone,captcha:e.captcha,password:e.password}).then(function(t){e.$dialog.success(t.msg).then(function(){e.$router.push({name:"Login"})})}).catch(function(t){e.$dialog.error(t.msg)});case 13:case"end":return t.stop()}},t,this,[[2,7]])}));function e(){return t.apply(this,arguments)}return e}(),code:function(){var t=Object(s["a"])(regeneratorRuntime.mark(function t(){var e,a;return regeneratorRuntime.wrap(function(t){while(1)switch(t.prev=t.next){case 0:return e=this,a=e.yphone,t.prev=2,t.next=5,e.$validator({yphone:[Object(i["d"])(i["d"].message("手机号码")),Object(i["b"])(i["b"].message())]}).validate({yphone:a});case 5:t.next=10;break;case 7:return t.prev=7,t.t0=t["catch"](2),t.abrupt("return",Object(o["b"])(t.t0));case 10:Object(u["S"])({phone:a}).then(function(t){e.$dialog.success(t.msg),e.sendCode()}).catch(function(t){e.$dialog.error(t.msg)});case 11:case"end":return t.stop()}},t,this,[[2,7]])}));function e(){return t.apply(this,arguments)}return e}()}},d=l,p=(a("230d"),a("2877")),h=Object(p["a"])(d,r,n,!1,null,"78d14388",null);e["default"]=h.exports},d532:function(t,e,a){},dd88:function(t,e,a){t.exports=a.p+"h5/img/logo2.47964cc3.png"},f750:function(t,e,a){"use strict";e["a"]={data:function(){return{disabled:!1,text:"获取验证码"}},methods:{sendCode:function(){var t=this;if(!this.disabled){this.disabled=!0;var e=60;this.text="剩余 "+e+"s";var a=setInterval(function(){e-=1,e<0&&clearInterval(a),t.text="剩余 "+e+"s",t.text<"剩余 0s"&&(t.disabled=!1,t.text="重新获取")},1e3)}}}}}}]);
//# sourceMappingURL=login.1d3cb71b.js.map