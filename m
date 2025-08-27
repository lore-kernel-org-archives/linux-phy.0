Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFC66C8303F
	for <linux-phy@archiver.kernel.org>; Wed, 27 Aug 2025 07:10:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uRIkoV3ZAsycLTVgPcUOcNBhypkB5pk5O8LXX4Vdqno=; b=mKVILpNgpqZAjk
	TWSGzruwo40Lz4HOIxXNHojmDCuxRwdNCC6nlYUIIBzYwga4N1fhzjne5nIIqgVWjylUzj5lVFyy+
	k1dhYYoETyGOP3IPZdCLikJA6vje2m8vLZi4gvPfRLkbq0K2ojlu5d2UcMWQozeG2g6ghM7y+msDn
	TdSbnJgS4EWgm0mq+/cXitMG1Ys2bqi7rlKD2awXJUETZGGvZsEgP5n0M38hf6FbDVy1Y7j9EJZX9
	Dj5FkLhu5sMH1ESQsytG/WQge6ZNwbbetUqK3uj25N9T2yZU6z2lNSv8z960bve8AGn2t1jVecmBj
	GEF/3FwrQCWPR+N+IXWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urAId-0000000ENNl-0oB7;
	Wed, 27 Aug 2025 07:10:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urAFv-0000000EN1x-0u3K;
	Wed, 27 Aug 2025 07:07:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=Hi87Ma1CfW66PXkg2oQrZRICpxH0hyBkWkC4ds/pBhw=; b=uusxIU5xRuZ0QfEhYlw6gK5J3M
	cukjUcvbUBSeYk0holwZiZT1VXNnYxaA+lS1f8IZF2lxun1p+sO6kBIgdlh+L7OATh7HuFBKU0Ko/
	YMFiziJujayHhMpTO9sI+SB6kZzCLQ3LA2wi+zM2Pj6HdcXsVLuYG0jtQnqlzTzXyt5jojTRWIGsb
	wzt+8uojOhWGbAPoDlIdbSY59K75IslNN+MSNQjWPgLKlVJITDMxznxmmYXnOG+R9cRyUkE6AaVsa
	mhuC9tk/OARVs88tnIAEWuas5LuVTUbGoonA2vnXnkyS+aViNrtoKbgPT6zYRuIKMUreOy55er0pr
	hDxnoSQA==;
Received: from [213.244.170.152] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1urAFO-0006m6-B1; Wed, 27 Aug 2025 09:07:06 +0200
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
Subject: Re: [PATCH v3 04/20] media: synopsys: hdmirx: replace macros with bitfield
 variants
Date: Wed, 27 Aug 2025 09:07:05 +0200
Message-ID: <5651006.Lt9SDvczpP@phil>
In-Reply-To: <20250825-byeword-update-v3-4-947b841cdb29@collabora.com>
References: <20250825-byeword-update-v3-0-947b841cdb29@collabora.com>
 <20250825-byeword-update-v3-4-947b841cdb29@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250827_000739_251140_FC5571BE 
X-CRM114-Status: GOOD (  12.52  )
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

QW0gTW9udGFnLCAyNS4gQXVndXN0IDIwMjUsIDEwOjI4OjI0IE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgTmljb2xhcyBGcmF0dGFyb2xpOgo+IFRoZSBlcmEgb2YgaGFuZC1y
b2xsZWQgSElXT1JEX1VQREFURSBtYWNyb3MgaXMgb3ZlciwgYXQgbGVhc3QgZm9yIHRob3NlCj4g
ZHJpdmVycyB0aGF0IHVzZSBjb25zdGFudCBtYXNrcy4KPiAKPiBSZXBsYWNlIHRoZSBVUERBVEUg
bWFjcm8gd2l0aCBiaXRmaWVsZC5oJ3MgRklFTERfUFJFUCwgdG8gZ2l2ZSB1cwo+IGFkZGl0aW9u
YWwgZXJyb3IgY2hlY2tpbmcuCj4gCj4gQWxzbywgcmVwbGFjZSB0aGUgSElXT1JEX1VQREFURSBt
YWNybyBhdCB0aGUgc2FtZSB0aW1lIHdpdGggdGhlIG5ldwo+IEZJRUxEX1BSRVBfV00xNiBtYWNy
byBpbiBod19iaXRmaWVsZC5oLCB3aGljaCBhbHNvIGdpdmVzIHVzIGFkZGl0aW9uYWwKPiBlcnJv
ciBjaGVja2luZy4KPiAKPiBUaGUgVVBEQVRFL0hJV09SRF9VUERBVEUgbWFjcm9zIGFyZSBsZWZ0
IGFzIHdyYXBwZXJzIGFyb3VuZCB0aGUKPiByZXBsYWNlbWVudCBtYWNyb3MsIGluIG9yZGVyIHRv
IG5vdCByb2NrIHRoZSBib2F0IHRvbyBtdWNoLCBhbmQga2VlcCB0aGUKPiBjaGFuZ2VzIGVhc3kg
dG8gcmV2aWV3Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IE5pY29sYXMgRnJhdHRhcm9saSA8bmljb2xh
cy5mcmF0dGFyb2xpQGNvbGxhYm9yYS5jb20+CgpBY2tlZC1ieTogSGVpa28gU3R1ZWJuZXIgPGhl
aWtvQHNudGVjaC5kZT4KCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
