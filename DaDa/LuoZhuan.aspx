﻿<%@ Page Title="裸钻" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true"
    CodeBehind="LuoZhuan.aspx.cs" Inherits="DaDa.LuoZhuan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script type="text/javascript">

    var imf = function () {
        var lf = 0;
        var instances = [];
        function getElementsByClass(object, tag, className) {
            var o = object.getElementsByTagName(tag);
            for (var i = 0, n = o.length, ret = []; i < n; i++)
                if (o[i].className == className) ret.push(o[i]);
            if (ret.length == 1) ret = ret[0];
            return ret;
        }
        function addEvent(o, e, f) {
            if (window.addEventListener) o.addEventListener(e, f, false);
            else if (window.attachEvent) r = o.attachEvent('on' + e, f);
        }
        function createReflexion(cont, img) {
            var flx = false;
            if (document.createElement("canvas").getContext) {
                flx = document.createElement("canvas");
                flx.width = img.width;
                flx.height = img.height;
                var context = flx.getContext("2d");
                context.translate(0, img.height);
                context.scale(1, -1);
                context.drawImage(img, 0, 0, img.width, img.height);
                context.globalCompositeOperation = "destination-out";
                var gradient = context.createLinearGradient(0, 0, 0, img.height * 2);
                gradient.addColorStop(1, "rgba(255, 255, 255, 0)");
                gradient.addColorStop(0, "rgba(255, 255, 255, 1)");
                context.fillStyle = gradient;
                context.fillRect(0, 0, img.width, img.height * 2);
            } else {
                /* ---- DXImageTransform ---- */
                flx = document.createElement('img');
                flx.src = img.src;
                flx.style.filter = 'flipv progid:DXImageTransform.Microsoft.Alpha(' +
			                   'opacity=50, style=1, finishOpacity=0, startx=0, starty=0, finishx=0, finishy=' +
							   (img.height * .25) + ')';
            }
            /* ---- insert Reflexion ---- */
            flx.style.position = 'absolute';
            flx.style.left = '-1000px';
//            cont.appendChild(flx);
            return flx;
        }
        /* //////////// ==== ImageFlow Constructor ==== //////////// */
        function ImageFlow(oCont, size, zoom, border) {
            this.diapos = [];
            this.scr = false;
            this.size = size;
            this.zoom = zoom;
            this.bdw = border;
            this.oCont = oCont;
            this.oc = document.getElementById(oCont);
            this.scrollbar = getElementsByClass(this.oc, 'div', 'scrollbar');
            this.text = getElementsByClass(this.oc, 'div', 'text');
            this.title = getElementsByClass(this.text, 'div', 'title');
            this.legend = getElementsByClass(this.text, 'div', 'legend');
            this.bar = getElementsByClass(this.oc, 'img', 'bar');
            this.arL = getElementsByClass(this.oc, 'img', 'arrow-left');
            this.arR = getElementsByClass(this.oc, 'img', 'arrow-right');
            this.bw = this.bar.width;
            this.alw = this.arL.width - 5;
            this.arw = this.arR.width - 5;
            this.bar.parent = this.oc.parent = this;
            this.arL.parent = this.arR.parent = this;
            this.view = this.back = -1;
            this.resize();
            this.oc.onselectstart = function () { return false; }
            /* ---- create images ---- */
            var img = getElementsByClass(this.oc, 'div', 'bank').getElementsByTagName('a');
            this.NF = img.length;
            for (var i = 0, o; o = img[i]; i++) {
                this.diapos[i] = new Diapo(this, i,
										o.rel,
										o.title || '- ' + i + ' -',
										o.innerHTML || o.rel,
										o.href || '',
										o.target || '_self'
			);
            }
            /* ==== add mouse wheel events ==== */
            if (window.addEventListener)
                this.oc.addEventListener('DOMMouseScroll', function (e) {
                    this.parent.scroll(-e.detail);
                }, false);
            else this.oc.onmousewheel = function () {
                this.parent.scroll(event.wheelDelta);
            }
            /* ==== scrollbar drag N drop ==== */
            this.bar.onmousedown = function (e) {
                if (!e) e = window.event;
                var scl = e.screenX - this.offsetLeft;
                var self = this.parent;
                /* ---- move bar ---- */
                this.parent.oc.onmousemove = function (e) {
                    if (!e) e = window.event;
                    self.bar.style.left = Math.round(Math.min((self.ws - self.arw - self.bw), Math.max(self.alw, e.screenX - scl))) + 'px';
                    self.view = Math.round(((e.screenX - scl)) / (self.ws - self.alw - self.arw - self.bw) * self.NF);
                    if (self.view != self.back) self.calc();
                    return false;
                }
                /* ---- release scrollbar ---- */
                this.parent.oc.onmouseup = function (e) {
                    self.oc.onmousemove = null;
                    return false;
                }
                return false;
            }
            /* ==== right arrow ==== */
            this.arR.onclick = this.arR.ondblclick = function () {
                if (this.parent.view < this.parent.NF - 1)
                    this.parent.calc(1);
            }
            /* ==== Left arrow ==== */
            this.arL.onclick = this.arL.ondblclick = function () {
                if (this.parent.view > 0)
                    this.parent.calc(-1);
            }
        }
        /* //////////// ==== ImageFlow prototype ==== //////////// */
        ImageFlow.prototype = {
            /* ==== targets ==== */
            calc: function (inc) {
                if (inc) this.view += inc;
                var tw = 0;
                var lw = 0;
                var o = this.diapos[this.view];
                if (o && o.loaded) {
                    /* ---- reset ---- */
                    var ob = this.diapos[this.back];
                    if (ob && ob != o) {
                        ob.img.className = 'diapo';
                        ob.z1 = 1;
                    }
                    /* ---- update legend ---- */
                    this.title.replaceChild(document.createTextNode(o.title), this.title.firstChild);
                    this.legend.replaceChild(document.createTextNode(o.text), this.legend.firstChild);
                    /* ---- update hyperlink ---- */
                    if (o.url) {
                        o.img.className = 'diapo link';
                        window.status = 'hyperlink: ' + o.url;
                    } else {
                        o.img.className = 'diapo';
                        window.status = '';
                    }
                    /* ---- calculate target sizes & positions ---- */
                    o.w1 = Math.min(o.iw, this.wh * .5) * o.z1;
                    var x0 = o.x1 = (this.wh * .5) - (o.w1 * .5);
                    var x = x0 + o.w1 + this.bdw;
                    for (var i = this.view + 1, o; o = this.diapos[i]; i++) {
                        if (o.loaded) {
                            o.x1 = x;
                            o.w1 = (this.ht / o.r) * this.size;
                            x += o.w1 + this.bdw;
                            tw += o.w1 + this.bdw;
                        }
                    }
                    x = x0 - this.bdw;
                    for (var i = this.view - 1, o; o = this.diapos[i]; i--) {
                        if (o.loaded) {
                            o.w1 = (this.ht / o.r) * this.size;
                            o.x1 = x - o.w1;
                            x -= o.w1 + this.bdw;
                            tw += o.w1 + this.bdw;
                            lw += o.w1 + this.bdw;
                        }
                    }
                    /* ---- move scrollbar ---- */
                    if (!this.scr && tw) {
                        var r = (this.ws - this.alw - this.arw - this.bw) / tw;
                        this.bar.style.left = Math.round(this.alw + lw * r) + 'px';
                    }
                    /* ---- save preview view ---- */
                    this.back = this.view;
                }
            },
            /* ==== mousewheel scrolling ==== */
            scroll: function (sc) {
                if (sc < 0) {
                    if (this.view < this.NF - 1) this.calc(1);
                } else {
                    if (this.view > 0) this.calc(-1);
                }
            },
            /* ==== resize  ==== */
            resize: function () {
                this.wh = this.oc.clientWidth;
                this.ht = this.oc.clientHeight;
                this.ws = this.scrollbar.offsetWidth;
                this.calc();
                this.run(true);
            },
            /* ==== move all images  ==== */
            run: function (res) {
                var i = this.NF;
                while (i--) this.diapos[i].move(res);
            }
        }
        /* //////////// ==== Diapo Constructor ==== //////////// */
        Diapo = function (parent, N, src, title, text, url, target) {
            this.parent = parent;
            this.loaded = false;
            this.title = title;
            this.text = text;
            this.url = url;
            this.target = target;
            this.N = N;
            this.img = document.createElement('img');
            this.img.src = src;
            this.img.parent = this;
            this.img.className = 'diapo';
            this.x0 = this.parent.oc.clientWidth;
            this.x1 = this.x0;
            this.w0 = 0;
            this.w1 = 0;
            this.z1 = 1;
            this.img.parent = this;
            this.img.onclick = function () { this.parent.click(); }
            this.parent.oc.appendChild(this.img);
            /* ---- display external link ---- */
            if (url) {
                this.img.onmouseover = function () { this.className = 'diapo link'; }
                this.img.onmouseout = function () { this.className = 'diapo'; }
            }
        }
        /* //////////// ==== Diapo prototype ==== //////////// */
        Diapo.prototype = {
            /* ==== HTML rendering ==== */
            move: function (res) {
                if (this.loaded) {
                    var sx = this.x1 - this.x0;
                    var sw = this.w1 - this.w0;
                    if (Math.abs(sx) > 2 || Math.abs(sw) > 2 || res) {
                        /* ---- paint only when moving ---- */
                        this.x0 += sx * .1;
                        this.w0 += sw * .1;
                        if (this.x0 < this.parent.wh && this.x0 + this.w0 > 0) {
                            /* ---- paint only visible images ---- */
                            this.visible = true;
                            var o = this.img.style;
                            var h = this.w0 * this.r;
                            /* ---- diapo ---- */
                            o.left = Math.round(this.x0) + 'px';
                            o.bottom = Math.floor(this.parent.ht * .25) + 'px';
                            o.width = Math.round(this.w0) + 'px';
                            o.height = Math.round(h) + 'px';
                            /* ---- reflexion ---- */
                            if (this.flx) {
                                var o = this.flx.style;
                                o.left = Math.round(this.x0) + 'px';
                                o.top = Math.ceil(this.parent.ht * .75 + 1) + 'px';
                                o.width = Math.round(this.w0) + 'px';
                                o.height = Math.round(h) + 'px';
                            }
                        } else {
                            /* ---- disable invisible images ---- */
                            if (this.visible) {
                                this.visible = false;
                                this.img.style.width = '0px';
                                if (this.flx) this.flx.style.width = '0px';
                            }
                        }
                    }
                } else {
                    /* ==== image onload ==== */
                    if (this.img.complete && this.img.width) {
                        /* ---- get size image ---- */
                        this.iw = this.img.width;
                        this.ih = this.img.height;
                        this.r = this.ih / this.iw;
                        this.loaded = true;
                        /* ---- create reflexion ---- */
                        this.flx = createReflexion(this.parent.oc, this.img);
                        if (this.parent.view < 0) this.parent.view = this.N;
                        this.parent.calc();
                    }
                }
            },
            /* ==== diapo onclick ==== */
            click: function () {
                if (this.parent.view == this.N) {
                    /* ---- click on zoomed diapo ---- */
                    if (this.url) {
                        /* ---- open hyperlink ---- */
                        window.open(this.url, this.target);
                    } else {
                        /* ---- zoom in/out ---- */
                        this.z1 = this.z1 == 1 ? this.parent.zoom : 1;
                        this.parent.calc();
                    }
                } else {
                    /* ---- select diapo ---- */
                    this.parent.view = this.N;
                    this.parent.calc();
                }
                return false;
            }
        }
        /* //////////// ==== public methods ==== //////////// */
        return {
            /* ==== initialize script ==== */
            create: function (div, size, zoom, border) {
                /* ---- instanciate imageFlow ---- */
                var load = function () {
                    var loaded = false;
                    var i = instances.length;
                    while (i--) if (instances[i].oCont == div) loaded = true;
                    if (!loaded) {
                        /* ---- push new imageFlow instance ---- */
                        instances.push(
						new ImageFlow(div, size, zoom, border)
					);
                        /* ---- init script (once) ---- */
                        if (!imf.initialized) {
                            imf.initialized = true;
                            /* ---- window resize event ---- */
                            addEvent(window, 'resize', function () {
                                var i = instances.length;
                                while (i--) instances[i].resize();
                            });
                            /* ---- stop drag N drop ---- */
                            addEvent(document.getElementById(div), 'mouseout', function (e) {
                                if (!e) e = window.event;
                                var tg = e.relatedTarget || e.toElement;
                                if (tg && tg.tagName == 'HTML') {
                                    var i = instances.length;
                                    while (i--) instances[i].oc.onmousemove = null;
                                }
                                return false;
                            });
                            /* ---- set interval loop ---- */
                            setInterval(function () {
                                var i = instances.length;
                                while (i--) instances[i].run();
                            }, 16);
                        }
                    }
                }
                /* ---- window onload event ---- */
                addEvent(window, 'load', function () { load(); });
            }
        }
    } ();

    /* ==== create imageFlow ==== */
    //          div ID    , size, zoom, border
    imf.create("imageFlow", 0.15, 1.5, 10);

