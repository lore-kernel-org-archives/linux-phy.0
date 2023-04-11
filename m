Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B9B5C76196
	for <linux-phy@archiver.kernel.org>; Tue, 11 Apr 2023 13:09:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YfPHRfPIcn2ktzjKqTkRYIgOFO5lGzh7/SkMOvTFWvk=; b=McsYlblOe5zkjb
	GQZn3jrlya0gYbcXD1+XAbnlV/H8vbnmpONV+zXiytuaBjP/X870+ksAmDVSJiAA5LLkLWN7adk+8
	KpdXJ47LarekbyyCEwsgNy2U5tQ/jKl4mc0o7ZlaL7h9s+w2yCCTGUvVUbybd0LO6YN6jLEGG+DO+
	sPsn5YYVWhasQsAVlPXxwZf0VIva7oB1IyC6R6JdF993nbYIkDqTzdorTmzojkJMegWrDU0jXeAvD
	maRxYpFq8MyDkVhrKTdReEgbIucLMUG5EKHgtvGK+jPHjx5VjKjUA8vtZL7mqk2SKgOY0TTRDr4Vl
	osIaEhjIgfLWU6s3wVew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmDky-0004Zy-02;
	Tue, 11 Apr 2023 13:09:56 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmDks-0004YW-2A;
	Tue, 11 Apr 2023 13:09:52 +0000
