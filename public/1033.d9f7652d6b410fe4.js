"use strict";(self.webpackChunkfrontend=self.webpackChunkfrontend||[]).push([[1033],{1033:(u,o,e)=>{e.r(o),e.d(o,{ion_img:()=>s});var i=e(7205),n=e(5729),r=e(3756);const s=class{constructor(t){(0,i.r)(this,t),this.ionImgWillLoad=(0,i.e)(this,"ionImgWillLoad",7),this.ionImgDidLoad=(0,i.e)(this,"ionImgDidLoad",7),this.ionError=(0,i.e)(this,"ionError",7),this.inheritedAttributes={},this.onLoad=()=>{this.ionImgDidLoad.emit()},this.onError=()=>{this.ionError.emit()}}srcChanged(){this.addIO()}componentWillLoad(){this.inheritedAttributes=(0,r.j)(this.el,["draggable"])}componentDidLoad(){this.addIO()}addIO(){void 0!==this.src&&(typeof window<"u"&&"IntersectionObserver"in window&&"IntersectionObserverEntry"in window&&"isIntersecting"in window.IntersectionObserverEntry.prototype?(this.removeIO(),this.io=new IntersectionObserver(t=>{t[t.length-1].isIntersecting&&(this.load(),this.removeIO())}),this.io.observe(this.el)):setTimeout(()=>this.load(),200))}load(){this.loadError=this.onError,this.loadSrc=this.src,this.ionImgWillLoad.emit()}removeIO(){this.io&&(this.io.disconnect(),this.io=void 0)}render(){const{loadSrc:t,alt:a,onLoad:c,loadError:l,inheritedAttributes:g}=this,{draggable:m}=g;return(0,i.h)(i.H,{class:(0,n.b)(this)},(0,i.h)("img",{decoding:"async",src:t,alt:a,onLoad:c,onError:l,part:"image",draggable:h(m)}))}get el(){return(0,i.i)(this)}static get watchers(){return{src:["srcChanged"]}}},h=t=>{switch(t){case"true":return!0;case"false":return!1;default:return}};s.style=":host{display:block;-o-object-fit:contain;object-fit:contain}img{display:block;width:100%;height:100%;-o-object-fit:inherit;object-fit:inherit;-o-object-position:inherit;object-position:inherit}"}}]);