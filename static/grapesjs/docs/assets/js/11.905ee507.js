(window.webpackJsonp=window.webpackJsonp||[]).push([[11,13],{234:function(t,e,n){},235:function(t,e,n){"use strict";n(234)},264:function(t,e,n){"use strict";n.r(e);var a={render:t=>t("div",{class:"carbon-ads",attrs:{id:"native-carbon"}}),mounted(){window.BSANativeCallback=t=>{if(!t.ads.length){const t=document.createElement("script");t.src="//cdn.carbonads.com/carbon.js?serve=CEAIVK77&placement=grapesjscom",t.setAttribute("id","_carbonads_js");const e=document.getElementById("native-carbon");e&&e.appendChild(t)}},this.load()},watch:{$route(t,e){t.path!==e.path&&this.$el.querySelector("#carbonads")&&(this.$el.innerHTML="",this.load())}},methods:{initCarbon(){const{_bsa:t}=window;void 0!==t&&t&&t.init("default","CK7I62QJ","placement:grapesjscomdocs",{target:"#native-carbon"})},load(){const t=document.createElement("script");t.src="//m.servedby-buysellads.com/monetization.js",t.onload=()=>this.initCarbon(),this.$el.appendChild(t)}}},o=(n(235),n(13)),s=Object(o.a)(a,void 0,void 0,!1,null,null,null);e.default=s.exports},350:function(t,e,n){"use strict";n.r(e);var a=n(291),o=n(264),s={components:{Layout:a.a,CarbonAds:o.default}},c=n(13),i=Object(c.a)(s,(function(){var t=this._self._c;return t("Layout",[t("CarbonAds",{attrs:{slot:"sidebar-top"},slot:"sidebar-top"})],1)}),[],!1,null,null,null);e.default=i.exports}}]);