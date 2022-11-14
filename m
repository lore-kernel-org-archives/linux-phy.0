Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C7DBC4332F
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 09:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XVt29RAuy0o+ifXxWO8LyVyhsKMOfbiwcqeVL6BqIXs=; b=Y5K3zqM4tvr5PF
	k3+39ANEWjRGngICvJiqtb3f/t8N+2PUaULd4RKypUXTnHet8tF7Pmoh1n/aT+jwcjz9Wasa4Cb4W
	x1WXSB+h9v3bCZ4Gv8/uX4a3KF7O5CIOGIirpKVCxhIb5GHM1qvIti1bXZmaim+o4FVgs2fCcx2qO
	FHf/8tQ91k/SZhvPw1OgeShXj3ROXUEcT+RP+gyfbdLZKCLnRqcWL5EMaGNTKmRtKxM21DQgcPIkH
	teDfWMKDWKJKypKZbAYT++cnooaXpRtr78QAau9pJ5PEqgxQVUIohR6LFvX8b8V1lRef02ni51ydW
	YYR97vyR9BcmnkE8BB5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouVUR-00H6gs-0w; Mon, 14 Nov 2022 09:10:51 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouVPc-00H3SA-Br; Mon, 14 Nov 2022 09:05:54 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 0AC7E60F67;
	Mon, 14 Nov 2022 09:05:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2AA65C433C1;
	Mon, 14 Nov 2022 09:05:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668416750;
	bh=D7WS1/Iq9HsSGiJfZeeNpWeUbfN2wCTKHRwR1waF5b8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gu23KWX+hkd2VrW8L8cgRL+RvzQoNmHr4ZHYqyx7b9ggw62j+4gl+srj7mMWbYEWO
	 eMq9AeoWeTXuHN/JCWdPJOC4s9/SfymP7ivydCT3Rc5lzvj0XxUfCGvOXg+FUovve3
	 mBjFDbEU8fbv5pZjeBcZG4yoTG+UTWC2w0hMhrdGaf5jiuivlIjmg6M0icdu4BayDd
	 QORZ6I5Y6XZL3p7KDrZaQgns3WiyBQD5S5uJ7AJ3isJBuf/JmKGDVf410NdJ4z5Krb
	 lm/rhmS+2/v3szQ2Sg6geE8bZDNcFgYVQt+IzZj3PeuYYzaH8viYNnTeheDKRc95zq
	 VsYSZrpR3L72Q==
Date: Mon, 14 Nov 2022 09:05:34 +0000
From: Lee Jones <lee@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Maxime Ripard <maxime@cerno.tech>,
	Stephen Boyd <sboyd@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Chen-Yu Tsai <wens@csie.org>, Daniel Vetter <daniel@ffwll.ch>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jaroslav Kysela <perex@perex.cz>, Shawn Guo <shawnguo@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Claudiu Beznea <claudiu.beznea@microchip.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Dinh Nguyen <dinguyen@kernel.org>,
	Paul Cercueil <paul@crapouillou.net>,
	Chunyan Zhang <zhang.lyra@gmail.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Abel Vesa <abelvesa@kernel.org>,
	Charles Keepax <ckeepax@opensource.cirrus.com>,
	Alessandro Zummo <a.zummo@towertech.it>,
	Peter De Schrijver <pdeschrijver@nvidia.com>,
	Orson Zhai <orsonzhai@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Prashant Gaikwad <pgaikwad@nvidia.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Samuel Holland <samuel@sholland.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Richard Fitzgerald <rf@opensource.cirrus.com>,
	Vinod Koul <vkoul@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
	Sekhar Nori <nsekhar@ti.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Takashi Iwai <tiwai@suse.com>, David Airlie <airlied@gmail.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Baolin Wang <baolin.wang@linux.alibaba.com>,
	David Lechner <david@lechnology.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Mark Brown <broonie@kernel.org>, Max Filippov <jcmvbkbc@gmail.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	linux-stm32@st-md-mailman.stormreply.com,
	alsa-devel@alsa-project.org, linux-mediatek@lists.infradead.org,
	linux-phy@lists.infradead.org, linux-mips@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-actions@lists.infradead.org, linux-clk@vger.kernel.org,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	patches@opensource.cirrus.com, linux-tegra@vger.kernel.org,
	linux-rtc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v2 35/65] clk: ux500: sysctrl: Add a determine_rate hook
