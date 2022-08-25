this.itsec=this.itsec||{},this.itsec["site-scanner"]=this.itsec["site-scanner"]||{},this.itsec["site-scanner"].dashboard=(window.itsecWebpackJsonP=window.itsecWebpackJsonP||[]).push([[28],{"1ZqX":function(e,t){!function(){e.exports=this.wp.data}()},FqII:function(e,t){!function(){e.exports=this.wp.date}()},GRId:function(e,t){!function(){e.exports=this.wp.element}()},K9lf:function(e,t){!function(){e.exports=this.wp.compose}()},Mmq9:function(e,t){!function(){e.exports=this.wp.url}()},RxS6:function(e,t){!function(){e.exports=this.wp.keycodes}()},Tqx9:function(e,t){!function(){e.exports=this.wp.primitives}()},TvNi:function(e,t){!function(){e.exports=this.wp.plugins}()},YLtl:function(e,t){!function(){e.exports=this.lodash}()},cDcd:function(e,t){!function(){e.exports=this.React}()},faye:function(e,t){!function(){e.exports=this.ReactDOM}()},gf1k:function(e,t){!function(){e.exports=this.itsec.dashboard.dashboard}()},l3Sj:function(e,t){!function(){e.exports=this.wp.i18n}()},lsLH:function(e,t,c){},rl8x:function(e,t){!function(){e.exports=this.wp.isShallowEqual}()},"tI+e":function(e,t){!function(){e.exports=this.wp.components}()},x154:function(e,t,c){"use strict";c.r(t);var a=c("GRId"),n=c("l3Sj"),s=c("TvNi"),i=c("1ZqX"),r=c("ppSj"),l=c("TSYQ"),o=c.n(l),d=c("4eJC"),u=c.n(d),b=c("FqII"),m=c("tI+e"),O=c("K9lf"),p=c("49++"),j=c("gf1k");function h(e){let{card:t,config:c}=e;const[s,i]=Object(a.useState)(void 0);return Object(a.createElement)("div",{className:"itsec-card--type-malware-scan itsec-card--type-malware--scan-only"},Object(a.createElement)(j.CardHeader,null,Object(a.createElement)(j.CardHeaderTitle,{card:t,config:c})),Object(a.createElement)("section",{className:"itsec-card-malware-scan__description"},Object(a.createElement)("p",null,Object(a.createInterpolateElement)(Object(n.__)("This <a>site scan is powered by iThemes</a>. We use several datapoints to check for known malware, blocklist status, website errors and out-of-date software. These datapoints are not 100% accurate, but we try our best to provide thorough results.","better-wp-security"),{a:Object(a.createElement)("a",{href:"https://help.ithemes.com/hc/en-us/articles/360046334433"})})),Object(a.createElement)("p",null,Object(n.__)("Enable Database Logging to see a history of completed Site Scans.","better-wp-security"))),Object(a.createElement)(j.CardFooterSchemaActions,{card:t,onComplete:(e,t)=>e.endsWith("/scan")&&i(t)}),s&&Object(a.createElement)(m.Modal,{title:Object(n.__)("Scan Results","better-wp-security"),onRequestClose:()=>i(void 0)},Object(a.createElement)(p.t,{results:s,showSiteUrl:!1})))}c("lsLH");const f=u()((e,t)=>String(e).replace(/https?:\/\//,"")===String(t).replace(/https?:\/\//,""));function w(e){let{card:t,config:c}=e;const s=Object(O.useInstanceId)(w),{siteInfo:r}=Object(i.useSelect)(e=>({siteInfo:e("ithemes-security/core").getSiteInfo()})),[l,d]=Object(a.useState)(0),[u,h]=Object(a.useState)(void 0),[E,_]=Object(a.useState)(!1);return Object(a.createElement)("div",{className:"itsec-card--type-malware-scan"},Object(a.createElement)(j.CardHeader,null,Object(a.createElement)(j.CardHeaderTitle,{card:t,config:c}),Object(a.createElement)(j.CardHeaderDate,{card:t,config:c})),Object(a.createElement)("section",{className:"itsec-card-malware-scan__scans-section"},Object(a.createElement)("table",{className:"itsec-card-malware-scan__scans"},Object(a.createElement)("thead",null,Object(a.createElement)("tr",null,Object(a.createElement)("th",null,Object(n.__)("Time","better-wp-security")),Object(a.createElement)("th",null,Object(n.__)("Status","better-wp-security")),Object(a.createElement)("th",null,Object(a.createElement)("span",{className:"screen-reader-text"},Object(n.__)("Actions","better-wp-security"))))),Object(a.createElement)("tbody",null,t.data.scans.map(e=>{const t=e.id,c=e.status,i=e.description;return Object(a.createElement)("tr",{key:t},Object(a.createElement)("th",{scope:"row"},Object(b.dateI18n)("M d, Y g:i A",e.time)),Object(a.createElement)("td",null,Object(a.createElement)("span",{className:o()("itsec-card-malware-scan__scan-status","itsec-card-malware-scan__scan-status--"+c)},i)),Object(a.createElement)("td",null,Object(a.createElement)(m.Button,{isLink:!0,"aria-pressed":l===t,onClick:()=>d(t)},Object(n.__)("View","better-wp-security")),l===t&&Object(a.createElement)(m.Modal,{title:Object(n.sprintf)(Object(n.__)("View Scan Details for %s","better-wp-security"),Object(b.dateI18n)("M d, Y g:i A",e.time)),onRequestClose:()=>{d(0),_(!1)}},Object(a.createElement)(p.t,{results:e,showSiteUrl:!f(e.url,null==r?void 0:r.url)}),Object(a.createElement)(m.Button,{className:"itsec-card-malware-scan__raw-details-toggle",isLink:!0,onClick:()=>_(!E),"aria-expanded":E,"aria-controls":"itsec-card-malware-scan__raw-details--"+s},E?Object(n.__)("Hide Raw Details","better-wp-security"):Object(n.__)("Show Raw Details","better-wp-security")),Object(a.createElement)("div",{id:"itsec-card-malware-scan__raw-details--"+s,style:{visibility:E?"visible":"hidden"}},E&&Object(a.createElement)(p.r,{json:e})))))})))),Object(a.createElement)(j.CardFooterSchemaActions,{card:t,onComplete:(e,t)=>e.endsWith("/scan")&&h(t)}),u&&Object(a.createElement)(m.Modal,{title:Object(n.__)("Scan Results","better-wp-security"),onRequestClose:()=>h(void 0)},Object(a.createElement)(p.t,{results:u,showSiteUrl:!1})))}const E={render(e){var t;return"file"===(null===(t=e.card)||void 0===t?void 0:t.data.log_type)?Object(a.createElement)(h,e):Object(a.createElement)(w,e)}};function _(){const{registerCard:e}=Object(i.useDispatch)("ithemes-security/dashboard");return Object(r.f)(_,()=>e("malware-scan",E)),null}c.p=window.itsecWebpackPublicPath,Object(n.setLocaleData)({"":{}},"ithemes-security-pro"),Object(s.registerPlugin)("itsec-site-scanner-dashboard",{render:()=>Object(a.createElement)(_,null)})},ywyh:function(e,t){!function(){e.exports=this.wp.apiFetch}()},z1rk:function(e,t){!function(){e.exports=this.itsec.packages.data}()}},[["x154",0,4,1,2,3]]]);