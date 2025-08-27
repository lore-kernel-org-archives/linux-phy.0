Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20654CA0EFF
	for <linux-phy@archiver.kernel.org>; Wed, 27 Aug 2025 07:33:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YQOzreCP4dSfa15f85hys67a2a8/2OkrdCuHWwXPEzo=; b=yLx7E8Yw0G6xW6
	tTcSKswscO0tDeRUAK4Ds/HjpYB2yHMq+6Xw7PYNkTrxio8VmO3N62RV6hi1WSeX5YwLaLUH+nr0n
	agKxI5gdD+yFMegHIrYu02r0s9lqZUesw/g64GqBEIwV9GChGhLny/gsywa8VF1WbzL4ClzswSKEO
	KUMlkDTlqRe0t1aKJu5Lm52vJaDZfZ22NTDw583U1RwF3qlh6KKGKaRSR8ZbO71h7B6NrUNyHpD00
	rfYzf5DHp7ONrt3PNZYMzrBhMpNo1HEAhz4xF9s/tJTpOqu2fbKSlr7HWK+EfOzmPoQkgfgieP34Q
	TLOzodk/YVlIzHE0NkcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urAeg-0000000ER0Z-2rZi;
	Wed, 27 Aug 2025 07:33:14 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urAcK-0000000EQVd-1SVx;
	Wed, 27 Aug 2025 07:30:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=gzeeqkroKmmZWJXoYtqTZrgkcFkhpm3FfXA6Qfi5FPg=; b=iVo9yr2xth36DqzonX9vFx6Q9J
	McIgwEEN5SfmNj7bg+tgbTGaYYzvNasO43eYVbDrdyFV/j6xFbV7b0T4yzgzteibbWXRBBY+usfp6
	hG6PET1MXfkJNh04spn4QUyfOkzp/vr92ZO8bjVVHO6hAa6nAdtZDSQrNf5ck5yQKuyN1rMnNtngc
	caPIk5xHeUr3gNx/VdtDqaQOTbNHRuwE7TkaGkLYyYDdnUNYDRxpFeHvViviVzX/R65ZINZcblCJm
	vi9feiSzyn4XlXczO9uC70J4wz2tsz8/ryZv2pX+KTWflYFwKmHuBCfYYUbMx12evekoEJKqwu1CE
	sWcm9kww==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urAcG-00000002NFm-2k3n;
	Wed, 27 Aug 2025 07:30:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=gzeeqkroKmmZWJXoYtqTZrgkcFkhpm3FfXA6Qfi5FPg=; b=onAY/ahRdxPnV3oOrlFTMxQsX1
	4/F/GUoC28qL6WdTxW50bPjN63UISSfr8rUpECTYtXUj8F6A6equvZyuPi8gKvNfIplPPmYprCEje
	uppsPP7iPfS7Ly06vK5eSP80d2opR341xk6LhR5PkC1VZGU8nu7LgogwusFd2K9ipAQrve5Nfa8sJ
	jWCQdnBzTYXNPj1AuUKZukP3eg9qFGBR7wfHOCwFc1vDrYzPVX6lW8zDfMPgZnOxxtAWIc+vREiZe
	9ejE+O/VVoVgTm3LRiNTWCXXvToZVeA4ZmCWtyvQ7U5M4imzYzWKNS8i32zcr5z7d/9Fofigj9iol
	KuwvSPJg==;
Received: from [213.244.170.152] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1urAbr-0003Q8-H8; Wed, 27 Aug 2025 09:30:19 +0200
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
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: Re: [PATCH v3 10/20] drm/rockchip: dw_hdmi_qp: switch to FIELD_PREP_WM16
 macro
Date: Wed, 27 Aug 2025 09:30:18 +0200
Message-ID: <881125850.0ifERbkFSE@phil>
In-Reply-To: <20250825-byeword-update-v3-10-947b841cdb29@collabora.com>
References: <20250825-byeword-update-v3-0-947b841cdb29@collabora.com>
 <20250825-byeword-update-v3-10-947b841cdb29@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250827_083045_661473_4FF1F016 
X-CRM114-Status: GOOD (  15.21  )
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

QW0gTW9udGFnLCAyNS4gQXVndXN0IDIwMjUsIDEwOjI4OjMwIE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgTmljb2xhcyBGcmF0dGFyb2xpOgo+IFRoZSBlcmEgb2YgaGFuZC1y
b2xsZWQgSElXT1JEX1VQREFURSBtYWNyb3MgaXMgb3ZlciwgYXQgbGVhc3QgZm9yIHRob3NlCj4g
ZHJpdmVycyB0aGF0IHVzZSBjb25zdGFudCBtYXNrcy4KPiAKPiBSZXBsYWNlIHRoaXMgZHJpdmVy
J3MgSElXT1JEX1VQREFURSB3aXRoIHRoZSBGSUVMRF9QUkVQX1dNMTYgbWFjcm8gZnJvbQo+IGh3
X2JpdGZpZWxkLmguIFdoaWxlIGF0IGl0LCBkaXNhbWJpZ3VhdGUgdGhlIEdSRiB3cml0ZSB0byBT
T0NfQ09ONyBieQo+IHNwbGl0dGluZyB0aGUgZGVmaW5pdGlvbiBpbnRvIHRoZSBpbmRpdmlkdWFs
IGJpdGZsYWdzLiBUaGlzIGlzIGRvbmUKPiBiZWNhdXNlIEZJRUxEX1BSRVBfV00xNiBzaGlmdHMg
dGhlIHZhbHVlIGZvciB1cyBhY2NvcmRpbmcgdG8gdGhlIG1hc2ssCj4gc28gd3JpdGluZyB0aGUg
bWFzayB0byBpdHNlbGYgdG8gZW5hYmxlIHR3byBiaXRzIGlzIG5vIGxvbmdlciBzb21ldGhpbmcK
PiB0aGF0IGNhbiBiZSBkb25lLiBJdCBzaG91bGQgYWxzbyBub3QgYmUgZG9uZSBhbnl3YXkgYmVj
YXVzZSBpdCBoaWRlcyB0aGUKPiB0cnVlIG1lYW5pbmcgb2YgdGhvc2UgdHdvIGluZGl2aWR1YWwg
Yml0IGZsYWdzLgo+IAo+IEhETUkgb3V0cHV0IHdpdGggdGhpcyBwYXRjaCBoYXMgYmVlbiB0ZXN0
ZWQgb24gYm90aCBSSzM1ODggYW5kIFJLMzU3Ni4KPiBPbiB0aGUgZm9ybWVyLCB3aXRoIGJvdGgg
cHJlc2VudCBIRE1JIGNvbm5lY3RvcnMuCj4gCj4gUmV2aWV3ZWQtYnk6IENyaXN0aWFuIENpb2Nh
bHRlYSA8Y3Jpc3RpYW4uY2lvY2FsdGVhQGNvbGxhYm9yYS5jb20+Cj4gVGVzdGVkLWJ5OiBDcmlz
dGlhbiBDaW9jYWx0ZWEgPGNyaXN0aWFuLmNpb2NhbHRlYUBjb2xsYWJvcmEuY29tPgo+IFNpZ25l
ZC1vZmYtYnk6IE5pY29sYXMgRnJhdHRhcm9saSA8bmljb2xhcy5mcmF0dGFyb2xpQGNvbGxhYm9y
YS5jb20+CgpSZXZpZXdlZC1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KCgoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
