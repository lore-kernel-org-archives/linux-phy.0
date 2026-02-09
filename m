Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B9ABE7C706
	for <linux-phy@archiver.kernel.org>; Mon,  9 Feb 2026 08:13:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NZ+1yScczsZhCbgU2A53uneUel2Rd3Ily6FZqrh+EsU=; b=uMjOJbhrnTM6nk
	l14li7RqMmqcjt1dcHHW1Hte4iCtKqDhWxwoZOlCPScgFDtqvgZRsTN1TwdJR8c9mrpxMjsXm9u+B
	zdIy+0u1cLeAbZTaDZHJbxl/ha2VE/20oq1qcj4Y/WOgkye85tWkalK/nbq78JP3resKc8kEQvtKg
	BlzOQVOCXW5Fm2shsKfeSAfzGB6ta3f1IvssoimaYU0UInX/BURbClburRvk/klfXy51z+Fau6nhM
	4aRl/RISNZq6sK5q+qFb7SKVOyzS2WNSyTmz1zwVE2gE2tW2XxsYunbn+mhYVFzEyPX36dCa67qPY
	mRMTtubEJQjyZeXEwM7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpMOD-0000000EzRH-3wdk;
	Mon, 09 Feb 2026 08:13:01 +0000
Received: from mail-qv1-f48.google.com ([209.85.219.48])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpMOA-0000000EzQr-3Dim
	for linux-phy@lists.infradead.org;
	Mon, 09 Feb 2026 08:13:00 +0000
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-896fb37d1f0so15427686d6.2
        for <linux-phy@lists.infradead.org>; Mon, 09 Feb 2026 00:12:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770624777; x=1771229577;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=l9pK4QYIZutXAE3AMWeCiy3lF4Ku+2UbgC78kdie5tY=;
        b=Ay/jMznt7SLzyM1wPuuZ/XKpLG3WOK1EaiZD1mLZ41zg0Xr8qSOEOiYiZsw5kn0YoM
         AJumLDVMdU0kZugA3O1hUPZMGm7iI9oneuLXsEAO97l9CGx0JOwDepbhhDzKSLr5PF8o
         YpkmRzi1a6vvjhdAm5kZPySdwfJ7xzr/tgzQQ8UJtYfesZGAwr5lAAT9wxYtpOB5c+0F
         hyLaz1+LcFTbYRYEvITSyZIevJByNlXdaRw4NxNZAg835TMzd4MNnMN2mdvmt7F/KBlu
         XIbV/QB83dogvhhuTbYnv9vmw/A01cgGO//zpoVg8/Leg/CFYUaSwgzmMI+EmAO5rh6o
         HVxw==
X-Forwarded-Encrypted: i=1; AJvYcCWQ7cMceHkhdTXC7jI3fw8teqrB8Z+bgItqGQBtATy9MhQU+GXvQ1dtAjUQ6q5rIXvwYmZT1PZJ/No=@lists.infradead.org
X-Gm-Message-State: AOJu0YwN6ls1wWaoH6aK/1T++brRNNnr1yWxyOldl6Z0t1SZVSDVNjOt
	4FiJpvOnhCUfAF0GCGJ2Wwkt2Og7lKinCnrVs4ZFmlI7CS955K4gAlJhvibKVPXk
X-Gm-Gg: AZuq6aIm+sSzWpCxs+qE4BXKxW+s2SIycvDmNAJAvOFTKLrkIZkKwKsufgOZsolsoql
	8WmB9RPUydksi+IV4Qcz8NvOFOM4/xM52K5Um1DGRODKH5Reld2qfr6i2SrZec4Z20gm2hxIsso
	k790orqytK9T0EhrOf1SUtJFut1xvj8WpHEm7Vy0uXAkjmsJZBU1kq652ZGi98qyXdFKPF+pv3W
	lypoCIsgHhX3o4wM9o9QlxNE0BJ2k7+rDqSA8AXk6Ry2Ub8tiK/l0ic5LW8VyFphI05Thu8bjoR
	nYLirQ1o9nOPIZ761Qf5OoVqSwB5yODM0wqJL7/KAspbh6PFVeB3sWiuQ/xWDdTYHP0rQWjdDXu
	ltCLXcbJZKM+JOMg9Q2C9E/WXQBX/n5VnLGRcVpGrEJCg8L22ZxPD2GNxgmwerTuUFV8EOipQ4S
	old7iN66OF8Z5Hpibzg0PkFAYFpjU8Sw3NcS+0imhDn7XsPT1y
