Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00093E7E0C0
	for <linux-phy@archiver.kernel.org>; Mon,  9 Feb 2026 10:17:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qZbBXJYFOFih5qc2ZwcRIa0CuWgqOTcruHijlrPaG3k=; b=MAioMXhorqrhyU
	mYCYQKkuFeby9B5fXSdfYm9ISHERrc/hMm3BA9z5bZwCq0tgdx7+V2hTDG40OW1uYTNjdQZnDAEv3
	LKqR+NPJUn517PvvlHeQzq0yBsFF9556hzNBojRgSqmBs+V4SVr1rtclVfiOJlnB5OEmSAqfsLZa7
	SSbKgKJdHqdazGgJw+7LYXnMT/kPDQAtNnJZ2x3rovb40+fq31LqGDqjTfGW0KBphSgw5/rOf8cM9
	mQDn4efW4L6o+n5Gb4iVoThilL67V7bqKRz8uEaIW6zM9s/AAAHuDzdX/KCzrboCGJ/SQBo4luzHO
	dkHWgGB+D3SF2KaVb+Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpOKw-0000000FESg-37RT;
	Mon, 09 Feb 2026 10:17:46 +0000
Received: from mail-vk1-f178.google.com ([209.85.221.178])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpOKu-0000000FEQh-2SKM
	for linux-phy@lists.infradead.org;
	Mon, 09 Feb 2026 10:17:45 +0000
Received: by mail-vk1-f178.google.com with SMTP id 71dfb90a1353d-566360cab02so3108591e0c.2
        for <linux-phy@lists.infradead.org>; Mon, 09 Feb 2026 02:17:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770632263; x=1771237063;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=55b+49cOY521wvVXvsz0WcOQjNDu8cxcjrZIHfMxzy4=;
        b=hLFhGr8WIaUudVza4InnK4lfJFuktnyTmUzXCN+am01FiJKpwr1bvmkFBaBJRYWFpm
         I8XcYKBAkGTs2xqNWS0KaDZTgt4KNzwn/jXCo0at2RTrefvvNQtaQ/gPaYN9fKARwREC
         JQ7L88L8JA8M1cfBKgoS+RmR3o6AJrBK8l2iiUXFyReJ1gXDzFfmidQQ7vTYZdWB6Rb/
         ud48GHDynd9knUEiViC8nisyNKbkEmXFfgN7MVQ26XZNNHBbLOJNhOfCtaQhzl3qxhOa
         +LVKITSyPMRVYxnnOw9HD+n7DgLRlP7kFJL54f3NBmN6gVNWtbvQGL3/WcnW62ged+2g
         uUIA==
X-Forwarded-Encrypted: i=1; AJvYcCXlZLORvcQ5140H6Dtzk6Y4PgezHBqGP2XoWLrKIDBAWUtDrwJnlXv87CYqEI4G+I0YH4DUS231obk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw3LkVqd7CQx0Ad0TZterSzf33ei+Qk0fRtK2GdNMImebf32fE5
	3uGOSrPPWuF7LkUD/VqtIcJSS6C0cL2Dw1xoIndO3oHWLhwmIucUTdtLjQt4/F4l
X-Gm-Gg: AZuq6aI9VNUsllUCG9bfdIXQojTDpGE2tVAcgQflQJ+HvGAmAp/037EMrY8mq9az+c2
	aGPn5R3N11uv+Fq4WZ/XVU2eT5wuZ5EP08hNtW6zUrDroLZvW1YHV1UmZoeKRtknPtMyexZVw5g
	S33WNQUUBaNfizZ94E9QWjglULkaGXcsvNrGr17eM0hWanw/Xy5uoGkfSKYE2pRj+hj1Gb5zMqq
	i5MGS1Srg4MCF36CvgK+NJ43up5WTZPuRUpEE/+NHbd78AotLQC0UEvuiSd53Xw1nmQrwans+ci
	e8/XulX1dm12MbivfLmH6vJgY/wwrVJ8C1IHpsfRe+FPwuQEEy+R+gI6Bd9l9OxOBVz3vPtBbrq
	Bb36FoTotuwACC1n69LzUV4yI7C1wxRt6HDAVp2h3QbSsaGF9DKfT7HbiT8I9l/BtkHz+oSYFxe
	2w6uw4yUqFczLVOTLrobTwDpwbw5anufpZegYOKtP878wLiZxPj7be
X-Received: by 2002:a05:6123:1:b0:567:2b94:2e6c with SMTP id 71dfb90a1353d-5672b9433e1mr438184e0c.11.1770632262789;
        Mon, 09 Feb 2026 02:17:42 -0800 (PST)
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com. [209.85.221.179])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56707401d88sm3884032e0c.14.2026.02.09.02.17.38
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Feb 2026 02:17:40 -0800 (PST)
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-566360cab02so3108503e0c.2
        for <linux-phy@lists.infradead.org>; Mon, 09 Feb 2026 02:17:38 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUDI1XXoV5xjOE2v0znI2gfDzjowulJoCSg4S4gNh5ZbaEt1Fgtbn2KZl9RCtAZsR4kQq2KPBl+nDg=@lists.infradead.org
