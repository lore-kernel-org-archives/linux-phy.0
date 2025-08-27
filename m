Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0AD8CA0EFF
	for <linux-phy@archiver.kernel.org>; Wed, 27 Aug 2025 07:44:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4zmAvDgPe6GQQ8nbcu6eftdTRBXVfdUuV5B808AgvNk=; b=n//8ipo8BfDWE1
	qzHOOh/3l8Iq3TL1iGaVN4ZPUq4NiSK6HvQskviDtOHrBhXhZ0gRDj9hI8rVH4fQ+HuRY/qw+Bubc
	NDi8RRm7X5r9ziOV3YbldGUnwOQOqzpplbJg4C6Nbo3Jhlottwu6WTm+SlFAeItTb0TfC4m2aFDuF
	b+LdU6tQKe73yne47RmrgmZaqcNXb7anWv1HG2z4m/tSA19BGsZHvrYORiPleV4gCV/UlXYLC03fz
	RrHq8IdCInNmcIgex/Y+p9AAW/TZLpjm4a/PXfTHkBgd3hZFIfmSyoIiSlyb+OZRulbaxugSsJemu
	pemARdIi1UpI0ydNwI9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urApz-0000000ETaT-19SW;
	Wed, 27 Aug 2025 07:44:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urAl7-0000000ESiQ-0hMb;
	Wed, 27 Aug 2025 07:39:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=XkQ6Wrz+Uj6zp+ZXnKSsoh3lqxnEX6488n76YWTcr0w=; b=MpUcdFeUMtR8hEm1eRIQ8izROc
	VbGVChvM5citqFkjUKPDTqXimsaHc3IMiIZEYJTmzn+1+huHjjO/m5tnxU2EbGomCzRkuZWzZatVT
	+m1dEZIFEMzoK712uJ05NW2MWYAI8u4wYlR8HmW1m0BapnbrpKrszLjmG1g1ikJ7kEw1P5ikxdMv4
	l5E1gUXd8F9qrdlkDMoRnzQfT82lBvh5g3cQBAF7O3mzZUbZpcsCWvyKI2+TDLSuj9KWq/jkb0vWp
	s4LlV3x7sG+YTLbb9uBc9UoRKf/NEVNUf1Gzf4excKT4sLaGeJWc5kqYXL0h4bhVBIvUsvmTqoLva
	Jl0HD2oA==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urAl4-00000002NIw-0ucQ;
	Wed, 27 Aug 2025 07:39:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=XkQ6Wrz+Uj6zp+ZXnKSsoh3lqxnEX6488n76YWTcr0w=; b=BwV9BDyYcRqW1SvjXV2deh+Euf
	MjIAs2AN75GKydKqYqaME2sloiffXFAyAkHUVWX3Ok/at64RagJ+ZOv7Dd8i3zUU+W/KaF4ot93ut
	UoYv2b6wscxdHF1nChthLCv0rR7d9LZLvNDAtESEMx2UPuIiBmnmhRJQJ3vhmmXKcSBVc1NJco7Lx
	dq8lDUV4evqjCLTL8kV5VeyYuy9AEJR29uXljuPxtSf/tQSsNYyGaA6BEt7cpDcJYtDm1F1NVXBg3
	O1FQlCI1b7V0BA/lKIvcir7vSKRBZP+LHmf9dWymA6eVAF2hCEr0gwj1/qGuv4ovE57DEcQ9vWRfD
	2cFVyV8g==;
Received: from [213.244.170.152] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1urAke-0000aj-30; Wed, 27 Aug 2025 09:39:24 +0200
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
Subject: Re: [PATCH v3 14/20] ASoC: rockchip: i2s-tdm: switch to FIELD_PREP_WM16_CONST
 macro
Date: Wed, 27 Aug 2025 09:39:22 +0200
Message-ID: <5725847.BddDVKsqQX@phil>
In-Reply-To: <20250825-byeword-update-v3-14-947b841cdb29@collabora.com>
References: <20250825-byeword-update-v3-0-947b841cdb29@collabora.com>
 <20250825-byeword-update-v3-14-947b841cdb29@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250827_083950_508864_53A1BE4D 
X-CRM114-Status: GOOD (  11.76  )
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

QW0gTW9udGFnLCAyNS4gQXVndXN0IDIwMjUsIDEwOjI4OjM0IE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgTmljb2xhcyBGcmF0dGFyb2xpOgo+IFRoZSBlcmEgb2YgaGFuZC1y
b2xsZWQgSElXT1JEX1VQREFURSBtYWNyb3MgaXMgb3ZlciwgYXQgbGVhc3QgZm9yIHRob3NlCj4g
ZHJpdmVycyB0aGF0IHVzZSBjb25zdGFudCBtYXNrcy4KPiAKPiBSZXBsYWNlIHRoZSBpbXBsZW1l
bnRhdGlvbiBvZiB0aGlzIGRyaXZlcidzIEhJV09SRF9VUERBVEUgbWFjcm8gd2l0aCBhbgo+IGlu
c3RhbmNlIG9mIEZJRUxEX1BSRVBfV00xNl9DT05TVC4gVGhlIGNvbnN0IHZhcmlhbnQgaXMgY2hv
c2VuIGhlcmUKPiBiZWNhdXNlIHNvbWUgb2YgdGhlIGhlYWRlciBkZWZpbmVzIGFyZSB0aGVuIHVz
ZWQgaW4gaW5pdGlhbGl6ZXJzLgo+IAo+IFRoaXMgZ2l2ZXMgdXMgc29tZSBjb21waWxlLXRpbWUg
ZXJyb3IgY2hlY2tpbmcsIHdoaWxlIGtlZXBpbmcgdGhlIGRpZmYKPiB2ZXJ5IHNtYWxsIGFuZCBl
YXN5IHRvIHJldmlldy4KPiAKPiBBY2tlZC1ieTogTWFyayBCcm93biA8YnJvb25pZUBrZXJuZWwu
b3JnPgo+IFNpZ25lZC1vZmYtYnk6IE5pY29sYXMgRnJhdHRhcm9saSA8bmljb2xhcy5mcmF0dGFy
b2xpQGNvbGxhYm9yYS5jb20+CgpSZXZpZXdlZC1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNu
dGVjaC5kZT4KCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
