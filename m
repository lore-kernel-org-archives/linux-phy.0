Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00966C7619A
	for <linux-phy@archiver.kernel.org>; Wed,  5 Apr 2023 15:43:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ygiIlE/PJSCRYZvGjf4w200G8rBWFusTnN18W3pPMzk=; b=bi8m1ITf+own81
	Mgp4Uxlz3YQJ622M6xBs0PjAQR/8GWGakRczp4fLKwJn5ZLu8r4K/CRSVanA08Q7MGpfjPbTbgJaJ
	ab9doSeVB7IKgCO+Xn7bSRCDjmbTbEiPt3TMwn8q2VljEaiDCKEEirHfrnNWFbsf+4YTpGClxY/yc
	XyG9Pl+iZfrb9LE3S5dYnI+s8nDFStifleCdfgHviAigsqwO2fUG8RCOLai8AG0BQe9cghzO8E8V3
	ZUiAfHzr6UttkLXnxmec+jdi5mgfdldpxUQh0XbmEVba5CVop0f8rY2O5yMO0ii0VOVZUs1+kdO3Q
	ti3qnUmPE2LrZQA0qjsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pk5Ic-004vej-2h;
	Wed, 05 Apr 2023 15:43:50 +0000
Received: from aposti.net ([89.234.176.197])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pk5H8-004tsL-2J;
	Wed, 05 Apr 2023 15:42:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
	s=mail; t=1680708591;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Mjb6j+bIXE7b8JKh7kXdb3mAp/fvDvyUInzyZqABl7c=;
	b=KkyZeRD8zRr9DUPi8E+yaAiJ6llkrkavOcg1hU9CiniByzzr5DJTX0SyfBAelvEuN8MeEv
	jL7uDqd+LBP5S8A6OuKPnyJCiz26onUF85KEMt1FysxEno2QjGawIYOL+G+P8JgGTbkscL
	0Btl6oFLBPglYsRqL+QJzG3n9bKa4SU=
Message-ID: <84dea45aa0a46f531d38369a31d08420dc43dfe3.camel@crapouillou.net>
Subject: Re: [PATCH v2 56/65] clk: ingenic: cgu: Switch to determine_rate
From: Paul Cercueil <paul@crapouillou.net>
To: Maxime Ripard <maxime@cerno.tech>
Cc: Aidan MacDonald <aidanmacdonald.0x0@gmail.com>, Stephen Boyd
 <sboyd@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, Chen-Yu
 Tsai <wens@csie.org>, Daniel Vetter <daniel@ffwll.ch>, Nicolas Ferre
 <nicolas.ferre@microchip.com>, Thierry Reding <thierry.reding@gmail.com>, 
 Jaroslav Kysela <perex@perex.cz>, Shawn Guo <shawnguo@kernel.org>, Fabio
 Estevam <festevam@gmail.com>, Ulf Hansson <ulf.hansson@linaro.org>, Claudiu
 Beznea <claudiu.beznea@microchip.com>, Michael Turquette
 <mturquette@baylibre.com>,  Dinh Nguyen <dinguyen@kernel.org>, Chunyan
 Zhang <zhang.lyra@gmail.com>, Manivannan Sadhasivam <mani@kernel.org>,
 Andreas =?ISO-8859-1?Q?F=E4rber?= <afaerber@suse.de>,  Jonathan Hunter
 <jonathanh@nvidia.com>, Abel Vesa <abelvesa@kernel.org>, Charles Keepax
 <ckeepax@opensource.cirrus.com>, Alessandro Zummo <a.zummo@towertech.it>, 
 Peter De Schrijver <pdeschrijver@nvidia.com>, Orson Zhai
 <orsonzhai@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Prashant Gaikwad <pgaikwad@nvidia.com>, Liam Girdwood
 <lgirdwood@gmail.com>, Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Samuel Holland <samuel@sholland.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Richard Fitzgerald <rf@opensource.cirrus.com>,
 Vinod Koul <vkoul@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,  Sekhar
 Nori <nsekhar@ti.com>, Kishon Vijay Abraham I <kishon@kernel.org>, Linus
 Walleij <linus.walleij@linaro.org>, Takashi Iwai <tiwai@suse.com>, David
 Airlie <airlied@gmail.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, Pengutronix Kernel Team
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
Date: Wed, 05 Apr 2023 17:29:47 +0200
In-Reply-To: <g24dkwtsobslw6qdvs4vbcdmk2txrlrephm5zmlff2fusrxheo@mqxrprzctymk>
References: <cp7Yh29ndlOOi1yW8KwCcpzoLPLxm1vR@localhost>
	 <20221107085417.xrsh6xy3ouwdkp4z@houat>
	 <ucJ6KSBqdPTxfxUQqLUr9C9RGiQRnY1I@localhost>
	 <20221109110045.j24vwkaq3s4yzoy3@houat>
	 <06a293adc75990ed3e297b076fc38d8a.sboyd@kernel.org>
	 <xpKMzGb1sOsucWMTlJIMzrT5KjLlZ7JP@localhost>
	 <20230324111959.frjf4neopbs67ugd@houat>
	 <rTJKpeLOBeu3eOLW5z3P5fEpcOJJLrGs@localhost>
	 <20230327192430.b2cp3yyrkzy4g4vw@penduick>
	 <1e0e8e9fe44c27e844e7e918a985704e58da2c27.camel@crapouillou.net>
	 <g24dkwtsobslw6qdvs4vbcdmk2txrlrephm5zmlff2fusrxheo@mqxrprzctymk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230405_084218_941686_94DB8071 
