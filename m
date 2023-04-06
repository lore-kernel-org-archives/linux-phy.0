Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19B4BC76196
	for <linux-phy@archiver.kernel.org>; Thu,  6 Apr 2023 15:21:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wh6upxMXTlJErUl+GIPEUCrRE0wbHyOecMTFwU/rfG8=; b=gUNuHJKPuMEh8f
	RO/EwnEYPyrD2vNclAxO4VvJ95Y3EK/hyusrAFjMW5ilXMkf7FTY124BYgfTYz6es+7GZCyQtC+MA
	1n/rP0NiCBmKUH9grAj1D7So1QGOeZd/KietOojDd491FFOEa8LM8IVzqCm5YJ+tNfDlr7rbMsPZG
	7knhKMlwA4Grb9tEj84GuYJtr7HD+xB2yii7OuFWpIalk8O3f7Bs164g9doPuLvcTXbBKYDuO3odE
	yBnjCu63JbVshqMCdrzrZKzyg2H2xL/m0iadLPgGdpDeAs7GMcE3acbs8gwctEqBmb6f0U3arLLya
	bTMtY1zfP93B1Qi5APtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pkRQc-007nJ8-2R;
	Thu, 06 Apr 2023 15:21:34 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pkRQY-007nGP-0V;
	Thu, 06 Apr 2023 15:21:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D72F1169E;
	Thu,  6 Apr 2023 08:22:08 -0700 (PDT)
Received: from [10.2.7.51] (stinger.cambridge.arm.com [10.2.7.51])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id ADE653F762;
	Thu,  6 Apr 2023 08:21:17 -0700 (PDT)
Message-ID: <a54a4ea0-f9f5-6869-9629-747c3889a1de@arm.com>
Date: Thu, 6 Apr 2023 16:21:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v3 36/65] clk: versatile: sp810: Add a determine_rate hook
Content-Language: en-US
To: Maxime Ripard <maxime@cerno.tech>
Cc: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, =?UTF-8?Q?Andreas_F=c3=a4rber?=
 <afaerber@suse.de>, Manivannan Sadhasivam <mani@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Claudiu Beznea <claudiu.beznea@microchip.com>,
 Max Filippov <jcmvbkbc@gmail.com>,
 Charles Keepax <ckeepax@opensource.cirrus.com>,
 Richard Fitzgerald <rf@opensource.cirrus.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 David Lechner <david@lechnology.com>, Sekhar Nori <nsekhar@ti.com>,
 Abel Vesa <abelvesa@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Dinh Nguyen <dinguyen@kernel.org>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 Prashant Gaikwad <pgaikwad@nvidia.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Ulf Hansson
 <ulf.hansson@linaro.org>, Linus Walleij <linus.walleij@linaro.org>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Alessandro Zummo <a.zummo@towertech.it>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>, Paul Cercueil <paul@crapouillou.net>,
 Orson Zhai <orsonzhai@gmail.com>, Baolin Wang
 <baolin.wang@linux.alibaba.com>, Chunyan Zhang <zhang.lyra@gmail.com>,
 linux-kernel@vger.kernel.org,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 linux-arm-kernel@lists.infradead.org, linux-actions@lists.infradead.org,
 patches@opensource.cirrus.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-mediatek@lists.infradead.org, linux-renesas-soc@vger.kernel.org,
 linux-tegra@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-phy@lists.infradead.org, linux-rtc@vger.kernel.org,
 linux-sunxi@lists.linux.dev, alsa-devel@alsa-project.org,
 linux-mips@vger.kernel.org
References: <20221018-clk-range-checks-fixes-v3-0-9a1358472d52@cerno.tech>
 <20221018-clk-range-checks-fixes-v3-36-9a1358472d52@cerno.tech>
From: Pawel Moll <pawel.moll@arm.com>
In-Reply-To: <20221018-clk-range-checks-fixes-v3-36-9a1358472d52@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230406_082130_288221_C575051A 
X-CRM114-Status: GOOD (  16.75  )
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