X-Received: by 2002:a05:6122:3c54:b0:566:3d03:8e1d with SMTP id
 71dfb90a1353d-56705febb0fmr2935090e0c.17.1770632257982; Mon, 09 Feb 2026
 02:17:37 -0800 (PST)
MIME-Version: 1.0
References: <20260203-rz-sdio-mux-v8-0-024ea405863e@solid-run.com>
 <20260203-rz-sdio-mux-v8-3-024ea405863e@solid-run.com> <b7dcb374-b79c-4e9f-ac30-2f507127cfb3@solid-run.com>
 <CAMuHMdU01vwif4H6H-cYUfW0Y56fN6Anp9F4Ru7q3fveNqqoXA@mail.gmail.com> <39f3891c-c05a-4e10-9ad4-ab3cbc6fa70e@solid-run.com>
In-Reply-To: <39f3891c-c05a-4e10-9ad4-ab3cbc6fa70e@solid-run.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 9 Feb 2026 11:17:27 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVbi=2puhk84k+FCDXqkQ9jFsy0rsseQiFCF8i=KsR1OQ@mail.gmail.com>
X-Gm-Features: AZwV_QizeLChl5bqEs0QtuubG3nlVKZbEpUJtWLc1m5RmCDOEU_VrUSeQPEZi-k
Message-ID: <CAMuHMdVbi=2puhk84k+FCDXqkQ9jFsy0rsseQiFCF8i=KsR1OQ@mail.gmail.com>
Subject: Re: [PATCH v8 3/7] mux: add help text for MULTIPLEXER config option
To: Josua Mayer <josua@solid-run.com>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol <mailhol@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Peter Rosin <peda@axentia.se>, Aaro Koskinen <aaro.koskinen@iki.fi>, 
	Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, 
	Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, 
	Janusz Krzysztofik <jmkrzyszt@gmail.com>, Vignesh R <vigneshr@ti.com>, 
	Andi Shyti <andi.shyti@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Yazan Shhady <yazan.shhady@solid-run.com>, Jon Nettleton <jon@solid-run.com>, 
	Mikhail Anikin <mikhail.anikin@solid-run.com>, 
	"linux-can@vger.kernel.org" <linux-can@vger.kernel.org>, 
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-omap@vger.kernel.org" <linux-omap@vger.kernel.org>, 
	"linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>, 
	"linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_021744_651676_8EBBC55D 
