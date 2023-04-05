Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66E4CC76188
	for <linux-phy@archiver.kernel.org>; Wed,  5 Apr 2023 12:57:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qa+exgpJxndSf4SVYB2aIAZJG7S0Iz1vx6J2rrw8DxM=; b=VAYQaklZdpBXAx
	oEmQlzKBX7FC5Z776k8YzRt60e5FidwfBkpC1ZVfM9aNqnraMd1fclrqOlmRZmGI68G3k1Pgfhvfr
	AxiO4tgMXgamo4Ze2yIdnmrszO5UwBr2ogz6zP4fAmhip3hgGGscwysaHkj9fEbQ9JApeYGn3XwfL
	rqw8qsiUKJWigOUpS9W/tJyHYp9ujX3Dh24Sp02UeESTKMtRqsZ3mytRYQNTC8tydvsV0IT5XiXXp
	fVClcECZTSZVkf3Wj9XCBy4MBKoV3ml+WbJjS78FZwLG0VZ0Uwh7ch5xhK7A5xxtatTY4KHntTgxE
	GA2iV9EBGntO0ix3VZMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pk2hs-004SLO-0D;
	Wed, 05 Apr 2023 12:57:44 +0000
Received: from aposti.net ([89.234.176.197])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pk2hn-004SI0-1i;
	Wed, 05 Apr 2023 12:57:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
	s=mail; t=1680699450;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Mq/p4txhSsRLR5xVgrA62YXfgD49tU+mOTycAeKgsHg=;
	b=Mb98f9ufodGaozAOY4xYrOH4ki7sxYY/vAA0bNDznfkO1jY7oQ7vUoy9gBV18sQyg7Fqkp
	4iw1OtIZgkWKHd7enKxNHs2560FyoXBFO6izP6fR7+5aCxwEgm0s0Qni1/6h8kIbFM1q0N
	AxvQ9vdC4gf6sPGfRYLz7iOkrkLShI8=
Message-ID: <1e0e8e9fe44c27e844e7e918a985704e58da2c27.camel@crapouillou.net>
Subject: Re: [PATCH v2 56/65] clk: ingenic: cgu: Switch to determine_rate
From: Paul Cercueil <paul@crapouillou.net>
To: Maxime Ripard <maxime@cerno.tech>, Aidan MacDonald
	 <aidanmacdonald.0x0@gmail.com>
Cc: Stephen Boyd <sboyd@kernel.org>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>,  Chen-Yu Tsai <wens@csie.org>, Daniel Vetter
 <daniel@ffwll.ch>, Nicolas Ferre <nicolas.ferre@microchip.com>, Thierry
 Reding <thierry.reding@gmail.com>,  Jaroslav Kysela <perex@perex.cz>, Shawn
 Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>, Ulf Hansson
 <ulf.hansson@linaro.org>, Claudiu Beznea <claudiu.beznea@microchip.com>,
 Michael Turquette <mturquette@baylibre.com>,  Dinh Nguyen
 <dinguyen@kernel.org>, Chunyan Zhang <zhang.lyra@gmail.com>, Manivannan
 Sadhasivam <mani@kernel.org>, Andreas =?ISO-8859-1?Q?F=E4rber?=
 <afaerber@suse.de>,  Jonathan Hunter <jonathanh@nvidia.com>, Abel Vesa
 <abelvesa@kernel.org>, Charles Keepax <ckeepax@opensource.cirrus.com>,
 Alessandro Zummo <a.zummo@towertech.it>,  Peter De Schrijver
 <pdeschrijver@nvidia.com>, Orson Zhai <orsonzhai@gmail.com>, Alexandre
 Torgue <alexandre.torgue@foss.st.com>, Prashant Gaikwad
 <pgaikwad@nvidia.com>, Liam Girdwood <lgirdwood@gmail.com>, Alexandre
 Belloni <alexandre.belloni@bootlin.com>, Samuel Holland
 <samuel@sholland.org>, Matthias Brugger <matthias.bgg@gmail.com>, Richard
 Fitzgerald <rf@opensource.cirrus.com>, Vinod Koul <vkoul@kernel.org>, NXP
 Linux Team <linux-imx@nxp.com>,  Sekhar Nori <nsekhar@ti.com>, Kishon Vijay
 Abraham I <kishon@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Takashi Iwai <tiwai@suse.com>, David Airlie <airlied@gmail.com>, Luca
 Ceresoli <luca.ceresoli@bootlin.com>, Jernej Skrabec
 <jernej.skrabec@gmail.com>, Pengutronix Kernel Team
 <kernel@pengutronix.de>,  Baolin Wang <baolin.wang@linux.alibaba.com>,
 David Lechner <david@lechnology.com>, Sascha Hauer
 <s.hauer@pengutronix.de>, Mark Brown <broonie@kernel.org>, Max Filippov
 <jcmvbkbc@gmail.com>, Geert Uytterhoeven <geert+renesas@glider.be>, 
 linux-stm32@st-md-mailman.stormreply.com, alsa-devel@alsa-project.org, 
 linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org, 
 linux-mips@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
 linux-actions@lists.infradead.org, linux-clk@vger.kernel.org, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 patches@opensource.cirrus.com, linux-tegra@vger.kernel.org, 
 linux-rtc@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org
