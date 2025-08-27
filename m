Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84488C8303F
	for <linux-phy@archiver.kernel.org>; Wed, 27 Aug 2025 08:04:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rObR7ht2tcZhRAVF5sTld1vywsGy5dX6Elib7uyZ3a8=; b=WS76ZCY8ODaGI4
	tV9WT6V0jDOVli6ix4a2f/Y6X3UpI7pfpIixAvDG/wUkvs9d8EuM4myu3oSYqzqMb69oiodf6/qtE
	jjfRUnsUMQfx/fjjVoLIvTLtnnsAt5X+lswNggezy1fw/h0d6vMfGwSHS8xTF+kJafDdaD0uzu+st
	Sp20xCjv3a2Z9fpTXDWce7p/AV5tm7jRtcxNuFhtlnFjUkZ399O2iWicaT2ZJYStrKTCwTgaIiAFi
	9dJm7xs1OFYK4BHwV/BqMzAgMXy4ZzqaYyf52rAB/v4G2ZZxWkasqD4NzHrpZjPOrMOKCr6mg2HVO
	oaWc7/ReGI05FWIG/KSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urB8l-0000000EZh4-0NBX;
	Wed, 27 Aug 2025 08:04:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urB8N-0000000EZWO-0Vip;
	Wed, 27 Aug 2025 08:03:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=NqL3zrDeVOVmwd8ScXywURS5QoRIm4+QJ5WQbVoMCp8=; b=X5YrLclwiUXRxe4YKbLSt2k8b4
	sa2/8T33ut/6gr5gidLW0B7gFLiB8iX3JUwpCmTDPuMh2zzUTdwwEQumk7+R/D8rggSl4x1NB3mT6
	m6vYJCM9j58i/dnWOFIvuMj8zAM2MWxtvfqSFOIRBbYhxnittEcH8SXwDzvqCsZVKJb1Gs5OJXOV+
	sH0ofNfiK5taJBTtc1XfF9XAC7JBwX3J7hHrsshgW6w+WNHYdt9OB0SXlP5956BCvkjR9XkKhI6K3
	iCYOn6UIsY/6dFUEidhp+4ZOye7qnvOcMifW4x6Z9698PaQCKr1wI9TTIpN7uiXcGmmt2pRtbq/d6
	zEOcbQLA==;
Received: from [213.244.170.152] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1urB7w-0006zw-Js; Wed, 27 Aug 2025 10:03:28 +0200
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
Subject: Re: [PATCH v3 18/20] PM / devfreq: rockchip-dfi: switch to FIELD_PREP_WM16
 macro
Date: Wed, 27 Aug 2025 10:03:27 +0200
Message-ID: <16814931.dW097sEU6C@phil>
In-Reply-To: <20250825-byeword-update-v3-18-947b841cdb29@collabora.com>
References: <20250825-byeword-update-v3-0-947b841cdb29@collabora.com>
 <20250825-byeword-update-v3-18-947b841cdb29@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250827_010355_154426_C9E544F8 
X-CRM114-Status: GOOD (  13.52  )
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

QW0gTW9udGFnLCAyNS4gQXVndXN0IDIwMjUsIDEwOjI4OjM4IE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgTmljb2xhcyBGcmF0dGFyb2xpOgo+IFRoZSBlcmEgb2YgaGFuZC1y
b2xsZWQgSElXT1JEX1VQREFURSBtYWNyb3MgaXMgb3ZlciwgYXQgbGVhc3QgZm9yIHRob3NlCj4g
ZHJpdmVycyB0aGF0IHVzZSBjb25zdGFudCBtYXNrcy4KPiAKPiBMaWtlIG1hbnkgb3RoZXIgUm9j
a2NoaXAgZHJpdmVycywgcm9ja2NoaXAtZGZpIGJyaW5ncyB3aXRoIGl0IGl0cyBvd24KPiBISVdP
UkRfVVBEQVRFIG1hY3JvLiBUaGlzIHZhcmlhbnQgZG9lc24ndCBzaGlmdCB0aGUgdmFsdWUgKGFu
ZCBsaWtlIHRoZQo+IG90aGVycywgZG9lc24ndCBkbyBhbnkgY2hlY2tpbmcpLgo+IAo+IFJlbW92
ZSBpdCwgYW5kIHJlcGxhY2UgaW5zdGFuY2VzIG9mIGl0IHdpdGggaHdfYml0ZmllbGQuaCdzCj4g
RklFTERfUFJFUF9XTTE2LiAgU2luY2UgRklFTERfUFJFUF9XTTE2IHJlcXVpcmVzIGNvbnRpZ3Vv
dXMgbWFza3MgYW5kCj4gc2hpZnRzIHRoZSB2YWx1ZSBmb3IgdXMsIHNvbWUgcmVzaHVmZmxpbmcg
b2YgZGVmaW5pdGlvbnMgbmVlZHMgdG8KPiBoYXBwZW4uCj4gCj4gVGhpcyBnaXZlcyB1cyBiZXR0
ZXIgY29tcGlsZS10aW1lIGVycm9yIGNoZWNraW5nLCBhbmQgaW4gbXkgb3BpbmlvbiwKPiBuaWNl
ciBjb2RlLgo+IAo+IFRlc3RlZCBvbiBhbiBSSzM1NjggT0RST0lELU0xIGJvYXJkLCBhbmQgYW4g
UkszNTg4IFJPQ0sgNUIgYm9hcmQuCj4gCj4gU2lnbmVkLW9mZi1ieTogTmljb2xhcyBGcmF0dGFy
b2xpIDxuaWNvbGFzLmZyYXR0YXJvbGlAY29sbGFib3JhLmNvbT4KClJldmlld2VkLWJ5OiBIZWlr
byBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgoKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