X-Received: by 2002:a05:6214:2269:b0:893:348e:4126 with SMTP id 6a1803df08f44-8953cd9e9cbmr171306566d6.61.1770624776912;
        Mon, 09 Feb 2026 00:12:56 -0800 (PST)
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com. [209.85.219.44])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8970404b049sm9645406d6.10.2026.02.09.00.12.56
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Feb 2026 00:12:56 -0800 (PST)
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-8946e0884afso55197966d6.1
        for <linux-phy@lists.infradead.org>; Mon, 09 Feb 2026 00:12:56 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUWq5Mlp+YB4kK5fhVGrZYbTJJv/83mU6AICE5ZhIJ9y+l1VQ2KN7qNuAZo8F/zlAZOoZ1IvEtAKZY=@lists.infradead.org
X-Received: by 2002:a05:6102:3747:b0:5f8:e2d3:c463 with SMTP id
 ada2fe7eead31-5fae8a3b31bmr2934943137.3.1770624379360; Mon, 09 Feb 2026
 00:06:19 -0800 (PST)
MIME-Version: 1.0
References: <20260203-rz-sdio-mux-v8-0-024ea405863e@solid-run.com>
 <20260203-rz-sdio-mux-v8-3-024ea405863e@solid-run.com> <b7dcb374-b79c-4e9f-ac30-2f507127cfb3@solid-run.com>
In-Reply-To: <b7dcb374-b79c-4e9f-ac30-2f507127cfb3@solid-run.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 9 Feb 2026 09:06:08 +0100
X-Gmail-Original-Message-ID: <CAMuHMdU01vwif4H6H-cYUfW0Y56fN6Anp9F4Ru7q3fveNqqoXA@mail.gmail.com>
X-Gm-Features: AZwV_QiiqRuDaFts73-z5beOOIXm-WRqeTDAQV4zcAAegTI5YGKcuRUZfqXMUrE
Message-ID: <CAMuHMdU01vwif4H6H-cYUfW0Y56fN6Anp9F4Ru7q3fveNqqoXA@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20260209_001259_693615_A7725322 
X-CRM114-Status: GOOD (  24.64  )
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

