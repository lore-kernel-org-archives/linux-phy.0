Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6C20CCD1A5
	for <linux-phy@archiver.kernel.org>; Wed, 22 Oct 2025 00:14:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RGGySM96jD/0Xt7fLrz/glfUlg0A5lf0wS8HhkjKLuY=; b=oxtrjuP2h4vojD
	NaRP6SqWsN9L9WyCgQa0mtTGLVda8ASzUFDBvesvkn9Z13laxvFqj17S87MK/Q31zsqwaZcUoKaaP
	VVKgnGwUNJidii/9POe7EsXW4Cj+lVbEidZFOfPKsekIuNpWYxB+fT9U/e6bEsxSaIQL07p3xk6Da
	d/3VpOcJo3H+tMbUYckQlxybfJFedUD+UyyXKi73XWAkSYTXuxj9flrGd8rhe3llIv0pPc0s++a30
	GoEvEjjgooUcBtHHT2kVgZxX5BDIhDg1l1Rmo6fPmLR81QIzOSFpt9jCQlZHcOqRHO7db+KgnS4ut
	b9ZELsFdG146XOPq3DIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBMV8-000000011ym-0AiR;
	Wed, 22 Oct 2025 00:14:50 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBMV6-000000011yB-2fxq
	for linux-phy@lists.infradead.org;
	Wed, 22 Oct 2025 00:14:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 7D641601F6;
	Wed, 22 Oct 2025 00:14:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C51B0C4CEF1;
	Wed, 22 Oct 2025 00:14:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761092073;
	bh=qdTemEah2ZwUDwzRjVNCeMAn63LZUADIEQLUkKwzNvI=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=ZjDDTk4eNS2NWwQItnYm4fEAytnHF94dLxeWHleQAHpVRxYO4gR618BunjzSts/2O
	 dQKqqrIV5MJGXQ/6mnrDgLrC2lO/VX54XFyZFwL22MXxAE4jk9KBetXZzfrETjpiJk
	 Pak39RSQ+mhEPeaRRFm4AAthCEgbZQBchmbu8Tfn13r7F/PH7AtCMCuAPnZ7VlWj4E
	 uTLCKhBi+lf2M5oetDe5qycSvbmjc9HqXTAaF9P8DHxpr6iSUwSEbvGbbr3XAy0ghc
	 komcG6/Aozv8TU8zbF40bGCR81K3WWokPJN7sqoZSVk/F05NaiL1aYQ4fBxgFQrxIa
	 +H7lZe6V8z7Fg==
Date: Tue, 21 Oct 2025 17:14:30 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: =?UTF-8?B?VGjDqW8=?= Lebrun <theo.lebrun@bootlin.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni
 <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Nicolas Ferre
 <nicolas.ferre@microchip.com>, Claudiu Beznea <claudiu.beznea@tuxon.dev>,
 Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, =?UTF-8?B?R3I=?=
 =?UTF-8?B?w6lnb3J5?= Clement <gregory.clement@bootlin.com>, Russell King
 <linux@armlinux.org.uk>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay
 Abraham I <kishon@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Thomas Bogendoerfer
 <tsbogend@alpha.franken.de>, Philipp Zabel <p.zabel@pengutronix.de>,
 netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-clk@vger.kernel.org, Tawfik Bayouk
 <tawfik.bayouk@mobileye.com>, Thomas Petazzoni
 <thomas.petazzoni@bootlin.com>, =?UTF-8?B?QmVub8OudA==?= Monin
 <benoit.monin@bootlin.com>, Maxime Chevallier
 <maxime.chevallier@bootlin.com>, Andrew Lunn <andrew@lunn.ch>, Jerome
 Brunet <jbrunet@baylibre.com>
Subject: Re: [PATCH net-next 00/12] net: macb: EyeQ5 support (alongside
 generic PHY driver in syscon)
Message-ID: <20251021171430.579211b2@kernel.org>
In-Reply-To: <20251021-macb-eyeq5-v1-0-3b0b5a9d2f85@bootlin.com>
References: <20251021-macb-eyeq5-v1-0-3b0b5a9d2f85@bootlin.com>
MIME-Version: 1.0
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

T24gVHVlLCAyMSBPY3QgMjAyNSAxODozMjo0MSArMDIwMCBUaMOpbyBMZWJydW4gd3JvdGU6Cj4g
TWVyZ2luZyBhbGwgdGhpcyB3b24ndCBiZSBlYXN5LCBzb3JyeS4gSXMgdGhpcyBzcGxpdCBhY3Jv
c3MgdHJlZXMgT0s/Cj4gVGhlIG5ldC1uZXh0IHBhcnQgaXMgcHJldHR5IGV2aWRlbnQsIGl0IGlz
IHRoZSByZXN0IHRoYXQgYXBwZWFycwo+IGNvbXBsZXggdG8gbWVyZ2UgdG8gbWUuIEkgY2FuIHJl
c2VuZCB0aGUgc2VyaWVzIGV4cGxvZGVkIGlmIHVzZWZ1bAo+IChvciBhdCBsZWFzdCBzcGxpdCBu
ZXQtbmV4dCB2ZXJzdXMgdGhlIHJlc3QpLgoKWWVzLCBwbGVhc2UgcmVzcGluIGp1c3QgdGhlIHBh
dGNoZXMgdGhhdCBuZWVkIHRvIGdvIHZpYSBuZXQtbmV4dApmb3IgdXMgKDEsMy02PykuIFRoZSBy
ZXN0IEkgZG9uJ3QgY2FyXlcga25vdyA6KQotLSAKcHctYm90OiBjcgoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