Message-ID: <Y3IE3ta8hLLUcu7H@google.com>
References: <20221018-clk-range-checks-fixes-v2-0-f6736dec138e@cerno.tech>
 <20221018-clk-range-checks-fixes-v2-35-f6736dec138e@cerno.tech>
 <CAPDyKFoycVedCJMy0=UK+q5SiPQHqje_8bSN-gdkpBa6KhFfkg@mail.gmail.com>
 <CACRpkdYOj8uozJZO4MV-_OAKeOsQHhoEM=PyynVuNY-JkpgTOw@mail.gmail.com>
 <CAPDyKFr6VeF3s47JfzJ9urtMsEem+GiBtHeU=_S8jNaz-D+qnw@mail.gmail.com>
 <CACRpkdb8uYfs6w99FVjD_t6nZgDhPUx=yB1j=CmpHTHAM2QGQw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdb8uYfs6w99FVjD_t6nZgDhPUx=yB1j=CmpHTHAM2QGQw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_010552_524881_E3E4F38D 
X-CRM114-Status: GOOD (  37.44  )
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

T24gRnJpLCAxMSBOb3YgMjAyMiwgTGludXMgV2FsbGVpaiB3cm90ZToKCj4gT24gVGh1LCBOb3Yg
MTAsIDIwMjIgYXQgMjowNSBQTSBVbGYgSGFuc3NvbiA8dWxmLmhhbnNzb25AbGluYXJvLm9yZz4g
d3JvdGU6Cj4gPiBPbiBUaHUsIDEwIE5vdiAyMDIyIGF0IDEyOjM5LCBMaW51cyBXYWxsZWlqIDxs
aW51cy53YWxsZWlqQGxpbmFyby5vcmc+IHdyb3RlOgo+ID4gPgo+ID4gPiBPbiBUaHUsIE5vdiAx
MCwgMjAyMiBhdCAxMjoyOSBQTSBVbGYgSGFuc3NvbiA8dWxmLmhhbnNzb25AbGluYXJvLm9yZz4g
d3JvdGU6Cj4gPiA+ID4gT24gRnJpLCA0IE5vdiAyMDIyIGF0IDE0OjMyLCBNYXhpbWUgUmlwYXJk
IDxtYXhpbWVAY2Vybm8udGVjaD4gd3JvdGU6Cj4gPiA+ID4gPgo+ID4gPiA+ID4gVGhlIFVYNTAw
IHN5c2N0cmwgInNldF9wYXJlbnQiIGNsb2NrcyBpbXBsZW1lbnQgYSBtdXggd2l0aCBhIHNldF9w
YXJlbnQKPiA+ID4gPiA+IGhvb2ssIGJ1dCBkb2Vzbid0IHByb3ZpZGUgYSBkZXRlcm1pbmVfcmF0
ZSBpbXBsZW1lbnRhdGlvbi4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBUaGlzIGlzIGEgYml0IG9kZCwg
c2luY2Ugc2V0X3BhcmVudCgpIGlzIHRoZXJlIHRvLCBhcyBpdHMgbmFtZSBpbXBsaWVzLAo+ID4g
PiA+ID4gY2hhbmdlIHRoZSBwYXJlbnQgb2YgYSBjbG9jay4gSG93ZXZlciwgdGhlIG1vc3QgbGlr
ZWx5IGNhbmRpZGF0ZSB0bwo+ID4gPiA+ID4gdHJpZ2dlciB0aGF0IHBhcmVudCBjaGFuZ2UgaXMg
YSBjYWxsIHRvIGNsa19zZXRfcmF0ZSgpLCB3aXRoCj4gPiA+ID4gPiBkZXRlcm1pbmVfcmF0ZSgp
IGZpZ3VyaW5nIG91dCB3aGljaCBwYXJlbnQgaXMgdGhlIGJlc3Qgc3VpdGVkIGZvciBhCj4gPiA+
ID4gPiBnaXZlbiByYXRlLgo+ID4gPiA+ID4KPiA+ID4gPiA+IFRoZSBvdGhlciB0cmlnZ2VyIHdv
dWxkIGJlIGEgY2FsbCB0byBjbGtfc2V0X3BhcmVudCgpLCBidXQgaXQncyBmYXIgbGVzcwo+ID4g
PiA+ID4gdXNlZCwgYW5kIGl0IGRvZXNuJ3QgbG9vayBsaWtlIHRoZXJlJ3MgYW55IG9idmlvdXMg
dXNlciBmb3IgdGhhdCBjbG9jay4KPiA+ID4gPgo+ID4gPiA+IElmIEkgcmVjYWxsIGNvcnJlY3Rs
eSwgdGhhdCBpcyB0aGUgdXNlIGNhc2Ugd2UgZGlkIHRhcmdldCBmb3IgdGhlc2UKPiA+ID4gPiB0
eXBlcyBvZiBjbG9ja3MuIFNlZSBzb3VuZC9zb2MvdXg1MDAvdXg1MDBfYWI4NXh4LmMsIGZvciBl
eGFtcGxlLgo+ID4gPgo+ID4gPiBIbSBJIGFtIHRyeWluZyB0byBnZXQgdGhhdCBkcml2ZXIgdG8g
d29yayAuLi4gZnJvbSB0aW1lIHRvIHRpbWUuCj4gPiA+IEl0J3MganVzdCB0aGF0IEFMU0EgU29D
IERUIGhhcyBjaGFuZ2VkIHRvIG11Y2ggdGhhdCBpdCB0dXJucyBvdXQKPiA+ID4gaW50byBhIGNv
bXBsZXRlIHJld3JpdGUgOi8KPiA+ID4KPiA+ID4gU28gaW4gc291bmQvc29jL3V4NTAwL21vcDUw
MF9hYjg1MDAuYwo+ID4gPiBJIHNlZSB0aGlzOgo+ID4gPgo+ID4gPiAgICAgICAgIHN0YXR1cyA9
IGNsa19zZXRfcGFyZW50KGRydmRhdGEtPmNsa19wdHJfaW50Y2xrLCBjbGtfcHRyKTsKPiA+ID4g
ICAgICAgICBpZiAoc3RhdHVzKQo+ID4gPiAoLi4uKQo+ID4gPgo+ID4gPiBhbmQgdGhlcmUgaXMg
ZWxhYm9yYXRlIGNvZGUgdG8gc3dpdGNoIGJldHdlZW4gIlNZU0NMSyIgYW5kCj4gPiA+ICJVTFBD
TEsiICh1bHRhLWxvdyBwb3dlciBjbG9jaykuIEp1c3QgbGlrZSB5b3Ugc2F5Li4uIGhvd2V2ZXIK
PiA+ID4gYSBjbG9jayBuYW1lZCBTWVNDTEsgb3IgVUxQQ0xLIGRvZXMgbm90IGFwcGVhciBpbiB0
aGUKPiA+ID4gY29kZSBpbiBkcml2ZXJzL2Nsay91eDUwMCBvciBhbnkgRFQgYmluZGluZ3Mgc28u
Li4gaXQgc2VlbXMgdG8KPiA+ID4gYmUgbm9uLXdvcmtpbmcgZm9yIHRoZSB0aW1lIGJlaW5nLgo+
ID4KPiA+IEl0J3MgZGVmaW5pdGVseSBub3Qgd29ya2luZywgYnV0IHRoZSBjb3JyZXNwb25kaW5n
IGNsb2NrcyAoInVscGNsayIsCj4gPiAiaW50Y2xrIiwgImF1ZGlvY2xrIiwgZXRjKSBhcmUgYmVp
bmcgcmVnaXN0ZXJlZCBpbiBhYjg1MDBfcmVnX2Nsa3MoKS4KPiA+Cj4gPiBXaGF0IHNlZW1zIHRv
IGJlIG1pc3NpbmcgaXMgYSBEVCBjb252ZXJzaW9uIGZvciB0aGVzZSBjbG9ja3MsIHNvIHRoZXkK
PiA+IGNhbiBiZSBjb25zdW1lZCBwcm9wZXJseS4gUmlnaHQ/Cj4gCj4gWWVwcyB0aGF0IGFuZCBh
IGZldyBtb3JlIHRoaW5ncywgSSBoYXZlIGEgc2NyYXRjaCByZXdyaXRlIGhlcmU6Cj4gaHR0cHM6
Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvbGludXN3L2xpbnV4LXN0
ZXJpY3Nzb24uZ2l0L2xvZy8/aD11eDUwMC1hdWRpby1yZXdyaXRlCj4gCj4gSSByZW1lbWJlciBM
ZWUgc2FpZCBoZSBoYWQgYXVkaW8gd29ya2luZyB3aXRoIHRoZSBtYWlubGluZSBrZXJuZWwKPiBv
biBTbm93YmFsbCBhdCBvbmUgcG9pbnQsIHVuZm9ydHVuYXRlbHkgSSB0aGluayB0aGF0IHdhcyBi
ZWZvcmUgd2UKPiBzdGFydGVkIHdpdGggdGhlIERUIGNvbnZlcnNpb25zIGFuZCB0aGVuIHdlIHBy
b2JhYmx5IGJyb2tlIGl0LgoKVGhhdCB3YXMgYWxzbyAxMDAgeWVhcnMgYWdvLiA6KQoKQnV0IHll
cywgaXQgdXNlZCB0byB3b3JrIGF0IG9uZSBwb2ludC4KCi0tIApMZWUgSm9uZXMgW+adjueQvOaW
r10KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