</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        body
        {
            background-image: url(images/bodybg.jpg);
        }
        #imageFlow {
		position: relative;
		width: 866PX;
		height: 430px;
		left: 0%;
		top: 0%;
	}
	#imageFlow .diapo 
	{
	    position: absolute;
		left: -1000px;
		cursor: pointer;
		-ms-interpolation-mode: nearest-neighbor;
	}
	#imageFlow .link {
		border: dotted #fff 1px;
		margin-left: -1px;
		margin-bottom: -1px;
	}
	#imageFlow .bank {
		visibility: hidden;
	}
	#imageFlow .text {
		position: absolute;
		left: 0px;
		width: 100%;
		bottom: 10%;
		text-align: center;
		color: #000;
		font-family: verdana, arial, Helvetica, sans-serif;
		z-index: 1000;
	}
	#imageFlow .title {
		font-size: 0.9em;
		font-weight: bold;
	}
	#imageFlow .legend {
		font-size: 0.8em;
	}
	#imageFlow .scrollbar {
		position: absolute;
		left: 10%;
		bottom: -190px;
		width: 80%;
		height: 220PX;
		z-index: 1000;
	}
	#imageFlow .track {
		position: absolute;
		left: 1%;
		width: 98%;
		height: 16px;
		filter: alpha(opacity=30);
		opacity: 0.3;
	}
	#imageFlow .arrow-left {
		position: absolute;
		left:0px;
	}
	#imageFlow .arrow-right {
		position: absolute;
		right: 0px;
	}
	#imageFlow .bar {
		position: absolute;
		height: 16px;
		left: 25px;
	}
    </style>

    <script type="text/javascript">
    $(document).ready(function(){
    tabs(".tab-hd","active",".tab-bd",0);
    });
    </script>



    <div id="main">
        <div id="new_hot">
            <div class="tab">
                <dl class="tab-hd">
                    <dt><a href="#">海洋贝瓷</a> </dt>
                  
                </dl>
                <dl class="tab-bd">
                    <dd>
                        <div class="content" style="background-image: url('images/ZuanJieContentBg.jpg');">
                              <div id="imageFlow">
		                        <div class="bank">
			                        <a rel="Product/luozuan/zuan5.jpg" title="Myselves" href="#">My identity lies in not knowing who I am</a>
			                        <a rel="Product/luozuan/ct60.jpg" title="Discoveries" href="#">...are made by not following instructions</a>
			                        <a rel="Product/luozuan/sf53.jpg" title="Nothing" href="#">...can come between us</a>
			                        <a rel="Product/luozuan/sf48.jpg" title="New life" href="#">Here you come!</a>
			                        <a rel="Product/luozuan/ct81.jpg" title="Optimists" href="#">They don't know all the facts yet</a>
			                        <a rel="Product/luozuan/ct134.jpg" title="Empathy" href="#">Emotional intimacy</a>
			                        <a rel="Product/luozuan/zuan3.jpg" title="Much work" href="#">...remains to be done before we can announce our total failure to make any progress</a>
			                        <a rel="Product/luozuan/ct75.jpg" title="System error" href="#">Errare Programma Est</a>
			                        <a rel="Product/luozuan/bl201.jpg" title="Nonexistance" href="#">There's no such thing</a>
			                        <a rel="Product/luozuan/ct137.jpg" title="Inside" href="#">I抦 now trapped, without hope of escape or rescue</a>
			                        <a rel="Product/luozuan/ct65.jpg" title="E-Slaves" href="#">The World is flat</a>
			                        <a rel="Product/luozuan/or105.jpg" title="l0v3" href="#">1 l0v3 j00 - f0r3v3r</a>
			                        <a rel="Product/luozuan/ct139.jpg" title="T minus zero" href="#">111 111 111 x 111 111 111 = 12345678987654321</a>
			                        <a rel="Product/luozuan/ct27.jpg" title="The End" href="#">...has not been written yet</a>
		                        </div>

		                        <div class="text">
			                        <div class="title">Loading</div>
			                        <div class="legend">Please wait...</div>
		                        </div>
		                        <div class="scrollbar">
			                        <img class="track" src="Product/luozuan/sb.gif" alt="">
			                        <img class="arrow-left" src="Product/luozuan/sl.gif" alt="">
			                        <img class="arrow-right" src="Product/luozuan/sr.gif" alt="">
			                        <img class="bar" src="Product/luozuan/sc.gif" alt="">
		                        </div>
                        </div>
                       </div>
                    </dd>
                </dl>
            </div>
        </div>
    </div>
</asp:Content>