Date: Wed, 05 Apr 2023 14:57:26 +0200
In-Reply-To: <20230327192430.b2cp3yyrkzy4g4vw@penduick>
References: <80VTKR.CE8RVN8M3ZYK3@crapouillou.net>
	 <20221104145946.orsyrhiqvypisl5j@houat>
	 <cp7Yh29ndlOOi1yW8KwCcpzoLPLxm1vR@localhost>
	 <20221107085417.xrsh6xy3ouwdkp4z@houat>
	 <ucJ6KSBqdPTxfxUQqLUr9C9RGiQRnY1I@localhost>
	 <20221109110045.j24vwkaq3s4yzoy3@houat>
	 <06a293adc75990ed3e297b076fc38d8a.sboyd@kernel.org>
	 <xpKMzGb1sOsucWMTlJIMzrT5KjLlZ7JP@localhost>
	 <20230324111959.frjf4neopbs67ugd@houat>
	 <rTJKpeLOBeu3eOLW5z3P5fEpcOJJLrGs@localhost>
	 <20230327192430.b2cp3yyrkzy4g4vw@penduick>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230405_055739_741624_B9697753 
X-CRM114-Status: GOOD (  41.35  )
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

SGkgTWF4aW1lLAoKTGUgbHVuZGkgMjcgbWFycyAyMDIzIMOgIDIxOjI0ICswMjAwLCBNYXhpbWUg
UmlwYXJkIGEgw6ljcml0wqA6Cj4gT24gRnJpLCBNYXIgMjQsIDIwMjMgYXQgMDg6NTg6NDhQTSAr
MDAwMCwgQWlkYW4gTWFjRG9uYWxkIHdyb3RlOgo+ID4gPiA+IE15IHN1Z2dlc3Rpb246IGFkZCBh
IHBlci1jbG9jayBiaXRtYXAgdG8ga2VlcCB0cmFjayBvZiB3aGljaAo+ID4gPiA+IHBhcmVudHMK
PiA+ID4gPiBhcmUgYWxsb3dlZC4gQW55IG9wZXJhdGlvbiB0aGF0IHdvdWxkIHNlbGVjdCBhIHBh
cmVudCBjbG9jayBub3QKPiA+ID4gPiBvbiB0aGUKPiA+ID4gPiB3aGl0ZWxpc3Qgc2hvdWxkIGZh
aWwuIEF1dG9tYXRpYyByZXBhcmVudGluZyBzaG91bGQgb25seSBzZWxlY3QKPiA+ID4gPiBmcm9t
Cj4gPiA+ID4gY2xvY2tzIG9uIHRoZSB3aGl0ZWxpc3QuIEFuZCB3ZSBuZWVkIG5ldyBEVCBiaW5k
aW5ncyBmb3IKPiA+ID4gPiBjb250cm9sbGluZwo+ID4gPiA+IHRoZSB3aGl0ZWxpc3QsIGZvciBl
eGFtcGxlOgo+ID4gPiA+IAo+ID4gPiA+IMKgwqDCoCBjbG9jay1wYXJlbnRzLTAgPSA8JmNsazE+
LCA8JnBsbF9jPjsKPiA+ID4gPiDCoMKgwqAgY2xvY2stcGFyZW50cy0xID0gPCZjbGsyPiwgPCZw
bGxfYT4sIDwmcGxsX2I+Owo+ID4gPiA+IAo+ID4gPiA+IFRoaXMgbWVhbnMgdGhhdCBjbGsxIGNh
biBvbmx5IGhhdmUgcGxsX2MgYXMgYSBwYXJlbnQsIHdoaWxlCj4gPiA+ID4gY2xrMiBjYW4KPiA+
ID4gPiBoYXZlIHBsbF9hIG9yIHBsbF9iIGFzIHBhcmVudHMuIEJ5IGRlZmF1bHQgZXZlcnkgY2xv
Y2sgd2lsbCBiZQo+ID4gPiA+IGFibGUKPiA+ID4gPiB0byB1c2UgYW55IHBhcmVudCwgc28gYSBs
aXN0IGlzIG9ubHkgbmVlZGVkIGlmIHRoZSBtYWNoaW5lCj4gPiA+ID4gbmVlZHMgYQo+ID4gPiA+
IG1vcmUgcmVzdHJpY3RpdmUgcG9saWN5Lgo+ID4gPiA+IAo+ID4gPiA+IGFzc2lnbmVkLWNsb2Nr
LXBhcmVudHMgc2hvdWxkIGRpc2FibGUgYXV0b21hdGljIHJlcGFyZW50aW5nLAo+ID4gPiA+IGJ1
dCBhbGxvdwo+ID4gPiA+IGV4cGxpY2l0IGNsa19zZXRfcGFyZW50KCkuIFRoaXMgd2lsbCBhbGxv
dyBjbG9jayBkcml2ZXJzIHRvCj4gPiA+ID4gc3RhcnQgZG9pbmcKPiA+ID4gPiByZXBhcmVudGlu
ZyB3aXRob3V0IGJyZWFraW5nIG9sZCBEVHMuCj4gPiA+IAo+ID4gPiBJJ20gZ2VuZXJhbGx5IG5v
dCBhIGZhbiBvZiBwdXR0aW5nIGFsbCB0aGVzZSBwb2xpY2llcyBpbiB0aGUKPiA+ID4gZGV2aWNl
Cj4gPiA+IHRyZWUuIERvIHlvdSBoYXZlIGFuIGV4YW1wbGUgd2hlcmUgaXQgd291bGRuJ3QgYmUg
cG9zc2libGUgdG8gZG8KPiA+ID4gZXhhY3RseQo+ID4gPiB0aGlzIGZyb20gdGhlIGRyaXZlciBp
dHNlbGY/Cj4gPiAKPiA+IEknbSBjb25mdXNlZC4gV2hhdCdzIGltcGxpY2l0IGluIHRoZSBleGFt
cGxlIGlzIGNsazEgYW5kIGNsazIgbWlnaHQKPiA+IGhhdmUgKm90aGVyKiBwb3NzaWJsZSBjaG9p
Y2VzIG9mIHBhcmVudCBjbG9jayBhbmQgdGhlIGRldmljZSB0cmVlCj4gPiBpcwo+ID4gbGltaXRp
bmcgd2hhdCB0aGUgT1MgaXMgYWxsb3dlZCB0byBjaG9vc2UuCj4gPiAKPiA+IFdoeSB3b3VsZCB5
b3UgcHV0IHN1Y2ggYXJiaXRyYXJ5IGxpbWl0YXRpb25zIGludG8gdGhlIGRyaXZlcj8KPiAKPiBX
aHkgd291bGQgd2UgcHV0IHN1Y2ggYXJiaXRyYXJ5IGxpbWl0YXRpb25zIGluIHRoZSBmaXJtd2Fy
ZT8gQXMgdGhpcwo+IGVudGlyZSB0aHJlYWQgY2FuIGF0dGVzdCwgcGVvcGxlIGFyZSBhbHJlYWR5
IHVzaW5nIHRoZSBkZXZpY2UgdHJlZSB0bwo+IHdvcmsgYXJvdW5kIHRoZSBsaW1pdGF0aW9ucyBv
ZiB0aGUgTGludXggZHJpdmVyLCBvciByZWR1Y2UgdGhlCj4gZmVhdHVyZXMgb2YgTGludXggYmVj
YXVzZSB0aGV5IGNhbiByZWx5IG9uIHRoZSBkZXZpY2UgdHJlZS4gRWl0aGVyCj4gd2F5LCBpdCdz
IGxpbmtlZCB0byB0aGUgc3RhdGUgb2YgdGhlIExpbnV4IGRyaXZlciwgYW5kIGFueSBvdGhlciBP
Uwo+IG9yCj4gTGludXggdmVyc2lvbiBjb3VsZCB2ZXJ5IHdlbGwgaW1wbGVtZW50IHNvbWV0aGlu
ZyBtb3JlIGR5bmFtaWMuCgpQcm9iYWJseSBiZWNhdXNlIGlmIHdlIGhhdmUgdG8gY2hvb3NlIGJl
dHdlZW4gc2V0dGluZyBwb2xpY3kgaW4gdGhlCmtlcm5lbCBvciBpbiB0aGUgZmlybXdhcmUsIGl0
IGlzIGFyZ3VhYmx5IGJldHRlciB0byBzZXQgaXQgaW4gdGhlCmZpcm13YXJlLgoKRXNwZWNpYWxs
eSB3aGVuIHRhbGtpbmcgYWJvdXQgY2xvY2tzLCBhcyB0aGUgZmlybXdhcmUgaXMgYWxyZWFkeSB0
aGUKb25lIHByb2dyYW1taW5nIHRoZSBib290IGNsb2Nrcy4KCkNoZWVycywKLVBhdWwKCj4gPiBU
aGV5IHdvdWxkIGJlIGRpZmZlcmVudCBmcm9tIG1hY2hpbmUgdG8gbWFjaGluZSwgdW5sZXNzIHRo
ZSBjbG9jawo+ID4gdHJlZSBpcyBzbyBzaW1wbGUgdGhlcmUgaXMgb25seSAqb25lKiBtZWFuaW5n
ZnVsIHdheSB0byBjb25maWd1cmUKPiA+IGl0Lgo+IAo+IElmIHdlIGxvb2sgYXQgdGhlIGRldmlj
ZSB0cmVlcyB3ZSBoYXZlIGluLXRyZWUsIG1vc3Qgb2YgdGhlIHVzZXJzIG9mCj4gYXNzaWduZWQt
Y2xvY2tzIGFyZSB0aGUgc2FtZSBmcm9tIG9uZSBib2FyZCB0byBhbm90aGVyLgo+IAo+ID4gTW9z
dCBTb0NzIGFyZSBjb21wbGljYXRlZCBlbm91Z2ggdGhhdCB0aGVyZSB3aWxsIGJlIHRyYWRlb2Zm
cwo+ID4gZGVwZW5kaW5nIG9uIHdoYXQgcGVyaXBoZXJhbHMgeW91IGFyZSB1c2luZyAodHlwaWNh
bGx5IGEgc2luZ2xlCj4gPiBtYWNoaW5lIHdpbGwgbm90IHVzZSAqZXZlcnkqIHBlcmlwaGVyYWwg
ZGV2aWNlIHByb3ZpZGVkIGJ5IHRoZQo+ID4gU29DKS4KPiAKPiBXZSBhbHJlYWR5IGhhdmUgQVBJ
cyB0byBsb2NrIHBhcmVudHMgb3IgcmF0ZXMgb24gYSBnaXZlbiBjbG9jayBmcm9tCj4gdGhlIGNv
bnN1bWVyLiBJdCdzIGZhciBzdXBlcmlvciAoZmVhdHVyZS13aXNlKSB0aGFuIHdoYXQgdGhlIGRl
dmljZQo+IHRyZWUgd2lsbCBldmVyIG9mZmVyIGJlY2F1c2UgaXQncyBjb2RlLCBhbmQgaXQgZGVw
ZW5kcyBvbiB0aGUgdXNhZ2UKPiBhbHJlYWR5IHNpbmNlIGFuIHVudXNlZCBkcml2ZXIgd29uJ3Qg
cHJvYmUuCj4gCj4gTWF4aW1lCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcGh5Cg==