SGkgSm9zdWEsCgpPbiBTdW4sIDggRmViIDIwMjYgYXQgMTY6MTYsIEpvc3VhIE1heWVyIDxqb3N1
YUBzb2xpZC1ydW4uY29tPiB3cm90ZToKPiBPbiAwMy8wMi8yMDI2IDE1OjAxLCBKb3N1YSBNYXll
ciB3cm90ZToKPiA+IEFkZCBwcm9tcHQgYW5kIGhlbHAgdGV4dCBmb3IgQ09ORklHX01VTFRJUExF
WEVSIHRvIGFsbG93IGVuYWJsaW5nIHRoaXMKPiA+IG9wdGlvbiB0aG9ydWdoIHRoZSBrZXJuZWwg
Y29uZmlndXJhdGlvbiB3aXRob3V0IGV4cGxpY2l0ICJzZWxlY3QiIGRyaXZlcgo+ID4gZGVwZW5k
ZW5jaWVzLgo+ID4KPiA+IFNlbGVjdCBpdCBieSBkZWZhdWx0IHdoZW4gQ09NUElMRV9URVNUIGlz
IHNldCBmb3IgYmV0dGVyIGNvdmVyYWdlLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IEpvc3VhIE1h
eWVyIDxqb3N1YUBzb2xpZC1ydW4uY29tPgo+ID4gLS0tCj4gPiAgIGRyaXZlcnMvbXV4L0tjb25m
aWcgfCA4ICsrKysrKystCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDEg
ZGVsZXRpb24oLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tdXgvS2NvbmZpZyBiL2Ry
aXZlcnMvbXV4L0tjb25maWcKPiA+IGluZGV4IGM2ODEzMmUzODEzOC4uZTMxYzQ2ODIwYmRmIDEw
MDY0NAo+ID4gLS0tIGEvZHJpdmVycy9tdXgvS2NvbmZpZwo+ID4gKysrIGIvZHJpdmVycy9tdXgv
S2NvbmZpZwo+ID4gQEAgLTQsNyArNCwxMyBAQAo+ID4gICAjCj4gPgo+ID4gICBjb25maWcgTVVM
VElQTEVYRVIKPiA+IC0gICAgIHRyaXN0YXRlCj4gPiArICAgICB0cmlzdGF0ZSAiR2VuZXJpYyBN
dWx0aXBsZXhlciBTdXBwb3J0IiBpZiBDT01QSUxFX1RFU1QKPgo+IFRoaXMgZGlkbid0IGRvIHdo
YXQgSSB0aG91Z2h0IGl0IHdvdWxkLgo+IEl0IHdhcyBteSBpbnRlbnRpb24gdG8gYWxsb3cgZW5h
YmxpbmcgdGhpcyB0aHJvdWdoIG1lbnVjb25maWcgLyAuY29uZmlnLgo+Cj4gV2l0aCB0aGUgc3lu
dGF4IGFib3ZlIG1lbnVjb25maWcgc2hvd3M6Cj4KPiDilIIgU3ltYm9sOiBNVUxUSVBMRVhFUiBb
PW5dCj4g4pSCIFR5cGUgIDogdHJpc3RhdGUKPiDilIIgRGVmaW5lZCBhdCBkcml2ZXJzL211eC9L
Y29uZmlnOjYKPiDilIIgICBQcm9tcHQ6IEdlbmVyaWMgTXVsdGlwbGV4ZXIgU3VwcG9ydAo+IOKU
giAgIFZpc2libGUgaWY6IENPTVBJTEVfVEVTVCBbPW5dCj4KPiBUaGlzIG1lYW5zIGl0IGNhbm5v
dCBiZSBzZWxlY3RlZC4KCkxvb2tzIGxpa2UgeW91IGhhdmVuJ3QgZW5hYmxlZCBDT01QSUxFX1RF
U1QgZmlyc3Q/Cgo+IEluc3RlYWQgSSAodGhpbmsgSSkgc2hvdWxkIHVzZQo+IGRlZmF1bHQgbSBp
ZiBDT01QSUxFX1RFU1QKCk5vLCBtZXJlbHkgZW5hYmxpbmcgQ09NUElMRV9URVNUIG11c3Qgbm90
IGVuYWJsZSBhZGRpdGlvbmFsCmZ1bmN0aW9uYWxpdHkuCgo+IFNpbmNlIG15IHBhdGNoLXNldCBi
cm9rZSB4ODZfNjQgYWxsbW9kY29uZmlnIGFuZCBmYWlsZWQgbWVyZ2UgaW50bwo+IGxpbnV4LW5l
eHQsCj4gdGhpcyBwcmVzZW50cyBhbiBvcHBvcnR1bml0eSB0byBjaGFuZ2UgdGhlIGFib3ZlIGFz
IHdlbGwgd2l0aCB2OS4KClVsZiBoYXMgYWxyZWFkeSBhcHBsaWVkIHRoaXMgc2VyaWVzIHRvIG1t
Yy9uZXh0LgoKR3J7b2V0amUsZWV0aW5nfXMsCgogICAgICAgICAgICAgICAgICAgICAgICBHZWVy
dAoKLS0gCkdlZXJ0IFV5dHRlcmhvZXZlbiAtLSBUaGVyZSdzIGxvdHMgb2YgTGludXggYmV5b25k
IGlhMzIgLS0gZ2VlcnRAbGludXgtbTY4ay5vcmcKCkluIHBlcnNvbmFsIGNvbnZlcnNhdGlvbnMg
d2l0aCB0ZWNobmljYWwgcGVvcGxlLCBJIGNhbGwgbXlzZWxmIGEgaGFja2VyLiBCdXQKd2hlbiBJ
J20gdGFsa2luZyB0byBqb3VybmFsaXN0cyBJIGp1c3Qgc2F5ICJwcm9ncmFtbWVyIiBvciBzb21l
dGhpbmcgbGlrZSB0aGF0LgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC0tIExpbnVz
IFRvcnZhbGRzCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
