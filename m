Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11E45CA0EFF
	for <linux-phy@archiver.kernel.org>; Wed, 27 Aug 2025 06:55:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EqxECesz+qzch2CYELeHldtue1njyjWHSVxfBiwX+HU=; b=Q5jrmffUaY8Ax1
	To5LSCTcdlf93r9azd6/X7RaZg99rezfJ0pnF/O95t3aNe9mxyAy4JJMURI2kUwdVovBSnopIc2kW
	5uKuTH3wfACIS4w4Y/JGlm+iYtQget+dJNlKFlq76CIQlWKnvv9kdpg5DTTjWWyhJJsqqJAukAU5J
	V6RkaiqTvDqPDIXUiJdM0OPy1qjYaQoDdaowNeBonNq3KtvotdsX0GK4pA2+yHTXiuH/lc68QSiip
	QXR8u3E1ceC+Lnv/kysDKt/KhG1myvZHkfKuFJDXUE9tqaJThHU7i4WNmKZP+dSIl0dwNWKPvmEgk
	VldQXMgh97fsBnaLC4Ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urA4H-0000000EKRx-3HKd;
	Wed, 27 Aug 2025 06:55:37 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urA0G-0000000EJVV-22AR;
	Wed, 27 Aug 2025 06:51:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=6n/bITa6vrmP6YxQjYpYAvl0pURUaNYm8xkK9JCAWa8=; b=noD4En545Nt/MdX0PP6isfTCIm
	nzzsDKAnZVdX0JQAaI/cY0hmmj4qQ34OFnMnfj7gzvR749DUPsZVAeEENOUrNf8dKgsSdc1dL40yU
	+d0TrjSv0RRgNY4vGdZsMDDw25760fIzo77/LhnS574eAc0b5k+ORFfbAiN0RQPdenFMW+P8Z1X9w
	5GFOcifgnTV1kJ/hZzz9Wlnp5vsuXy09PlBO/bUJw83SEhZ8NgZ7fQnv+H1Wb5sUceVheNheVV1RY
	MjHOsf+fHlCaRlT+ByUybYdRFVjjL0KSbnpcQBFbT7Qz3xhL8DPpssadKJbxiZpdtux/aYJKbb+4B
	VxCNnEnw==;
Received: from [213.244.170.152] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ur9ze-0005xU-Cd; Wed, 27 Aug 2025 08:50:50 +0200
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
Subject: Re: [PATCH v3 01/20] bitmap: introduce hardware-specific bitfield operations
Date: Wed, 27 Aug 2025 08:50:49 +0200
Message-ID: <9063025.MhkbZ0Pkbq@phil>
In-Reply-To: <20250825-byeword-update-v3-1-947b841cdb29@collabora.com>
References: <20250825-byeword-update-v3-0-947b841cdb29@collabora.com>
 <20250825-byeword-update-v3-1-947b841cdb29@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250826_235128_523383_DB802331 
X-CRM114-Status: GOOD (  15.51  )
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

QW0gTW9udGFnLCAyNS4gQXVndXN0IDIwMjUsIDEwOjI4OjIxIE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgTmljb2xhcyBGcmF0dGFyb2xpOgo+IEhhcmR3YXJlIG9mIHZhcmlv
dXMgdmVuZG9ycywgYnV0IHZlcnkgbm90YWJseSBSb2NrY2hpcCwgb2Z0ZW4gdXNlcwo+IDMyLWJp
dCByZWdpc3RlcnMgd2hlcmUgdGhlIHVwcGVyIDE2LWJpdCBoYWxmIG9mIHRoZSByZWdpc3RlciBp
cyBhCj4gd3JpdGUtZW5hYmxlIG1hc2sgZm9yIHRoZSBsb3dlciBoYWxmLgo+IAo+IFRoaXMgdHlw
ZSBvZiBoYXJkd2FyZSBzZXR1cCBhbGxvd3MgZm9yIG1vcmUgZ3JhbnVsYXIgY29uY3VycmVudCBy
ZWdpc3Rlcgo+IHdyaXRlIGFjY2Vzcy4KPiAKPiBPdmVyIHRoZSB5ZWFycywgbWFueSBkcml2ZXJz
IGhhdmUgaGFuZC1yb2xsZWQgdGhlaXIgb3duIHZlcnNpb24gb2YgdGhpcwo+IG1hY3JvLCB1c3Vh
bGx5IHdpdGhvdXQgYW55IGNoZWNrcywgb2Z0ZW4gY2FsbGVkIHNvbWV0aGluZyBsaWtlCj4gSElX
T1JEX1VQREFURSBvciBGSUVMRF9QUkVQX0hJV09SRCwgY29tbW9ubHkgd2l0aCBzbGlnaHRseSBk
aWZmZXJlbnQKPiBzZW1hbnRpY3MgYmV0d2VlbiB0aGVtLgo+IAo+IENsZWFybHkgdGhlcmUgaXMg
YSBkZW1hbmQgZm9yIHN1Y2ggYSBtYWNybywgYW5kIHRodXMgdGhlIGRlbWFuZCBzaG91bGQKPiBi
ZSBzYXRpc2ZpZWQgaW4gYSBjb21tb24gaGVhZGVyIGZpbGUuIEFzIHRoaXMgaXMgYSBjb252ZW50
aW9uIHRoYXQgc3BhbnMKPiBhY3Jvc3MgbXVsdGlwbGUgdmVuZG9ycywgYW5kIHNpbWlsYXIgY29u
dmVudGlvbnMgbWF5IGFsc28gaGF2ZQo+IGNyb3NzLXZlbmRvciBhZG9wdGlvbiwgaXQncyBiZXN0
IGlmIGl0IGxpdmVzIGluIGEgdmVuZG9yLWFnbm9zdGljIGhlYWRlcgo+IGZpbGUgdGhhdCBjYW4g
YmUgZXhwYW5kZWQgb3ZlciB0aW1lLgo+IAo+IEFkZCBod19iaXRmaWVsZC5oIHdpdGggdHdvIG1h
Y3JvczogRklFTERfUFJFUF9XTTE2LCBhbmQKPiBGSUVMRF9QUkVQX1dNMTZfQ09OU1QuIFRoZSBs
YXR0ZXIgaXMgYSB2ZXJzaW9uIHRoYXQgY2FuIGJlIHVzZWQgaW4KPiBpbml0aWFsaXplcnMsIGxp
a2UgRklFTERfUFJFUF9DT05TVC4KPiAKPiBTdWdnZXN0ZWQtYnk6IFl1cnkgTm9yb3YgW05WSURJ
QV0gPHl1cnkubm9yb3ZAZ21haWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IE5pY29sYXMgRnJhdHRh
cm9saSA8bmljb2xhcy5mcmF0dGFyb2xpQGNvbGxhYm9yYS5jb20+CgpBY2tlZC1ieTogSGVpa28g
U3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
