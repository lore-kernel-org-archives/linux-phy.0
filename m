Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1BD4C76188
	for <linux-phy@archiver.kernel.org>; Wed,  5 Apr 2023 13:04:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wBFEC2+GSJLoJLSB3uViPgqHaNM83Ts2aCsyJd/T+kc=; b=XyH1DBN70aNTX8
	NPCGL4N5U6oySBdsvudj73wkiZzH9G0sZnTj+ToTIVT+tpWEAbTVQ/w5zUCmscsFCJ8lOfkat+yT7
	akwxvb6qgaj7KQknnI0OV6OHk4ssQTkcP4uPo7JahSIXB8IfbyKt9ZPJTNQg0I1u8fKo9YX552vpc
	BOPql/7OB2owILLoRspAn/NTW7Nux2y5rLHx/EkuOlrxUS7/LlMQtKSglMASJCq86Mti1j9qUd9Oy
	dDyz4XX0jelhjaE+NsjbJ0b4DTlS6zJSkOi6zT36kqMvs8bRzEk4p+BwFEgWmiC05eQNYlB37j47p
	dZ1ndO33efs05mxq/8oQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pk2oC-004TH8-0p;
	Wed, 05 Apr 2023 13:04:16 +0000
Received: from aposti.net ([89.234.176.197])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pk2o6-004TEN-3B;
	Wed, 05 Apr 2023 13:04:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
	s=mail; t=1680699848;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=YkbuvCGQOWFY1W5hX/uG2RveqynQ+85wv2M8PGFZ7vc=;
	b=3mEi9sd14RtSilWugED3F/f1NHSVZz/2xsgSbVUMYtohN4iyRWPQuN/0cj7BtjXjYQTI9X
	a6aEynlck8IN4/RYN4tKNy+VG1wAYjPHKb2w1UKNamaQkeW8Ds6o9+R3WX/pE03V9N6Ndu
	0nvl10itS1x2Cw7b1X3xuVSiT51gMLU=
Message-ID: <3c1c42baf7d764bf6429b470f534fd9ec46ddedd.camel@crapouillou.net>
Subject: Re: [PATCH v3 56/65] clk: ingenic: cgu: Switch to determine_rate
From: Paul Cercueil <paul@crapouillou.net>
To: Maxime Ripard <maxime@cerno.tech>, Michael Turquette
 <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Andreas
 =?ISO-8859-1?Q?F=E4rber?= <afaerber@suse.de>, Manivannan Sadhasivam
 <mani@kernel.org>, Nicolas Ferre <nicolas.ferre@microchip.com>, Alexandre
 Belloni <alexandre.belloni@bootlin.com>,  Claudiu Beznea
 <claudiu.beznea@microchip.com>, Max Filippov <jcmvbkbc@gmail.com>, Charles
 Keepax <ckeepax@opensource.cirrus.com>, Richard Fitzgerald
 <rf@opensource.cirrus.com>,  Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>, Luca Ceresoli
 <luca.ceresoli@bootlin.com>, David Lechner <david@lechnology.com>, Sekhar
 Nori <nsekhar@ti.com>, Abel Vesa <abelvesa@kernel.org>, Shawn Guo
 <shawnguo@kernel.org>,  Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
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
 <tiwai@suse.com>, Orson Zhai <orsonzhai@gmail.com>, Baolin Wang
 <baolin.wang@linux.alibaba.com>, Chunyan Zhang <zhang.lyra@gmail.com>
Cc: linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 linux-arm-kernel@lists.infradead.org,  linux-actions@lists.infradead.org,
 patches@opensource.cirrus.com,  linux-stm32@st-md-mailman.stormreply.com,
 linux-mediatek@lists.infradead.org,  linux-renesas-soc@vger.kernel.org,
 linux-tegra@vger.kernel.org,  dri-devel@lists.freedesktop.org,
 linux-phy@lists.infradead.org,  linux-rtc@vger.kernel.org,
 linux-sunxi@lists.linux.dev,  alsa-devel@alsa-project.org,
 linux-mips@vger.kernel.org
