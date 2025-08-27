Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28A47CA0FF6
	for <linux-phy@archiver.kernel.org>; Wed, 27 Aug 2025 07:57:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E4ysOUdxLegf5HJNfMuclfppzjE960VxUimQphUSKkw=; b=AS7Jq4miHPOjXK
	nqbwDmNIOFP3NYEjDxJzJYr4bhX7rQnWdP0tSHwkBdO6L+6b4apgXa9HDpLx423QeTgjtA0Zq2DFD
	ZiKXOAytMrhd6Q/qGocf7w57wwdsXPyOaY9L4I9izyRCBDmw6CmGp7Euv+SmSQ8E6ylIqeL9Hmokd
	TxZRRz3lMjbwjX2xpI9N3pdrsnZcotQqlOIbiX7QnzFBxovLs1zsnXG70IzS23NhZJgBrfWVuAZs3
	2ax035R/gEaDPHHsZ+MSqIVcN057r9RCjwvv0XdImzy6c9815yHXrEoi2FdMIIcqRgOV2GTZLwgBf
	Xc97AvOQPjtGKudACD7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urB2J-0000000EWzN-2uNg;
	Wed, 27 Aug 2025 07:57:39 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urB2G-0000000EWy3-3NEv;
	Wed, 27 Aug 2025 07:57:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=0MK1dUMIBWuj72rwewkqEVH0cn/LnA/1R+TUGxOlw7A=; b=ETZTkoEoOwtznU7PtnZeQFX4Fe
	vM6Gg/U5rsSJj/WUqqtUEJV3BceYz2JVc61zNRNRjL4DFqp104N1wUclJpSswXx5sqCln7OWyunG6
	1BXLLRpOWOQKi7IxecmWks9WndogbL1isYzy85Po6NTAI5iUKT6cVGycUUx1+G9Sdk6QBfX5Nab2O
	AoHyUEffPqw/BIjMBTDsou/G4FI5gXNkiAM7XHNVs95bP9wM5OxBgaN/F8O7uh73Jt61EZ5SREvoE
	VRfAa8DcHOrlfJ+EZjWxzMMZ6lcGDOSdP3RHulTQGePkNCSjMsKPIAnaT2QKSPEuFVcPwPFvGnA9V
	jTWs2Wcg==;
Received: from [213.244.170.152] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1urB1d-0002Lk-PM; Wed, 27 Aug 2025 09:56:57 +0200
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
Subject: Re: [PATCH v3 16/20] PCI: rockchip: Switch to FIELD_PREP_WM16* macros
Date: Wed, 27 Aug 2025 09:56:55 +0200
Message-ID: <7681880.cEBGB3zze1@phil>
In-Reply-To: <20250825-byeword-update-v3-16-947b841cdb29@collabora.com>
References: <20250825-byeword-update-v3-0-947b841cdb29@collabora.com>
 <20250825-byeword-update-v3-16-947b841cdb29@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250827_005736_834430_8510FA68 
X-CRM114-Status: GOOD (  15.13  )
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

QW0gTW9udGFnLCAyNS4gQXVndXN0IDIwMjUsIDEwOjI4OjM2IE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgTmljb2xhcyBGcmF0dGFyb2xpOgo+IFRoZSBlcmEgb2YgaGFuZC1y
b2xsZWQgSElXT1JEX1VQREFURSBtYWNyb3MgaXMgb3ZlciwgYXQgbGVhc3QgZm9yIHRob3NlCj4g
ZHJpdmVycyB0aGF0IHVzZSBjb25zdGFudCBtYXNrcy4KPiAKPiBUaGUgUm9ja2NoaXAgUENJIGRy
aXZlciwgbGlrZSBtYW55IG90aGVyIFJvY2tjaGlwIGRyaXZlcnMsIGhhcyBpdHMgdmVyeQo+IG93
biBkZWZpbml0aW9uIG9mIEhJV09SRF9VUERBVEUuCj4gCj4gUmVtb3ZlIGl0LCBhbmQgcmVwbGFj
ZSBpdHMgdXNhZ2Ugd2l0aCBlaXRoZXIgRklFTERfUFJFUF9XTTE2LCBvciB0d28gbmV3Cj4gaGVh
ZGVyIGxvY2FsIG1hY3JvcyBmb3Igc2V0dGluZy9jbGVhcmluZyBhIGJpdCB3aXRoIHRoZSBoaWdo
IG1hc2ssIHdoaWNoCj4gdXNlIEZJRUxEX1BSRVBfV00xNl9DT05TVCBpbnRlcm5hbGx5LiBJbiB0
aGUgcHJvY2VzcywgRU5DT0RFX0xBTkVTCj4gbmVlZGVkIHRvIGJlIGFkanVzdGVkLCBhcyBGSUVM
RF9QUkVQX1dNMTYqIHNoaWZ0cyB0aGUgdmFsdWUgZm9yIHVzLgo+IAo+IFRoYXQgdGhpcyBpcyBl
cXVpdmFsZW50IHdhcyB2ZXJpZmllZCBieSBmaXJzdCBtYWtpbmcgYWxsIEZJRUxEX1BSRVBfV00x
Ngo+IGluc3RhbmNlcyBGSUVMRF9QUkVQX1dNMTZfQ09OU1QsIHRoZW4gZG9pbmcgYSBzdGF0aWNf
YXNzZXJ0KCkgY29tcGFyaW5nCj4gaXQgdG8gdGhlIG9sZCBtYWNybyAoYW5kIGZvciB0aG9zZSB3
aXRoIHBhcmFtZXRlcnMsIHN0YXRpY19hc3NlcnRpbmcgZm9yCj4gdGhlIGZ1bGwgcmFuZ2Ugb2Yg
cG9zc2libGUgdmFsdWVzIHdpdGggdGhlIG9sZCBlbmNvZGUgbWFjcm8pLgo+IAo+IFdoYXQgd2Ug
Z2V0IG91dCBvZiB0aGlzIGlzIGNvbXBpbGUgdGltZSBlcnJvciBjaGVja2luZyB0byBtYWtlIHN1
cmUgdGhlCj4gdmFsdWUgYWN0dWFsbHkgZml0cyBpbiB0aGUgbWFzaywgYW5kIHRoYXQgdGhlIG1h
c2sgZml0cyBpbiB0aGUgcmVnaXN0ZXIsCj4gYW5kIGFsc28gZ2VuZXJhbGx5IGxlc3MgaWNreSBj
b2RlIHRoYXQgd3JpdGVzIHNoaWZ0ZWQgdmFsdWVzIHdoZW4gaXQKPiBhY3R1YWxseSBqdXN0IG1l
YW50IHRvIHNldCBhbmQgY2xlYXIgYSBoYW5kZnVsIG9mIGJpdHMuCj4gCj4gQWNrZWQtYnk6IEJq
b3JuIEhlbGdhYXMgPGJoZWxnYWFzQGdvb2dsZS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTmljb2xh
cyBGcmF0dGFyb2xpIDxuaWNvbGFzLmZyYXR0YXJvbGlAY29sbGFib3JhLmNvbT4KClJldmlld2Vk
LWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgoKCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