Received: (Authenticated sender: miquel.raynal@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 8667320007;
	Tue, 11 Apr 2023 13:09:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1681218585;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=zj1JtAKrv3GVkrzExsf9B7vpxAMSpGNgfjgQje0eTak=;
	b=oNG2Rb7etLGd3op/Iz2fmq0xokA2awaHaTUwmpMIqfWRcdiVNffJhH1OiD/NJa8U8VhbyA
	yF9MXtYH8Fxz3M+cAq/7V/oq1xoDx4mXB50I/MCViACuf5Xj/3sm+jiFSUhQyd/GFiKSU+
	MvbhXoQ5xcQFvUgIZ6glZLEM1HPSvT3ZkSE8cIw3GiRKuf3ey7u+ch+9vo/URZlNg8hBkX
	sdQ/9ZojYLUArwz1K4ERP3d5/cBFRF6/83yyqSdXppNVR0gRdgwuMipAeMDZ8IGKN7s335
	n6r/K2t/A0PaaBtBH3FUkAWJV3CrDikEbkeZlUHa/BD6XrUBmGFFsgVYyetBaQ==
Date: Tue, 11 Apr 2023 15:09:30 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Maxime Ripard <maxime@cerno.tech>, Michael Turquette
 <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Andreas
 =?UTF-8?B?RsOkcmJlcg==?= <afaerber@suse.de>, Manivannan Sadhasivam
 <mani@kernel.org>, Nicolas Ferre <nicolas.ferre@microchip.com>, Alexandre
 Belloni <alexandre.belloni@bootlin.com>, Claudiu Beznea
 <claudiu.beznea@microchip.com>, Max Filippov <jcmvbkbc@gmail.com>, Charles
 Keepax <ckeepax@opensource.cirrus.com>, Richard Fitzgerald
 <rf@opensource.cirrus.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>, Luca Ceresoli
 <luca.ceresoli@bootlin.com>, David Lechner <david@lechnology.com>, Sekhar
 Nori <nsekhar@ti.com>, Abel Vesa <abelvesa@kernel.org>, Shawn Guo
 <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
 Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Dinh Nguyen <dinguyen@kernel.org>, Peter De Schrijver
 <pdeschrijver@nvidia.com>, Prashant Gaikwad <pgaikwad@nvidia.com>, Thierry
 Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, Linus Walleij
 <linus.walleij@linaro.org>, David Airlie <airlied@gmail.com>, Daniel Vetter
 <daniel@ffwll.ch>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Alessandro Zummo <a.zummo@towertech.it>, Chen-Yu Tsai
 <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland
 <samuel@sholland.org>, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown
 <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai
 <tiwai@suse.com>, Paul Cercueil <paul@crapouillou.net>, Orson Zhai
 <orsonzhai@gmail.com>, Baolin Wang <baolin.wang@linux.alibaba.com>, Chunyan
 Zhang <zhang.lyra@gmail.com>, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, AngeloGioacchino Del Regno
 <angelogioacchino.delregno@collabora.com>,
 linux-arm-kernel@lists.infradead.org, linux-actions@lists.infradead.org,
 patches@opensource.cirrus.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-mediatek@lists.infradead.org, linux-renesas-soc@vger.kernel.org,
 linux-tegra@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-phy@lists.infradead.org, linux-rtc@vger.kernel.org,
 linux-sunxi@lists.linux.dev, alsa-devel@alsa-project.org,
 linux-mips@vger.kernel.org, Gareth Williams
 <gareth.williams.jx@renesas.com>, Herve Codina <herve.codina@bootlin.com>,
 Ralph Siemsen <ralph.siemsen@linaro.org>
Subject: Re: [PATCH v3 28/65] clk: renesas: r9a06g032: Add a determine_rate
 hook
Message-ID: <20230411150930.4fb22d7e@xps-13>
In-Reply-To: <CAMuHMdXUEOP_3zjf8nwDyHvZVG-D0AsBjnr=esKzejMMcEiLSQ@mail.gmail.com>
References: <20221018-clk-range-checks-fixes-v3-0-9a1358472d52@cerno.tech>
	<20221018-clk-range-checks-fixes-v3-28-9a1358472d52@cerno.tech>
	<CAMuHMdXUEOP_3zjf8nwDyHvZVG-D0AsBjnr=esKzejMMcEiLSQ@mail.gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230411_060950_969008_5FC5154A 
X-CRM114-Status: GOOD (  36.24  )
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

SGkgR2VlcnQgJiBNYXhpbWUsCgpnZWVydEBsaW51eC1tNjhrLm9yZyB3cm90ZSBvbiBUdWUsIDEx
IEFwciAyMDIzIDEyOjI3OjM4ICswMjAwOgoKPiBDQyBHYXJldGgsIEhlcnbDqSwgTWlxdWVsLCBS
YWxwaAo+IAo+IE9uIFR1ZSwgQXByIDQsIDIwMjMgYXQgMjo0NOKAr1BNIE1heGltZSBSaXBhcmQg
PG1heGltZUBjZXJuby50ZWNoPiB3cm90ZToKPiA+IFRoZSBSZW5lc2FzIHI5YTA2ZzAzMiBiaXRz
ZWxlY3QgY2xvY2sgaW1wbGVtZW50cyBhIG11eCB3aXRoIGEgc2V0X3BhcmVudAo+ID4gaG9vaywg
YnV0IGRvZXNuJ3QgcHJvdmlkZSBhIGRldGVybWluZV9yYXRlIGltcGxlbWVudGF0aW9uLgo+ID4K
PiA+IFRoaXMgaXMgYSBiaXQgb2RkLCBzaW5jZSBzZXRfcGFyZW50KCkgaXMgdGhlcmUgdG8sIGFz
IGl0cyBuYW1lIGltcGxpZXMsCj4gPiBjaGFuZ2UgdGhlIHBhcmVudCBvZiBhIGNsb2NrLiBIb3dl
dmVyLCB0aGUgbW9zdCBsaWtlbHkgY2FuZGlkYXRlIHRvCj4gPiB0cmlnZ2VyIHRoYXQgcGFyZW50
IGNoYW5nZSBpcyBhIGNhbGwgdG8gY2xrX3NldF9yYXRlKCksIHdpdGgKPiA+IGRldGVybWluZV9y
YXRlKCkgZmlndXJpbmcgb3V0IHdoaWNoIHBhcmVudCBpcyB0aGUgYmVzdCBzdWl0ZWQgZm9yIGEK
PiA+IGdpdmVuIHJhdGUuCj4gPgo+ID4gVGhlIG90aGVyIHRyaWdnZXIgd291bGQgYmUgYSBjYWxs
IHRvIGNsa19zZXRfcGFyZW50KCksIGJ1dCBpdCdzIGZhciBsZXNzCj4gPiB1c2VkLCBhbmQgaXQg
ZG9lc24ndCBsb29rIGxpa2UgdGhlcmUncyBhbnkgb2J2aW91cyB1c2VyIGZvciB0aGF0IGNsb2Nr
Lgo+ID4KPiA+IFNvLCB0aGUgc2V0X3BhcmVudCBob29rIGlzIGVmZmVjdGl2ZWx5IHVudXNlZCwg
cG9zc2libHkgYmVjYXVzZSBvZiBhbgo+ID4gb3ZlcnNpZ2h0LiBIb3dldmVyLCBpdCBjb3VsZCBh
bHNvIGJlIGFuIGV4cGxpY2l0IGRlY2lzaW9uIGJ5IHRoZQo+ID4gb3JpZ2luYWwgYXV0aG9yIHRv
IGF2b2lkIGFueSByZXBhcmVudGluZyBidXQgdGhyb3VnaCBhbiBleHBsaWNpdCBjYWxsIHRvCj4g
PiBjbGtfc2V0X3BhcmVudCgpLgo+ID4KPiA+IFRoZSBsYXR0ZXIgY2FzZSB3b3VsZCBiZSBlcXVp
dmFsZW50IHRvIHNldHRpbmcgdGhlIGZsYWcKPiA+IENMS19TRVRfUkFURV9OT19SRVBBUkVOVCwg
dG9nZXRoZXIgd2l0aCBzZXR0aW5nIG91ciBkZXRlcm1pbmVfcmF0ZSBob29rCj4gPiB0byBfX2Ns
a19tdXhfZGV0ZXJtaW5lX3JhdGUoKS4gSW5kZWVkLCBpZiBubyBkZXRlcm1pbmVfcmF0ZQo+ID4g
aW1wbGVtZW50YXRpb24gaXMgcHJvdmlkZWQsIGNsa19yb3VuZF9yYXRlKCkgKHRocm91Z2gKPiA+
IGNsa19jb3JlX3JvdW5kX3JhdGVfbm9sb2NrKCkpIHdpbGwgY2FsbCBpdHNlbGYgb24gdGhlIHBh
cmVudCBpZgo+ID4gQ0xLX1NFVF9SQVRFX1BBUkVOVCBpcyBzZXQsIGFuZCB3aWxsIG5vdCBjaGFu
Z2UgdGhlIGNsb2NrIHJhdGUKPiA+IG90aGVyd2lzZS4gX19jbGtfbXV4X2RldGVybWluZV9yYXRl
KCkgaGFzIHRoZSBleGFjdCBzYW1lIGJlaGF2aW9yIHdoZW4KPiA+IENMS19TRVRfUkFURV9OT19S
RVBBUkVOVCBpcyBzZXQuCj4gPgo+ID4gQW5kIGlmIGl0IHdhcyBhbiBvdmVyc2lnaHQsIHRoZW4g
d2UgYXJlIGF0IGxlYXN0IGV4cGxpY2l0IGFib3V0IG91cgo+ID4gYmVoYXZpb3Igbm93IGFuZCBp
dCBjYW4gYmUgZnVydGhlciByZWZpbmVkIGRvd24gdGhlIGxpbmUuCj4gPgo+ID4gU2lnbmVkLW9m
Zi1ieTogTWF4aW1lIFJpcGFyZCA8bWF4aW1lQGNlcm5vLnRlY2g+ICAKPiAKPiBMR1RNLCBzbwo+
IFJldmlld2VkLWJ5OiBHZWVydCBVeXR0ZXJob2V2ZW4gPGdlZXJ0K3JlbmVzYXNAZ2xpZGVyLmJl
PgoKSSBzZWFyY2hlZCBmb3IgJ3Bvc3NpYmxlIGNhbGxlcnMnLCBJIGRpZG4ndCBmaW5kIGFueSBw
bGFjZXMKd2hlcmUgdGhpcyB3b3VsZCBiZSB1c2VkIG9uIHRoZSBjb25zdW1lciBzaWRlLiBIb3dl
dmVyLCBkb3duc3RyZWFtLAp0aGVyZSBpcyBhIHJ6bjEtY2xvY2stYml0c2VsZWN0LmMgY2xvY2sg
ZHJpdmVyIHdoaWNoIHN0YXRlczoKCisgKiBUaGlzIGNsb2NrIHByb3ZpZGVyIGhhbmRsZXMgdGhl
IGNhc2Ugb2YgdGhlIFJaTjEgd2hlcmUgeW91IGhhdmUgcGVyaXBoZXJhbHMKKyAqIHRoYXQgaGF2
ZSB0d28gcG90ZW50aWFsIGNsb2NrIHNvdXJjZSBhbmQgdHdvIGdhdGVzLCBvbmUgZm9yIGVhY2gg
b2YgdGhlCisgKiBjbG9jayBzb3VyY2UgLSB0aGUgdXNlZCBjbG9jayBzb3VyY2UgKGZvciBhbGwg
c3ViIGNsb2NrcykgaXMgc2VsZWN0ZWQgYnkgYQorICogc2luZ2xlIGJpdC4KKyAqIFRoYXQgc2lu
Z2xlIGJpdCBhZmZlY3RzIGFsbCBzdWItY2xvY2tzLCBhbmQgdGhlcmVmb3JlIG5lZWRzIHRvIGNo
YW5nZSB0aGUKKyAqIGFjdGl2ZSBnYXRlIChhbmQgdHVybiB0aGUgb3RoZXJzIG9mZikgYW5kIGZv
cmNlIGEgcmVjYWxjdWxhdGlvbiBvZiB0aGUgcmF0ZXMuCgpJIGRvbid0IGtub3cgaG93IG11Y2gg
b2YgdGhpcyBmaWxlIGhhcyBiZWVuIHVwc3RyZWFtZWQgKHVuZGVyIGEKZGlmZmVyZW50IGZvcm0p
IGJ1dCB0aGlzIG1pZ2h0IHZlcnkgd2VsbCBiZSByZWxhdGVkIHRvIHRoZSBmYWN0IHRoYXQKcmVw
YXJlbnRpbmcgaW4gc29tZSBjYXNlcyB3b3VsZCBiZSBhIG1ham9yIGlzc3VlIGFuZCB0aHVzIG5l
ZWRzIHRvIGJlCmF2b2lkZWQgdW5sZXNzIGRvbmUgb24gcHVycG9zZSAoZ3Vlc3Npbmc/KS4KCk1h
eWJlIFJhbHBoIGNhbiBjb21tZW50LCBidXQgZm9yIHdoYXQgSSB1bmRlcnN0YW5kLAoKUmV2aWV3
ZWQtYnk6IE1pcXVlbCBSYXluYWwgPG1pcXVlbC5yYXluYWxAYm9vdGxpbi5jb20+Cgo+IEJ1dCBJ
IGRvIG5vdCBoYXZlIHRoZSBoYXJkd2FyZS4KPiAKPiA+IC0tLSBhL2RyaXZlcnMvY2xrL3JlbmVz
YXMvcjlhMDZnMDMyLWNsb2Nrcy5jCj4gPiArKysgYi9kcml2ZXJzL2Nsay9yZW5lc2FzL3I5YTA2
ZzAzMi1jbG9ja3MuYwo+ID4gQEAgLTExMjEsNiArMTEyMSw3IEBAIHN0YXRpYyBpbnQgcjlhMDZn
MDMyX2Nsa19tdXhfc2V0X3BhcmVudChzdHJ1Y3QgY2xrX2h3ICpodywgdTggaW5kZXgpCj4gPiAg
fQo+ID4KPiA+ICBzdGF0aWMgY29uc3Qgc3RydWN0IGNsa19vcHMgY2xrX2JpdHNlbGVjdF9vcHMg
PSB7Cj4gPiArICAgICAgIC5kZXRlcm1pbmVfcmF0ZSA9IF9fY2xrX211eF9kZXRlcm1pbmVfcmF0
ZSwKPiA+ICAgICAgICAgLmdldF9wYXJlbnQgPSByOWEwNmcwMzJfY2xrX211eF9nZXRfcGFyZW50
LAo+ID4gICAgICAgICAuc2V0X3BhcmVudCA9IHI5YTA2ZzAzMl9jbGtfbXV4X3NldF9wYXJlbnQs
Cj4gPiAgfTsKPiA+IEBAIC0xMTQ1LDcgKzExNDYsNyBAQCByOWEwNmcwMzJfcmVnaXN0ZXJfYml0
c2VsKHN0cnVjdCByOWEwNmcwMzJfcHJpdiAqY2xvY2tzLAo+ID4KPiA+ICAgICAgICAgaW5pdC5u
YW1lID0gZGVzYy0+bmFtZTsKPiA+ICAgICAgICAgaW5pdC5vcHMgPSAmY2xrX2JpdHNlbGVjdF9v
cHM7Cj4gPiAtICAgICAgIGluaXQuZmxhZ3MgPSBDTEtfU0VUX1JBVEVfUEFSRU5UOwo+ID4gKyAg
ICAgICBpbml0LmZsYWdzID0gQ0xLX1NFVF9SQVRFX1BBUkVOVCB8IENMS19TRVRfUkFURV9OT19S
RVBBUkVOVDsKPiA+ICAgICAgICAgaW5pdC5wYXJlbnRfbmFtZXMgPSBuYW1lczsKPiA+ICAgICAg
ICAgaW5pdC5udW1fcGFyZW50cyA9IDI7Cj4gPiAgCj4gCj4gR3J7b2V0amUsZWV0aW5nfXMsCj4g
Cj4gICAgICAgICAgICAgICAgICAgICAgICAgR2VlcnQKPiAKClRoYW5rcywKTWlxdcOobAoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