X-CRM114-Status: GOOD (  29.46  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

SGkgSm9zdWEsCgpPbiBNb24sIDkgRmViIDIwMjYgYXQgMTE6MTIsIEpvc3VhIE1heWVyIDxqb3N1
YUBzb2xpZC1ydW4uY29tPiB3cm90ZToKPiBPbiAwOS8wMi8yMDI2IDEwOjA2LCBHZWVydCBVeXR0
ZXJob2V2ZW4gd3JvdGU6Cj4gPiBPbiBTdW4sIDggRmViIDIwMjYgYXQgMTY6MTYsIEpvc3VhIE1h
eWVyIDxqb3N1YUBzb2xpZC1ydW4uY29tPiB3cm90ZToKPiA+PiBPbiAwMy8wMi8yMDI2IDE1OjAx
LCBKb3N1YSBNYXllciB3cm90ZToKPiA+Pj4gQWRkIHByb21wdCBhbmQgaGVscCB0ZXh0IGZvciBD
T05GSUdfTVVMVElQTEVYRVIgdG8gYWxsb3cgZW5hYmxpbmcgdGhpcwo+ID4+PiBvcHRpb24gdGhv
cnVnaCB0aGUga2VybmVsIGNvbmZpZ3VyYXRpb24gd2l0aG91dCBleHBsaWNpdCAic2VsZWN0IiBk
cml2ZXIKPiA+Pj4gZGVwZW5kZW5jaWVzLgo+ID4+Pgo+ID4+PiBTZWxlY3QgaXQgYnkgZGVmYXVs
dCB3aGVuIENPTVBJTEVfVEVTVCBpcyBzZXQgZm9yIGJldHRlciBjb3ZlcmFnZS4KPiA+Pj4KPiA+
Pj4gU2lnbmVkLW9mZi1ieTogSm9zdWEgTWF5ZXIgPGpvc3VhQHNvbGlkLXJ1bi5jb20+Cj4gPj4+
IC0tLQo+ID4+PiAgICBkcml2ZXJzL211eC9LY29uZmlnIHwgOCArKysrKysrLQo+ID4+PiAgICAx
IGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gPj4+Cj4gPj4+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL211eC9LY29uZmlnIGIvZHJpdmVycy9tdXgvS2NvbmZpZwo+
ID4+PiBpbmRleCBjNjgxMzJlMzgxMzguLmUzMWM0NjgyMGJkZiAxMDA2NDQKPiA+Pj4gLS0tIGEv
ZHJpdmVycy9tdXgvS2NvbmZpZwo+ID4+PiArKysgYi9kcml2ZXJzL211eC9LY29uZmlnCj4gPj4+
IEBAIC00LDcgKzQsMTMgQEAKPiA+Pj4gICAgIwo+ID4+Pgo+ID4+PiAgICBjb25maWcgTVVMVElQ
TEVYRVIKPiA+Pj4gLSAgICAgdHJpc3RhdGUKPiA+Pj4gKyAgICAgdHJpc3RhdGUgIkdlbmVyaWMg
TXVsdGlwbGV4ZXIgU3VwcG9ydCIgaWYgQ09NUElMRV9URVNUCj4gPj4gVGhpcyBkaWRuJ3QgZG8g
d2hhdCBJIHRob3VnaHQgaXQgd291bGQuCj4gPj4gSXQgd2FzIG15IGludGVudGlvbiB0byBhbGxv
dyBlbmFibGluZyB0aGlzIHRocm91Z2ggbWVudWNvbmZpZyAvIC5jb25maWcuCj4gPj4KPiA+PiBX
aXRoIHRoZSBzeW50YXggYWJvdmUgbWVudWNvbmZpZyBzaG93czoKPiA+Pgo+ID4+IOKUgiBTeW1i
b2w6IE1VTFRJUExFWEVSIFs9bl0KPiA+PiDilIIgVHlwZSAgOiB0cmlzdGF0ZQo+ID4+IOKUgiBE
ZWZpbmVkIGF0IGRyaXZlcnMvbXV4L0tjb25maWc6Ngo+ID4+IOKUgiAgIFByb21wdDogR2VuZXJp
YyBNdWx0aXBsZXhlciBTdXBwb3J0Cj4gPj4g4pSCICAgVmlzaWJsZSBpZjogQ09NUElMRV9URVNU
IFs9bl0KPiA+Pgo+ID4+IFRoaXMgbWVhbnMgaXQgY2Fubm90IGJlIHNlbGVjdGVkLgo+ID4gTG9v
a3MgbGlrZSB5b3UgaGF2ZW4ndCBlbmFibGVkIENPTVBJTEVfVEVTVCBmaXJzdD8KPiBDb3JyZWN0
Lgo+IEJ1dCBDT05GSUdfTVVMVElQTEVYRVIgc2hvdWxkIGJlIHZpc2libGUgYWx3YXlzLAo+IG5v
dCBqdXN0IHdoZW4gQ09NUElMRV9URVNUIGlzIHNldC4KCldoeSBzaG91bGQgaXQgYWx3YXlzIGJl
IHZpc2libGU/IEFsbCB1c2VycyBzZWxlY3QgaXQ/Cgo+ID4+IEluc3RlYWQgSSAodGhpbmsgSSkg
c2hvdWxkIHVzZQo+ID4+IGRlZmF1bHQgbSBpZiBDT01QSUxFX1RFU1QKPiA+IE5vLCBtZXJlbHkg
ZW5hYmxpbmcgQ09NUElMRV9URVNUIG11c3Qgbm90IGVuYWJsZSBhZGRpdGlvbmFsCj4gPiBmdW5j
dGlvbmFsaXR5Lgo+ID4KPiA+PiBTaW5jZSBteSBwYXRjaC1zZXQgYnJva2UgeDg2XzY0IGFsbG1v
ZGNvbmZpZyBhbmQgZmFpbGVkIG1lcmdlIGludG8KPiA+PiBsaW51eC1uZXh0LAo+ID4+IHRoaXMg
cHJlc2VudHMgYW4gb3Bwb3J0dW5pdHkgdG8gY2hhbmdlIHRoZSBhYm92ZSBhcyB3ZWxsIHdpdGgg
djkuCj4gPiBVbGYgaGFzIGFscmVhZHkgYXBwbGllZCB0aGlzIHNlcmllcyB0byBtbWMvbmV4dC4K
PiBXaGF0IHdvdWxkIGJlIHRoZSBwcm9jZXNzIHRvIGZpeCB0aGUgYnVpbGQgZXJyb3IgZm9yIHg4
Nl82NCBhbGxtb2Rjb25maWcKPiBub3c/CgpJbmNyZW1lbnRhbCBwYXRjaGVzLCBjZnIuIFVsZidz
IHJlc3BvbnNlIHRvIFtQQVRDSCB2OSAwLzddLgoKR3J7b2V0amUsZWV0aW5nfXMsCgogICAgICAg
ICAgICAgICAgICAgICAgICBHZWVydAoKLS0KR2VlcnQgVXl0dGVyaG9ldmVuIC0tIFRoZXJlJ3Mg
bG90cyBvZiBMaW51eCBiZXlvbmQgaWEzMiAtLSBnZWVydEBsaW51eC1tNjhrLm9yZwoKSW4gcGVy
c29uYWwgY29udmVyc2F0aW9ucyB3aXRoIHRlY2huaWNhbCBwZW9wbGUsIEkgY2FsbCBteXNlbGYg
YSBoYWNrZXIuIEJ1dAp3aGVuIEknbSB0YWxraW5nIHRvIGpvdXJuYWxpc3RzIEkganVzdCBzYXkg
InByb2dyYW1tZXIiIG9yIHNvbWV0aGluZyBsaWtlIHRoYXQuCiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgLS0gTGludXMgVG9ydmFsZHMKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
