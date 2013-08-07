﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AllProductsShown.aspx.cs" Inherits="DaDa.AllProductsShown" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
	body {
		margin: 0px;
		padding: 0px;
		position: absolute;
		top: 0px;
		left: 0px;
		width: 100%;
		height: 100%;
	}
	#screen {
		position: relative;
		top: 1%;
		left: 1%;
		width: 98%;
		height: 68%;
		color: #fff;
	}
	#screen div {
		position: absolute;
		cursor: pointer;
	}
	#screen img {
		position: relative;
		width: 100%;
		height: 100%;
	}
	#screen .label {
		position: absolute;
		color: #FFF;
		background: #000;
		font-family: arial;
		white-space: no-wrap;
	}
</style>
<script type="text/javascript" src="js/dhteumeuleu.js"></script>
<script type="text/javascript">
    // ========================================================
    //            ====== Javascript Slideshow ======
    // script written by Gerard Ferrandez - December 31, 2006
    // http://www.dhteumeuleu.com/
    // ========================================================

    var diap = {
        /////////////////////////////////
        BR: 3,     // border size in px
        ZR: .75,   // zoom ratio
        SP: .1,    // speed
        /////////////////////////////////
        V: false,
        S: false,
        G: true,

        resize: function () {
            /* ==== window resize event ==== */
            diap.nw = diap.scr.offsetWidth;
            diap.nh = diap.scr.offsetHeight;
            diap.nwu = (diap.nw * diap.ZR);
            diap.nhu = (diap.nh * diap.ZR);
            diap.nwt = Math.floor((diap.nw * (1 - diap.ZR) * .5) / (diap.NX - 1)) - diap.BR;
            diap.nht = Math.floor((diap.nh * (1 - diap.ZR) * .5) / (diap.NY - 1)) - diap.BR;
            diap.rc = 255 / ((diap.nw / diap.NX) - diap.nwt);
            if (diap.N) {
                diap.setPosition();
                if (!diap.G) diap.delLabels();
            }
        },

        setPosition: function () {
            /* ==== calculate image target position  ==== */
            var k = 0;
            var y = this.S ? this.BR + Math.floor((this.NY - this.Y - 1) * (this.nht + this.BR)) : 0;
            for (var j = 0; j < this.NY; j++) {
                var x = this.S ? this.BR + Math.floor((this.NX - this.X - 1) * (this.nwt + this.BR)) : 0;
                for (var i = 0; i < this.NX; i++) {
                    var o = this.spa[k++];
                    o.y1 = y;
                    o.x1 = x;
                    o.w1 = this.S ? (o == this.S ? this.nwu - this.BR : this.nwt) : Math.ceil(this.nw / this.NX) - this.BR;
                    o.h1 = this.S ? (o == this.S ? this.nhu - this.BR : this.nht) : Math.ceil(this.nh / this.NY) - this.BR;
                    x += this.S ? ((this.X == i) ? this.nwu : this.nwt + this.BR) : Math.ceil(this.nw / this.NX);
                }
                y += this.S ? ((this.Y == j) ? this.nhu : this.nht + this.BR) : Math.ceil(this.nh / this.NY);
            }
        },

        delLabels: function () {
            /* ==== remove texts ==== */
            for (var i = 0; i < diap.N; i++) {
                var o = diap.spa[i];
                if (o.T) diap.scr.removeChild(o.T);
                o.T = false;
            }
        },

        run: function () {
            /* ==== main loop ==== */
            for (var i = 0; i < diap.N; i++) diap.spa[i].move();
            setTimeout(diap.run, 16);
        },

        init: function (container, NX, NY, path, images) {
            /* ==== initialize script ==== */
            this.scr = id(container);
            if (!this.scr || NX * NY != images.length) { alert('ID-10-T error...'); return false; }
            this.NX = NX;
            this.NY = NY;
            this.spa = {};
            this.resize();
            var k = 0;
            for (var y = 0; y < this.NY; y++) {
                for (var x = 0; x < this.NX; x++) {
                    /* ==== create HTML elements ==== */
                    var s = this.spa[k] = document.createElement('div');
                    s.img = document.createElement('img');

                    /* ==== opacity optimized function ==== */
                    s.img.setOpacity = function (alpha) {
                        if (alpha < 0) alpha = 0; else if (alpha > 100) alpha = 100;
                        if (alpha >= 0) {
                            /* ==== speed opt - remove IE filter ==== */
                            this.style.visibility = 'visible';
                            this.style.filter = '';
                            this.style.opacity = 1;
                            return 100;
                        } else if (alpha < 0) {
                            /* ==== hide image, remove opacity ==== */
                            this.style.visibility = 'hidden';
                            this.style.filter = '';
                            this.style.opacity = 0;
                            return 0;
                        }
                        if (this.filters) {
                            /* ==== IE filter ==== */
                            if (!this.filters.alpha) this.style.filter = 'alpha(opacity=' + alpha + ')';
                            else this.filters.alpha.opacity = alpha;
                            /* ==== CSS opacity ==== */
                        } else this.style.opacity = alpha * .01;
                        return alpha;
                    }
                    s.img.src = id('loading').src;
                    s.appendChild(s.img);
                    this.scr.appendChild(s);

                    /* ==== pre-load image ==== */
                    s.pre = new Image();
                    s.pre.obj = s;
                    s.pre.onload = function () { this.obj.img.src = this.src; }
                    s.pre.src = path + images[k][0];

                    /* ==== set image variables ==== */
                    s.x = x;
                    s.y = y;
                    s.x0 = x * (this.nw / this.NX) + (this.nw / this.NX) / 2;
                    s.y0 = y * (this.nh / this.NY) + (this.nh / this.NY) / 2; ;
                    s.x1 = x * (this.nw / this.NX);
                    s.y1 = y * (this.nh / this.NY);
                    s.w0 = 0;
                    s.h0 = 0;
                    s.w1 = 0;
                    s.h1 = 0;
                    s.V = 0;
                    s.t = images[k][1];
                    s.T = false;

                    /* ==== function move image ==== */
                    s.move = function () {
                        /* ==== position images ==== */
                        this.style.left = px(this.x0 += (this.x1 - this.x0) * diap.SP);
                        this.style.top = px(this.y0 += (this.y1 - this.y0) * diap.SP);
                        this.style.width = px(this.w0 += (this.w1 - this.w0) * diap.SP);
                        this.style.height = px(this.h0 += (this.h1 - this.h0) * diap.SP);
                        if (this != diap.S) {
                            /* ==== set image background color ==== */
                            if (Math.abs(this.w1 - this.w0) > 1) {
                                var c = (!diap.G && this.V > 0) ? 255 : 16 + Math.round(255 - diap.rc * (this.w0 - diap.nwt));
                                this.style.background = 'RGB('.concat(c, ',', c, ',', c, ')');
                            }
                            if (this == diap.V) {
                                /* ==== on mouseover: fade in ==== */
                                if (this.V < 100) this.img.setOpacity(this.V += 5);
                            } else {
                                /* ==== fade out ==== */
                                if (this.V >= 0 && diap.G != this) this.img.setOpacity(this.V -= 2);
                            }
                        }
                        /* ==== text effect ==== */
                        if (this.T) this.dispLabel();
                    }

                    /* ==== display text function (typewriter FX) ==== */
                    s.dispLabel = function () {
                        if (diap.G || diap.S == this) {
                            /* ==== zoomed image ==== */
                            this.T.style.left = px(this.x0);
                            this.T.style.top = px(this.y0);
                            this.T.style.width = px(this.w0);
                        } else {
                            /* ==== calculate text position ==== */
                            var xt = diap.S.x0 + this.w0 + diap.BR;
                            if (this.y == diap.Y) {
                                this.T.style.top = px(this.y0 - this.f - diap.BR);
                                if (this.y == 0) var xt = diap.S.x0;
                            } else this.T.style.top = px(this.y0 - (this.y <= diap.Y ? diap.BR : 0));
                            if (this.x > diap.X) this.T.style.left = px(diap.S.w0 + diap.S.x0 - diap.nwu * .5);
                            else this.T.style.left = px(xt);
                            if (this != diap.V) {
                                /* ==== text type out ==== */
                                this.Tp--;
                                this.T.innerHTML = this.t.substring(0, this.Tp);
                                if (this.Tp < 1) {
                                    diap.scr.removeChild(this.T);
                                    this.T = false;
                                }
                            } else {
                                if (this.Tp < this.t.length) {
                                    /* ==== text type in ==== */
                                    this.Tp++;
                                    this.T.innerHTML = this.t.substring(0, this.Tp);
                                }
                            }
                        }
                    }

                    /* ==== create text function ==== */
                    s.createLabel = function () {
                        this.T = document.createElement('div');
                        this.T.className = 'label';
                        if (!diap.G && this.x > diap.X) this.T.style.textAlign = 'right';
                        this.f = 4 + Math.round(Math.sqrt(diap.nht * 2));
                        if (this == diap.S) {
                            this.f *= 2;
                            this.T.style.background = 'none';
                            this.T.style.textAlign = 'center';
                        }
                        this.T.style.fontSize = ''.concat(this.f, 'px');
                        this.T.innerHTML = this.t;
                        this.T.style.left = px(-1000);
                        this.T.style.width = px(diap.nwu * .5);
                        this.T.style.height = px(this.f + 3);
                        this.Tp = 0;
                        diap.scr.appendChild(this.T);
                    }

                    /* ==== on mouse over event ==== */
                    s.onmouseover = function () {
                        if (diap.S != this && diap.G != this) {
                            /* ==== display image ==== */
                            this.img.setOpacity(100);
                            this.V = this.img.setOpacity(20);
                        }
                        /* ==== create text ==== */
                        if (!this.T) this.createLabel();
                        diap.V = this;
                    }

                    /* ==== on click event ==== */
                    s.onclick = function () {
                        /* ==== memorize selected image ==== */
                        diap.X = this.x;
                        diap.Y = this.y;
                        diap.V = false;
                        diap.G = false;
                        this.V = this.img.setOpacity(100);
                        diap.delLabels();
                        if (diap.S == this) {
                            /* ==== zoom out - grid mode on ==== */
                            diap.S = false;
                            diap.G = this;
                            for (var i = 0; i < diap.N; i++) diap.spa[i].createLabel();
                        } else {
                            /* ==== zoom in ==== */
                            diap.S = this;
                            this.createLabel();
                        }
                        diap.setPosition();
                    }
                    s.createLabel();
                    s.ondblclick = s.onclick;
                    s.ondrag = function () { return false; }
                    k++;
                }
            }
            this.N = NX * NY;
            /* ==== add resize event ==== */
            this.resize();
            addEvent(window, 'resize', diap.resize);
            /* ==== start main loop ==== */
            this.run();
        }
    }

    /* ==== create diaporama ==== */
    onload = function () {
        /* ==== container, X, T, path, [image.src, text] ==== */
        diap.init("screen", 6, 3, "", [
		["Product/horization/or8.jpg", "His little voodoo was a success"],
		["Product/horization/or46.jpg", "She arrived from nowhere"],
		["Product/horization/or10.jpg", "as cute as she could be"],
		["Product/horization/or4.jpg", "It was a night of full moon"],
		["Product/horization/or16.jpg", "It didn't take him anytime to fall in love"],
		["Product/horization/or9.jpg", "He had been certain of his success"],
		["Product/horization/or6.jpg", "In a few days after"],
		["Product/horization/or27.jpg", "All the tools were in place"],
		["Product/horization/or14.jpg", "The girl left a note..."],
		["Product/horization/or30.jpg", "...saying she had left home"],
		["Product/horization/or1.jpg", "揝o what抯 with the panic??"],
		["Product/horization/or2.jpg", "Tears for fears"],
		["Product/horization/or12.jpg", "A light in the dark"],
		["Product/horization/or44.jpg", "Flashes of pain and hope"],
		["Product/horization/or39.jpg", "If only we could capture..."],
		["Product/horization/or33.jpg", "...the beauty of autumn"],
        ["Product/horization/or39.jpg", "If only we could capture..."],
		["Product/horization/or33.jpg", "...the beauty of autumn"]
	]);
    }
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<script type="text/javascript">
    $(document).ready(function () {
        tabs(".tab-hd", "active", ".tab-bd", 0);
    });
    </script>
<div id="main">
    <div id="new_hot">
            <div class="tab">
                <dl class="tab-hd">
                    <dt><a href="luozhuan.aspx">海洋贝瓷</a> </dt>
                  
                </dl>
                <dl class="tab-bd">
                    <dd>
                        <div class="content" style="background-image: url('images/ZuanJieContentBg.jpg');">
                            <div id="screen"></div>
                                <img id="loading" alt="" src="Product/horization/or11.jpg" style="visibility: hidden"/>
                        </div>
                    </dd>
                </dl>
            </div>
        </div>
       </div>
</asp:Content>
