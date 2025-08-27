Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2FAD2C8303F
	for <linux-phy@archiver.kernel.org>; Wed, 27 Aug 2025 06:56:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fWqSzQ+CzuEXaCE2NLN3gUj88Ek+nLHybwHE8mFQ3wg=; b=chkB76M4A6/XPE
	ItRYPPvTt/uo74FXOmcyqgGdKfBFOkm8a8VTzyS6VGW+v/v4oifc5nj7qISUSf9dpdOSRpylcRsn1
	QOh0XPKi4qOBHHBnAln4ICGzbx7eRFsx3Jy+kFGVh0P+NZsxMZ/KE1HecSnz0iauK25B3ER5hYHSH
	8k0Dgbgrpcpt3GY6lpIBH077JCaqj9P5HcEZpo+XMoOJVo8hUhGREmzhVWblPycxnOI030dORxlaW
	cZ5f5/ItCGg+ueLlyUvYOb80O2Dkcbt+zQyEyrGaLlzaPxkoQk2ECqzdGv2FRdRQOhsFnhiptXGWW
	1wydzsXQr555qxLmQVuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urA4k-0000000EKhL-3z2f;
	Wed, 27 Aug 2025 06:56:06 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urA4b-0000000EKcA-3n0o;
	Wed, 27 Aug 2025 06:55:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=mNhOVfKsx2Pz5zWpWy+KBJo1bwXTeHhtulw8EwTTN8s=; b=YZmVCfLq9ZdLQuSYMVperPanRo
	5SZcy3LkZUZdCTVatOHsBGYOSBNcDQaiaQdIcfuQtWK8ZZaMcB0XTSqb8FsAfvDbdjwTUn5mES/Qk
	ZSY0Sj5c6sW0LvLxvUl+wpq3Hra0M9QNHq8bps6VDjdbwTNdz9L596X2L2cJ18/IIouTDYXH3RPa/
	smwX+NNws1Y/OfNNAaSU5pJALVGP4gw+IpEAv8B8UneblW2brD/PKHzmgoQdR05wTnCzgH0qJ5f+K
	DioeB6mEN+ax+E4LhXsuluKVmRJvCgCuMO9Jnw6qOy7y73DkTBgppgV3R1518ykN2e3D16SEFlRJ0
	RziAy2PQ==;
Received: from [213.244.170.152] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1urA46-0000Dg-Hn; Wed, 27 Aug 2025 08:55:26 +0200
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
Subject: Re: [PATCH v3 03/20] soc: rockchip: grf: switch to FIELD_PREP_WM16_CONST
 macro
Date: Wed, 27 Aug 2025 08:55:24 +0200
Message-ID: <6548370.QJadu78ljV@phil>
In-Reply-To: <20250825-byeword-update-v3-3-947b841cdb29@collabora.com>
References: <20250825-byeword-update-v3-0-947b841cdb29@collabora.com>
 <20250825-byeword-update-v3-3-947b841cdb29@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250826_235557_939424_F8E4171F 
X-CRM114-Status: GOOD (  13.48  )
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

QW0gTW9udGFnLCAyNS4gQXVndXN0IDIwMjUsIDEwOjI4OjIzIE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgTmljb2xhcyBGcmF0dGFyb2xpOgo+IFRoZSBlcmEgb2YgaGFuZC1y
b2xsZWQgSElXT1JEX1VQREFURSBtYWNyb3MgaXMgb3ZlciwgYXQgbGVhc3QgZm9yIHRob3NlCj4g
ZHJpdmVycyB0aGF0IHVzZSBjb25zdGFudCBtYXNrcy4KPiAKPiBTd2l0Y2ggdGhlIHJvY2tjaGlw
IGdyZiBkcml2ZXIgdG8gdGhlIEZJRUxEX1BSRVBfV00xNl9DT05TVCBtYWNybywgd2hpY2gKPiBi
cmluZ3Mgd2l0aCBpdCBtb3JlIGVycm9yIGNoZWNraW5nIHdoaWxlIHN0aWxsIGJlaW5nIGFibGUg
dG8gYmUgdXNlZCBpbgo+IGluaXRpYWxpemVycy4KPiAKPiBBbGwgSElXT1JEX1VQREFURSBpbnN0
YW5jZXMgYW5kIGl0cyBkZWZpbml0aW9uIGFyZSByZW1vdmVkIGZyb20gdGhlCj4gZHJpdmVyLCBh
cyB0aGUgY29udmVyc2lvbiBoZXJlIGlzIG9idmlvdXMsIGFuZCBzdGF0aWNfYXNzZXJ0cyB3ZXJl
IHVzZWQKPiBkdXJpbmcgZGV2ZWxvcG1lbnQgdG8gbWFrZSBzdXJlIHRoZSBvbmVzIGdyZWF0ZXIg
dGhhbiBvbmUgYml0IGluIHdpZHRoCj4gd2VyZSByZWFsbHkgZXF1aXZhbGVudC4KPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBOaWNvbGFzIEZyYXR0YXJvbGkgPG5pY29sYXMuZnJhdHRhcm9saUBjb2xsYWJv
cmEuY29tPgoKClJldmlld2VkLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgoK
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