T24gMDQvMDQvMjAyMyAxMToxMSwgTWF4aW1lIFJpcGFyZCB3cm90ZToKPiBUaGUgVmVyc2F0aWxl
IHNwODEwICJ0aW1lcmNsa2VuIiBjbG9jayBpbXBsZW1lbnRzIGEgbXV4IHdpdGggYQo+IHNldF9w
YXJlbnQgaG9vaywgYnV0IGRvZXNuJ3QgcHJvdmlkZSBhIGRldGVybWluZV9yYXRlIGltcGxlbWVu
dGF0aW9uLgo+IAo+IFRoaXMgaXMgYSBiaXQgb2RkLCBzaW5jZSBzZXRfcGFyZW50KCkgaXMgdGhl
cmUgdG8sIGFzIGl0cyBuYW1lIGltcGxpZXMsCj4gY2hhbmdlIHRoZSBwYXJlbnQgb2YgYSBjbG9j
ay4gCgpFeHBsYW5hdGlvbiBvZiB0aGlzIG15c3RlcnkgaXMgcHJldHR5IHNpbXBsZSAtIHRoZSBv
cmlnaW5hbCBwYXRjaDoKCgljb21taXQgNmU5NzNkMmM0Mzg1MDJkY2Y5NTZlNzYzMDUyNThiYTdk
MWM3ZDFkMwoJQXV0aG9yOiBQYXdlbCBNb2xsIDxwYXdlbC5tb2xsQGFybS5jb20+CglEYXRlOiAg
IFRodSBBcHIgMTggMTg6MjM6MjIgMjAxMyArMDEwMAoKCSAgICBjbGs6IHZleHByZXNzOiBBZGQg
c2VwYXJhdGUgU1A4MTAgZHJpdmVyCgpwcmVkYXRlcyBpbnRyb2R1Y3Rpb24gb2YgZGV0ZXJtaW5l
X3JhdGUgdG8gY2xrX29wcy4uLgoKCWNvbW1pdCA3MTQ3MmMwYzA2Y2Y5YTNkMTU0MDc2MmVhMjA1
NjU0YzU4NGUzYmM0CglBdXRob3I6IEphbWVzIEhvZ2FuIDxqaG9nYW5Aa2VybmVsLm9yZz4KCURh
dGU6ICAgTW9uIEp1bCAyOSAxMjoyNTowMCAyMDEzICswMTAwCgoJICAgIGNsazogYWRkIHN1cHBv
cnQgZm9yIGNsb2NrIHJlcGFyZW50IG9uIHNldF9yYXRlCgphbmQgY2xlYXJseSBubyBvbmUgKHRo
ZSBhdXRob3IgaW5jbHVkZWQgOy0pIGJvdGhlcmVkIHRvIGhhdmUgYW5vdGhlcgpsb29rIGF0IHRo
aXMgc2lkZSBvZiB0aGUgZHJpdmVyLgoKPiBBbmQgaWYgaXQgd2FzIGFuIG92ZXJzaWdodCwgdGhl
biB3ZSBhcmUgYXQgbGVhc3QgZXhwbGljaXQgYWJvdXQgb3VyCj4gYmVoYXZpb3Igbm93IGFuZCBp
dCBjYW4gYmUgZnVydGhlciByZWZpbmVkIGRvd24gdGhlIGxpbmUuCgpJdCdzIGJlZW4gb25lIGhl
bGwgb2YgYSBtZW1vcnkgbGFuZSB0cmlwLCBidXQgbXkgcmVjb2xsZWN0aW9uIHN1Z2dlc3QKdGhh
dCB0aGUgbWFpbiBnb2FsIG9mIHRoZSBkcml2ZXIgd2FzIHNpbXBseSBpbml0aWFsaXNhdGlvbiBv
ZiB0aGUgbXV4CnRvIHNlbGVjdCB0aGUgMU1IeiBwYXJlbnQsIGJlY2F1c2UgdGhlIG90aGVyIG9w
dGlvbiAtIDMya0h6IC0ganVzdApkaWRuJ3QgbWFrZSBhbnkgc2Vuc2Ugd2hhdHNvZXZlci4gQW5k
IHRoYXQgd291bGQgYmUgdGhlIGNhc2Ugb24gZXZlcnkKc2luZ2xlIHBsYXRmb3JtIHVzaW5nIFNQ
ODEwIEkga25vdyAob3IgYXQgbGVhc3Q6IGtuZXcpLCBzbyBpdCdzIHNlZW1zCnRvIG1lIHRoYXQg
bWFraW5nIHRoZSBzdGF0ZSBwZXJtYW5lbnQsIGFzIHlvdSdyZSBzdWdnZXN0aW5nIChvciBJCnRo
aW5rIHlvdSdyZSBzdWdnZXN0aW5nPykgaXQncyB0aGUgcmlnaHQgdGhpbmcgdG8gZG8uCgpUaGFu
a3MhCgpQYXdlxYIKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