Date: Wed, 05 Apr 2023 15:04:05 +0200
In-Reply-To: <20221018-clk-range-checks-fixes-v3-56-9a1358472d52@cerno.tech>
References: <20221018-clk-range-checks-fixes-v3-0-9a1358472d52@cerno.tech>
	 <20221018-clk-range-checks-fixes-v3-56-9a1358472d52@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230405_060411_184660_A347EC0A 
X-CRM114-Status: GOOD (  27.16  )
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

SGkgTWF4aW1lLAoKTGUgbWFyZGkgMDQgYXZyaWwgMjAyMyDDoCAxMjoxMSArMDIwMCwgTWF4aW1l
IFJpcGFyZCBhIMOpY3JpdMKgOgo+IFRoZSBJbmdlbmljIENHVSBjbG9ja3MgaW1wbGVtZW50cyBh
IG11eCB3aXRoIGEgc2V0X3BhcmVudCBob29rLCBidXQKPiBkb2Vzbid0IHByb3ZpZGUgYSBkZXRl
cm1pbmVfcmF0ZSBpbXBsZW1lbnRhdGlvbi4KPiAKPiBUaGlzIGlzIGEgYml0IG9kZCwgc2luY2Ug
c2V0X3BhcmVudCgpIGlzIHRoZXJlIHRvLCBhcyBpdHMgbmFtZQo+IGltcGxpZXMsCj4gY2hhbmdl
IHRoZSBwYXJlbnQgb2YgYSBjbG9jay4gSG93ZXZlciwgdGhlIG1vc3QgbGlrZWx5IGNhbmRpZGF0
ZSB0bwo+IHRyaWdnZXIgdGhhdCBwYXJlbnQgY2hhbmdlIGlzIGEgY2FsbCB0byBjbGtfc2V0X3Jh
dGUoKSwgd2l0aAo+IGRldGVybWluZV9yYXRlKCkgZmlndXJpbmcgb3V0IHdoaWNoIHBhcmVudCBp
cyB0aGUgYmVzdCBzdWl0ZWQgZm9yIGEKPiBnaXZlbiByYXRlLgo+IAo+IFRoZSBvdGhlciB0cmln
Z2VyIHdvdWxkIGJlIGEgY2FsbCB0byBjbGtfc2V0X3BhcmVudCgpLCBidXQgaXQncyBmYXIKPiBs
ZXNzCj4gdXNlZCwgYW5kIGl0IGRvZXNuJ3QgbG9vayBsaWtlIHRoZXJlJ3MgYW55IG9idmlvdXMg
dXNlciBmb3IgdGhhdAo+IGNsb2NrLgo+IAo+IFNvLCB0aGUgc2V0X3BhcmVudCBob29rIGlzIGVm
ZmVjdGl2ZWx5IHVudXNlZCwgcG9zc2libHkgYmVjYXVzZSBvZiBhbgo+IG92ZXJzaWdodC4gSG93
ZXZlciwgaXQgY291bGQgYWxzbyBiZSBhbiBleHBsaWNpdCBkZWNpc2lvbiBieSB0aGUKPiBvcmln
aW5hbCBhdXRob3IgdG8gYXZvaWQgYW55IHJlcGFyZW50aW5nIGJ1dCB0aHJvdWdoIGFuIGV4cGxp
Y2l0IGNhbGwKPiB0bwo+IGNsa19zZXRfcGFyZW50KCkuCgpBcyBJIHNhaWQgaW4gdGhlIHYyIChJ
SVJDKSwgY2xrX3NldF9wYXJlbnQoKSBpcyB1c2VkIHdoZW4gcmUtcGFyZW50aW5nCmZyb20gdGhl
IGRldmljZSB0cmVlLgoKPiAKPiBUaGUgZHJpdmVyIGRvZXMgaW1wbGVtZW50IHJvdW5kX3JhdGUo
KSB0aG91Z2gsIHdoaWNoIG1lYW5zIHRoYXQgd2UKPiBjYW4KPiBjaGFuZ2UgdGhlIHJhdGUgb2Yg
dGhlIGNsb2NrLCBidXQgd2Ugd2lsbCBuZXZlciBnZXQgdG8gY2hhbmdlIHRoZQo+IHBhcmVudC4K
PiAKPiBIb3dldmVyLCBJdCdzIGhhcmQgdG8gdGVsbCB3aGV0aGVyIGl0J3MgYmVlbiBkb25lIG9u
IHB1cnBvc2Ugb3Igbm90Lgo+IAo+IFNpbmNlIHdlJ2xsIHN0YXJ0IG1hbmRhdGluZyBhIGRldGVy
bWluZV9yYXRlKCkgaW1wbGVtZW50YXRpb24sIGxldCdzCj4gY29udmVydCB0aGUgcm91bmRfcmF0
ZSgpIGltcGxlbWVudGF0aW9uIHRvIGEgZGV0ZXJtaW5lX3JhdGUoKSwgd2hpY2gKPiB3aWxsIGFs
c28gbWFrZSB0aGUgY3VycmVudCBiZWhhdmlvciBleHBsaWNpdC4gQW5kIGlmIGl0IHdhcyBhbgo+
IG92ZXJzaWdodCwgdGhlIGNsb2NrIGJlaGF2aW91ciBjYW4gYmUgYWRqdXN0ZWQgbGF0ZXIgb24u
CgpTbyBqdXN0IHRvIGJlIHN1cmUsIHRoaXMgcGF0Y2ggd29uJ3QgbWFrZSBjbGtfc2V0X3JhdGUo
KSBhdXRvbWF0aWNhbGx5CnN3aXRjaCBwYXJlbnRzLCByaWdodD8KCkFsbG93aW5nIGF1dG9tYXRp
YyByZS1wYXJlbnRpbmcgc291bmRzIGxpa2UgYSBodWdlIGNhbiBvZiB3b3Jtcy4uLgoKQ2hlZXJz
LAotUGF1bAoKPiAKPiBTaWduZWQtb2ZmLWJ5OiBNYXhpbWUgUmlwYXJkIDxtYXhpbWVAY2Vybm8u
dGVjaD4KPiAtLS0KPiDCoGRyaXZlcnMvY2xrL2luZ2VuaWMvY2d1LmMgfCAxNSArKysrKysrKy0t
LS0tLS0KPiDCoDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0p
Cj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xrL2luZ2VuaWMvY2d1LmMgYi9kcml2ZXJzL2Ns
ay9pbmdlbmljL2NndS5jCj4gaW5kZXggMWY3YmEzMGY1YTFiLi4wYzljODM0NGFkMTEgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9jbGsvaW5nZW5pYy9jZ3UuYwo+ICsrKyBiL2RyaXZlcnMvY2xrL2lu
Z2VuaWMvY2d1LmMKPiBAQCAtNDkxLDIyICs0OTEsMjMgQEAgaW5nZW5pY19jbGtfY2FsY19kaXYo
c3RydWN0IGNsa19odyAqaHcsCj4gwqDCoMKgwqDCoMKgwqDCoHJldHVybiBkaXY7Cj4gwqB9Cj4g
wqAKPiAtc3RhdGljIGxvbmcKPiAtaW5nZW5pY19jbGtfcm91bmRfcmF0ZShzdHJ1Y3QgY2xrX2h3
ICpodywgdW5zaWduZWQgbG9uZyByZXFfcmF0ZSwKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHVuc2lnbmVkIGxvbmcgKnBhcmVudF9yYXRlKQo+ICtzdGF0aWMg
aW50IGluZ2VuaWNfY2xrX2RldGVybWluZV9yYXRlKHN0cnVjdCBjbGtfaHcgKmh3LAo+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgc3RydWN0IGNsa19yYXRlX3JlcXVlc3QgKnJlcSkKPiDCoHsKPiDCoMKgwqDC
oMKgwqDCoMKgc3RydWN0IGluZ2VuaWNfY2xrICppbmdlbmljX2NsayA9IHRvX2luZ2VuaWNfY2xr
KGh3KTsKPiDCoMKgwqDCoMKgwqDCoMKgY29uc3Qgc3RydWN0IGluZ2VuaWNfY2d1X2Nsa19pbmZv
ICpjbGtfaW5mbyA9Cj4gdG9fY2xrX2luZm8oaW5nZW5pY19jbGspOwo+IMKgwqDCoMKgwqDCoMKg
wqB1bnNpZ25lZCBpbnQgZGl2ID0gMTsKPiDCoAo+IMKgwqDCoMKgwqDCoMKgwqBpZiAoY2xrX2lu
Zm8tPnR5cGUgJiBDR1VfQ0xLX0RJVikKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
ZGl2ID0gaW5nZW5pY19jbGtfY2FsY19kaXYoaHcsIGNsa19pbmZvLAo+ICpwYXJlbnRfcmF0ZSwg
cmVxX3JhdGUpOwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkaXYgPSBpbmdlbmlj
X2Nsa19jYWxjX2RpdihodywgY2xrX2luZm8sIHJlcS0KPiA+YmVzdF9wYXJlbnRfcmF0ZSwKPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXEtPnJhdGUpOwo+IMKgwqDCoMKgwqDCoMKgwqBl
bHNlIGlmIChjbGtfaW5mby0+dHlwZSAmIENHVV9DTEtfRklYRElWKQo+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgZGl2ID0gY2xrX2luZm8tPmZpeGRpdi5kaXY7Cj4gwqDCoMKgwqDC
oMKgwqDCoGVsc2UgaWYgKGNsa19od19jYW5fc2V0X3JhdGVfcGFyZW50KGh3KSkKPiAtwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgKnBhcmVudF9yYXRlID0gcmVxX3JhdGU7Cj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJlcS0+YmVzdF9wYXJlbnRfcmF0ZSA9IHJlcS0+cmF0
ZTsKPiDCoAo+IC3CoMKgwqDCoMKgwqDCoHJldHVybiBESVZfUk9VTkRfVVAoKnBhcmVudF9yYXRl
LCBkaXYpOwo+ICvCoMKgwqDCoMKgwqDCoHJlcS0+cmF0ZSA9IERJVl9ST1VORF9VUChyZXEtPmJl
c3RfcGFyZW50X3JhdGUsIGRpdik7Cj4gK8KgwqDCoMKgwqDCoMKgcmV0dXJuIDA7Cj4gwqB9Cj4g
wqAKPiDCoHN0YXRpYyBpbmxpbmUgaW50IGluZ2VuaWNfY2xrX2NoZWNrX3N0YWJsZShzdHJ1Y3Qg
aW5nZW5pY19jZ3UgKmNndSwKPiBAQCAtNjI2LDcgKzYyNyw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1
Y3QgY2xrX29wcyBpbmdlbmljX2Nsa19vcHMgPSB7Cj4gwqDCoMKgwqDCoMKgwqDCoC5zZXRfcGFy
ZW50ID0gaW5nZW5pY19jbGtfc2V0X3BhcmVudCwKPiDCoAo+IMKgwqDCoMKgwqDCoMKgwqAucmVj
YWxjX3JhdGUgPSBpbmdlbmljX2Nsa19yZWNhbGNfcmF0ZSwKPiAtwqDCoMKgwqDCoMKgwqAucm91
bmRfcmF0ZSA9IGluZ2VuaWNfY2xrX3JvdW5kX3JhdGUsCj4gK8KgwqDCoMKgwqDCoMKgLmRldGVy
bWluZV9yYXRlID0gaW5nZW5pY19jbGtfZGV0ZXJtaW5lX3JhdGUsCj4gwqDCoMKgwqDCoMKgwqDC
oC5zZXRfcmF0ZSA9IGluZ2VuaWNfY2xrX3NldF9yYXRlLAo+IMKgCj4gwqDCoMKgwqDCoMKgwqDC
oC5lbmFibGUgPSBpbmdlbmljX2Nsa19lbmFibGUsCj4gCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