X-CRM114-Status: GOOD (  49.33  )
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

TGUgbWVyY3JlZGkgMDUgYXZyaWwgMjAyMyDDoCAxNjo1MCArMDIwMCwgTWF4aW1lIFJpcGFyZCBh
IMOpY3JpdMKgOgo+IE9uIFdlZCwgQXByIDA1LCAyMDIzIGF0IDAyOjU3OjI2UE0gKzAyMDAsIFBh
dWwgQ2VyY3VlaWwgd3JvdGU6Cj4gPiBMZSBsdW5kaSAyNyBtYXJzIDIwMjMgw6AgMjE6MjQgKzAy
MDAsIE1heGltZSBSaXBhcmQgYSDDqWNyaXTCoDoKPiA+ID4gT24gRnJpLCBNYXIgMjQsIDIwMjMg
YXQgMDg6NTg6NDhQTSArMDAwMCwgQWlkYW4gTWFjRG9uYWxkIHdyb3RlOgo+ID4gPiA+ID4gPiBN
eSBzdWdnZXN0aW9uOiBhZGQgYSBwZXItY2xvY2sgYml0bWFwIHRvIGtlZXAgdHJhY2sgb2YKPiA+
ID4gPiA+ID4gd2hpY2gKPiA+ID4gPiA+ID4gcGFyZW50cwo+ID4gPiA+ID4gPiBhcmUgYWxsb3dl
ZC4gQW55IG9wZXJhdGlvbiB0aGF0IHdvdWxkIHNlbGVjdCBhIHBhcmVudCBjbG9jawo+ID4gPiA+
ID4gPiBub3QKPiA+ID4gPiA+ID4gb24gdGhlCj4gPiA+ID4gPiA+IHdoaXRlbGlzdCBzaG91bGQg
ZmFpbC4gQXV0b21hdGljIHJlcGFyZW50aW5nIHNob3VsZCBvbmx5Cj4gPiA+ID4gPiA+IHNlbGVj
dAo+ID4gPiA+ID4gPiBmcm9tCj4gPiA+ID4gPiA+IGNsb2NrcyBvbiB0aGUgd2hpdGVsaXN0LiBB
bmQgd2UgbmVlZCBuZXcgRFQgYmluZGluZ3MgZm9yCj4gPiA+ID4gPiA+IGNvbnRyb2xsaW5nCj4g
PiA+ID4gPiA+IHRoZSB3aGl0ZWxpc3QsIGZvciBleGFtcGxlOgo+ID4gPiA+ID4gPiAKPiA+ID4g
PiA+ID4gwqDCoMKgIGNsb2NrLXBhcmVudHMtMCA9IDwmY2xrMT4sIDwmcGxsX2M+Owo+ID4gPiA+
ID4gPiDCoMKgwqAgY2xvY2stcGFyZW50cy0xID0gPCZjbGsyPiwgPCZwbGxfYT4sIDwmcGxsX2I+
Owo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gVGhpcyBtZWFucyB0aGF0IGNsazEgY2FuIG9ubHkg
aGF2ZSBwbGxfYyBhcyBhIHBhcmVudCwgd2hpbGUKPiA+ID4gPiA+ID4gY2xrMiBjYW4KPiA+ID4g
PiA+ID4gaGF2ZSBwbGxfYSBvciBwbGxfYiBhcyBwYXJlbnRzLiBCeSBkZWZhdWx0IGV2ZXJ5IGNs
b2NrIHdpbGwKPiA+ID4gPiA+ID4gYmUKPiA+ID4gPiA+ID4gYWJsZQo+ID4gPiA+ID4gPiB0byB1
c2UgYW55IHBhcmVudCwgc28gYSBsaXN0IGlzIG9ubHkgbmVlZGVkIGlmIHRoZSBtYWNoaW5lCj4g
PiA+ID4gPiA+IG5lZWRzIGEKPiA+ID4gPiA+ID4gbW9yZSByZXN0cmljdGl2ZSBwb2xpY3kuCj4g
PiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBhc3NpZ25lZC1jbG9jay1wYXJlbnRzIHNob3VsZCBkaXNh
YmxlIGF1dG9tYXRpYwo+ID4gPiA+ID4gPiByZXBhcmVudGluZywKPiA+ID4gPiA+ID4gYnV0IGFs
bG93Cj4gPiA+ID4gPiA+IGV4cGxpY2l0IGNsa19zZXRfcGFyZW50KCkuIFRoaXMgd2lsbCBhbGxv
dyBjbG9jayBkcml2ZXJzIHRvCj4gPiA+ID4gPiA+IHN0YXJ0IGRvaW5nCj4gPiA+ID4gPiA+IHJl
cGFyZW50aW5nIHdpdGhvdXQgYnJlYWtpbmcgb2xkIERUcy4KPiA+ID4gPiA+IAo+ID4gPiA+ID4g
SSdtIGdlbmVyYWxseSBub3QgYSBmYW4gb2YgcHV0dGluZyBhbGwgdGhlc2UgcG9saWNpZXMgaW4g
dGhlCj4gPiA+ID4gPiBkZXZpY2UKPiA+ID4gPiA+IHRyZWUuIERvIHlvdSBoYXZlIGFuIGV4YW1w
bGUgd2hlcmUgaXQgd291bGRuJ3QgYmUgcG9zc2libGUgdG8KPiA+ID4gPiA+IGRvCj4gPiA+ID4g
PiBleGFjdGx5Cj4gPiA+ID4gPiB0aGlzIGZyb20gdGhlIGRyaXZlciBpdHNlbGY/Cj4gPiA+ID4g
Cj4gPiA+ID4gSSdtIGNvbmZ1c2VkLiBXaGF0J3MgaW1wbGljaXQgaW4gdGhlIGV4YW1wbGUgaXMg
Y2xrMSBhbmQgY2xrMgo+ID4gPiA+IG1pZ2h0Cj4gPiA+ID4gaGF2ZSAqb3RoZXIqIHBvc3NpYmxl
IGNob2ljZXMgb2YgcGFyZW50IGNsb2NrIGFuZCB0aGUgZGV2aWNlCj4gPiA+ID4gdHJlZQo+ID4g
PiA+IGlzCj4gPiA+ID4gbGltaXRpbmcgd2hhdCB0aGUgT1MgaXMgYWxsb3dlZCB0byBjaG9vc2Uu
Cj4gPiA+ID4gCj4gPiA+ID4gV2h5IHdvdWxkIHlvdSBwdXQgc3VjaCBhcmJpdHJhcnkgbGltaXRh
dGlvbnMgaW50byB0aGUgZHJpdmVyPwo+ID4gPiAKPiA+ID4gV2h5IHdvdWxkIHdlIHB1dCBzdWNo
IGFyYml0cmFyeSBsaW1pdGF0aW9ucyBpbiB0aGUgZmlybXdhcmU/IEFzCj4gPiA+IHRoaXMKPiA+
ID4gZW50aXJlIHRocmVhZCBjYW4gYXR0ZXN0LCBwZW9wbGUgYXJlIGFscmVhZHkgdXNpbmcgdGhl
IGRldmljZQo+ID4gPiB0cmVlIHRvCj4gPiA+IHdvcmsgYXJvdW5kIHRoZSBsaW1pdGF0aW9ucyBv
ZiB0aGUgTGludXggZHJpdmVyLCBvciByZWR1Y2UgdGhlCj4gPiA+IGZlYXR1cmVzIG9mIExpbnV4
IGJlY2F1c2UgdGhleSBjYW4gcmVseSBvbiB0aGUgZGV2aWNlIHRyZWUuCj4gPiA+IEVpdGhlcgo+
ID4gPiB3YXksIGl0J3MgbGlua2VkIHRvIHRoZSBzdGF0ZSBvZiB0aGUgTGludXggZHJpdmVyLCBh
bmQgYW55IG90aGVyCj4gPiA+IE9TCj4gPiA+IG9yCj4gPiA+IExpbnV4IHZlcnNpb24gY291bGQg
dmVyeSB3ZWxsIGltcGxlbWVudCBzb21ldGhpbmcgbW9yZSBkeW5hbWljLgo+ID4gCj4gPiBQcm9i
YWJseSBiZWNhdXNlIGlmIHdlIGhhdmUgdG8gY2hvb3NlIGJldHdlZW4gc2V0dGluZyBwb2xpY3kg
aW4gdGhlCj4gPiBrZXJuZWwgb3IgaW4gdGhlIGZpcm13YXJlLCBpdCBpcyBhcmd1YWJseSBiZXR0
ZXIgdG8gc2V0IGl0IGluIHRoZQo+ID4gZmlybXdhcmUuCj4gCj4gSSBoYXZlIGEgdmVyeSBkaWZm
ZXJlbnQgdmlldyBvbiB0aGlzIEkgZ3Vlc3MuIEZpcm13YXJlIGlzIChtb3N0IG9mCj4gdGhlCj4g
dGltZSkgaGFyZCB0byB1cGRhdGUsIGFuZCB0aGUgcG9saWN5IGRlcGVuZCBvbiB0aGUgc3RhdGUg
b2Ygc3VwcG9ydAo+IG9mIGEKPiBnaXZlbiBPUyBzbyBpdCdzIGxpa2VseSB0byBldm9sdmUuIFRo
ZSBrZXJuZWwgaXMgdGhlIGJlc3QgcGxhY2UgdG8gbWUKPiB0bwo+IHB1dCB0aGF0IGtpbmQgb2Yg
cG9saWN5LiBXaHkgZG8geW91IHRoaW5rIGRpZmZlcmVudGx5PwoKQmVjYXVzZSB0aGUgY2xvY2tz
IGNvbmZpZ3VyYXRpb24gY2FuIGJlIGJvYXJkLXNwZWNpZmljLiBBbmQgeW91IGRvbid0CnJlYWxs
eSB3YW50IGJvYXJkLXNwZWNpZmljIHN0dWZmIGluIHRoZSBkcml2ZXIuCgpJZiB3ZSB0YWtlIHRo
ZSBJbmdlbmljIEpaNDc3MCBTb0MgYXMgZXhhbXBsZSwgb24gb25lIGJvYXJkIHdlIHBhcmVudApl
dmVyeXRoaW5nIHdlIGNhbiB0byB0aGUgUExMMSBjbG9jayBhbmQgc2V0IGl0IHRvIDQzMiBNSHog
KHRoZSBsZWFzdApjb21tb24gbXVsdGlwbGUpLiBUaGVuIHRoZSBQTEwwICh3aGljaCBkcml2ZXMg
dGhlIEREUiBhbmQgQ1BVIGNsb2NrcykKY2FuIGJlIHVwZGF0ZWQgdG8gb3ZlcmNsb2NrL3VuZGVy
Y2xvY2sgdGhlIENQVSBhbmQgUkFNLgoKU28gc2hvdWxkIHRoYXQgYmUgaGFyZGNvZGVkIGluIHRo
ZSBkcml2ZXI/IFdlbGwsIGZvciBhIGRpZmZlcmVudCBib2FyZCwKZm9yIHdoaWNoIG92ZXJjbG9j
ayBpcyBub3QgcmVhbGx5IG5lZWRlZCwgaXQncyBiZXR0ZXIgdG8gcGFyZW50CmV2ZXJ5dGhpbmcg
dG8gUExMMCBzbyB0aGF0IFBMTDEgY2FuIGJlIHNodXQgZG93biB0byBzYXZlIHBvd2VyLiBTbyB3
aGF0CnBvbGljeSBzaG91bGQgYmUgaGFyZGNvZGVkIGluIHRoZSBkcml2ZXI/Cgo+IAo+ID4gRXNw
ZWNpYWxseSB3aGVuIHRhbGtpbmcgYWJvdXQgY2xvY2tzLCBhcyB0aGUgZmlybXdhcmUgaXMgYWxy
ZWFkeQo+ID4gdGhlCj4gPiBvbmUgcHJvZ3JhbW1pbmcgdGhlIGJvb3QgY2xvY2tzLgo+IAo+IEkn
bSBub3Qgc3VyZSB3aGF0IHlvdXIgcG9pbnQgaXMgdGhlcmUuIEkgZG9uJ3QgdGhpbmsgSSBldmVy
IHNhdyBhCj4gZmlybXdhcmUgZ2V0dGluZyB0aGUgY2xvY2tzIHJpZ2h0IGZvciBldmVyeSBwb3Nz
aWJsZSBzY2VuYXJpbyBvbiBhCj4gZ2l2ZW4KPiBwbGF0Zm9ybS4gQW5kIGlmIGl0IHdhcyBpbmRl
ZWQgdGhlIGNhc2UsIHRoZW4gd2Ugd291bGRuJ3QgZXZlbiBhCj4ga2VybmVsCj4gZHJpdmVyLgoK
TXkgcG9pbnQgaXMgdGhhdCB0aGVyZSBpcyBhbHJlYWR5IHBvbGljeSBpbiBob3cgdGhlIGZpcm13
YXJlIHNldHMgdXAKdGhlIGhhcmR3YXJlOyBhbmQgbW9zdCBvZnRlbiB0aGFuIG5vdCwgdGhlIGtl
cm5lbCBkcml2ZXIgd29uJ3QgY2hhbmdlCnRoYXQgKGUuZy4geW91J3JlIHByb2JhYmx5IG5vdCBn
b2luZyB0byB0b3VjaCB0aGUgRERSIGNsb2NrKS4gSXQncwpiZXR0ZXIgdG8gaGF2ZSBhbGwgcG9s
aWN5IGluIHRoZSBmaXJtd2FyZSB0aGVuLCBpbnN0ZWFkIG9mIGhhdmluZyBzb21lCmluIHRoZSBm
aXJtd2FyZSwgYW5kIHNvbWUgaW4gdGhlIGtlcm5lbCBkcml2ZXIuCgpDaGVlcnMsCi1QYXVsCgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
