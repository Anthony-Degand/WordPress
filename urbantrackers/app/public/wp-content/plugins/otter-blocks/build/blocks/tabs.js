!function(){"use strict";var e;e=()=>{document.querySelectorAll(".wp-block-themeisle-blocks-tabs").forEach((e=>{const t=Array.from(e.querySelectorAll(":scope > .wp-block-themeisle-blocks-tabs__content > .wp-block-themeisle-blocks-tabs-item")),c=document.createElement("div");c.classList.add("wp-block-themeisle-blocks-tabs__header"),e.prepend(c);let s=!1;const l=[];var a,o;t.forEach(((e,a)=>{const o=document.createElement("div");o.classList.add("wp-block-themeisle-blocks-tabs__header_item");const d=e.querySelector(":scope > .wp-block-themeisle-blocks-tabs-item__content");"true"!==e.dataset.defaultOpen||s?l.push({headerItem:o,content:d}):(o.classList.add("active"),d.classList.add("active"),s=!0),o.innerHTML=e.dataset.title||`Tab ${a+1}`,o.tabIndex=0;const n=e.querySelector(".wp-block-themeisle-blocks-tabs-item__header"),i=(e,t)=>{const s=e.querySelector(":scope > .wp-block-themeisle-blocks-tabs-item__content"),l=e.querySelector(":scope > .wp-block-themeisle-blocks-tabs-item__header");s.classList.toggle("active",t===a),s.classList.toggle("hidden",t!==a),l.classList.toggle("active",t===a),l.classList.toggle("hidden",t!==a),Array.from(c.childNodes).forEach(((e,t)=>{e.classList.toggle("active",t===a),e.classList.toggle("hidden",t!==a)}))};o.addEventListener("click",(()=>t.forEach(i))),o.addEventListener("keyup",(e=>{"Enter"===e.code&&(e.preventDefault(),t.forEach(i))})),n.addEventListener("click",(()=>t.forEach(i))),n.addEventListener("keyup",(e=>{"Enter"===e.code&&(e.preventDefault(),t.forEach(i))})),c.appendChild(o)})),s||(null==l||null===(a=l[0])||void 0===a||a.headerItem.classList.add("active"),null==l||null===(o=l[0])||void 0===o||o.content.classList.add("active"))}))},"undefined"!=typeof document&&("complete"!==document.readyState&&"interactive"!==document.readyState?document.addEventListener("DOMContentLoaded",e):e())}();