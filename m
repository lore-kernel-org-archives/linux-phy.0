Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E7AFCA0EFF
	for <linux-phy@archiver.kernel.org>; Wed, 27 Aug 2025 08:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hHiJ7b20ZD9BmQtPYnRwMFQ0YUj6Ecv7Bwvnbkm68BA=; b=GrgqJYQ2PJoEdJ
	WG4yRL2hBslUcmMLnD3YCY4QBYShq3k1XGw8NfQZuGEKouCqAtOaZV27T3aYiJHY56ORiegu70BRW
	txg8FGwC+3EtpAkPdD61KpbQAxfMbAwM007uGG8TdPNV6ulcGtOPtO6bwNbpInM17bQiyOAu8pdCW
	YUP/z5UeBPJnnFL2c5bJ+43flzq/UkbZIhQzK0Jz/U/ZiFTnctt/2fwilL3AYWFHeV4pHCTJkaezb
	WcZoZ5HTOGrWOggx7hZVCyLjatPqfRUw/d140imHLNrOM72lRb5l/L9KoUpYbcHiCOuOWxdLgzueG
	/YD8pt7HQi54sxJjAovA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urB9I-0000000Ea4E-2Z0s;
	Wed, 27 Aug 2025 08:04:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urB9F-0000000Ea1O-34mQ;
	Wed, 27 Aug 2025 08:04:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=H5XGGOqUvDfBDNoA9c9ChXTIWyKSBsmEcQMHpNsNPDE=; b=mtrPPwqaUs12AGu5L+ainiAjWo
	LG0fGbIszK398JZ0KY0dLQFqHUEgpa78WPcICY29z9haXF2gu+qet2U9oar/B9EYUcWGS5mDVmVQ5
	FfdRptzZ2FTbaPLUYUE/DLwXpS2IBNRzVirIN+r0eD9Vx3WLDIuiC+j04MoDiy8oiUvghbsyFgJl6
	xhHxZtck6KVDZTQ637deyTTvZvoCndnNCfAUU1vzr/vdCDtsvL4+O1XywZZrjEQ3ksrhSd67FgZUX
	o6tiItZt/sCBeB/pcYbqDQThCgSrW42QOZe/NgxaFzLAMuSytJPKBkiLAGsDanxEmkdVRs78asGSa
	ZB48o00Q==;
Received: from [213.244.170.152] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1urB8s-0007SN-IS; Wed, 27 Aug 2025 10:04:26 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Yury Norov <yury.norov@gmail.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Jaehoon Chung <jh80.chung@samsung.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Shreeya Patel <shreeya.patel@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Krzysztof =?UTF-8?B?V2lsY3p5xYRza2k=?= <kwilczynski@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Qin Jian <qinjian@cqplus1.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
 Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: kernel@collabora.com, linux-kernel@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org,
 linux-sound@vger.kernel.org, netdev@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-pci@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-clk@vger.kernel.org, llvm@lists.linux.dev,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Subject: Re: [PATCH v3 20/20] phy: rockchip-pcie: switch to FIELD_PREP_WM16 macro
Date: Wed, 27 Aug 2025 10:04:24 +0200
Message-ID: <5143535.KlZ2vcFHjT@phil>
In-Reply-To: <20250825-byeword-update-v3-20-947b841cdb29@collabora.com>
References: <20250825-byeword-update-v3-0-947b841cdb29@collabora.com>
 <20250825-byeword-update-v3-20-947b841cdb29@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250827_010449_763495_6606416B 
X-CRM114-Status: GOOD (  15.89  )
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

QW0gTW9udGFnLCAyNS4gQXVndXN0IDIwMjUsIDEwOjI4OjQwIE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgTmljb2xhcyBGcmF0dGFyb2xpOgo+IFRoZSBlcmEgb2YgaGFuZC1y
b2xsZWQgSElXT1JEX1VQREFURSBtYWNyb3MgaXMgb3ZlciwgYXQgbGVhc3QgZm9yIHRob3NlCj4g
ZHJpdmVycyB0aGF0IHVzZSBjb25zdGFudCBtYXNrcy4KPiAKPiBUaGUgUm9ja2NoaXAgUENJZSBQ
SFkgZHJpdmVyLCB1c2VkIG9uIHRoZSBSSzMzOTksIGhhcyBpdHMgb3duIGRlZmluaXRpb24KPiBv
ZiBISVdPUkRfVVBEQVRFLgo+IAo+IFJlbW92ZSBpdCwgYW5kIHJlcGxhY2UgaW5zdGFuY2VzIG9m
IGl0IHdpdGggaHdfYml0ZmllbGQuaCdzCj4gRklFTERfUFJFUF9XTTE2LiBUbyBhY2hpZXZlIHRo
aXMsIHNvbWUgbWFzayBkZWZpbmVzIGFyZSByZXNodWZmbGVkLCBhcwo+IEZJRUxEX1BSRVBfV00x
NiB1c2VzIHRoZSBtYXNrIGFzIGJvdGggdGhlIG1hc2sgb2YgYml0cyB0byB3cml0ZSBhbmQgdG8K
PiBkZXJpdmUgdGhlIHNoaWZ0IGFtb3VudCBmcm9tIGluIG9yZGVyIHRvIHNoaWZ0IHRoZSB2YWx1
ZS4KPiAKPiBJbiBvcmRlciB0byBlbnN1cmUgdGhhdCB0aGUgbWFzayBpcyBhbHdheXMgYSBjb25z
dGFudCwgdGhlIGluc3QtPmluZGV4Cj4gc2hpZnQgaXMgcGVyZm9ybWVkIGFmdGVyIHRoZSBGSUVM
RF9QUkVQX1dNMTYsIGFzIHRoaXMgaXMgYSBydW50aW1lCj4gdmFsdWUuCj4gCj4gRnJvbSB0aGlz
LCB3ZSBnYWluIGNvbXBpbGUtdGltZSBlcnJvciBjaGVja2luZywgYW5kIGluIG15IGh1bWJsZSBv
cGluaW9uCj4gbmljZXIgY29kZSwgYXMgd2VsbCBhcyBhIHNpbmdsZSBkZWZpbml0aW9uIG9mIHRo
aXMgbWFjcm8gYWNyb3NzIHRoZQo+IGVudGlyZSBjb2RlYmFzZSB0byBhaWQgaW4gY29kZSBjb21w
cmVoZW5zaW9uLgo+IAo+IFRlc3RlZCBvbiBhIFJLMzM5OSBST0NLUHJvNjQsIHdoZXJlIFBDSWUg
c3RpbGwgd29ya3MgYXMgZXhwZWN0ZWQgd2hlbgo+IGFjY2Vzc2luZyBhbiBOVk1lIGRyaXZlLgo+
IAo+IFNpZ25lZC1vZmYtYnk6IE5pY29sYXMgRnJhdHRhcm9saSA8bmljb2xhcy5mcmF0dGFyb2xp
QGNvbGxhYm9yYS5jb20+CgoKUmV2aWV3ZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRl
Y2guZGU+CgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXBoeQo=
