Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B064CCD1A7
	for <linux-phy@archiver.kernel.org>; Tue, 21 Oct 2025 16:33:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4KbgzlGmktCC5hGr2GQOkwU5SwhlxfUsjMf2si7B3Qw=; b=1jjobXpLWqGjgW
	qeHOYRoKJInt9/mnKarY+1E1MUlV9ACflub21WEUgwX/JDGOQLx/uxKmF4tGGBz0pyxUkCkPfOMnT
	vPfEtVoblJo1tbzKE07g1VzIwo9ZqTV9WSZzZzXpEKnJxWxVs40qyQUUAUqMp6PckBmIho8wnadNm
	htPHosRIaYwyupuchKpGwBPyXj6urGcUglG97QP8O05IJNFMmKP44hTOqn/1NIE91jS43BzR8xIsy
	tZZo6syqkYOT8bSaax9L8KG0H3ACc0a6bjMqZicyrSmDLco9aW2HMm3YwYN69cFvcXSTxn8eHFDR4
	sSMBErqIKPn4bpT0LMeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBFIw-0000000072U-4AeL;
	Tue, 21 Oct 2025 16:33:46 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBFIt-0000000070m-23UZ
	for linux-phy@lists.infradead.org;
	Tue, 21 Oct 2025 16:33:45 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 145AE4E41242;
	Tue, 21 Oct 2025 16:33:42 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id DDE9E60680;
	Tue, 21 Oct 2025 16:33:41 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 184FE102F241C;
	Tue, 21 Oct 2025 18:33:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1761064420; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=iTiW6J9ezHzkr5T/PBNfpX9M9qHogdCahO4t6SNr+IY=;
	b=gb8fpeWij1R7TR5EcR9xOhp65un2u2vMHve52XCk+CehX/rN5+aYJSr+eMRz3+OvkDLRyh
	IUezuhhx2r/AsGirkrBvcBxXD4oku6EdoNgZkkyufPIJXarnFSCuJe6wFqIFcx6r5ftBaO
	ZOXmi+t5SkBCwJ8lJlGbWY1V98BgkmrsfRNj6jhsz1zUSdOA7+by2/t32456j/bttUccBY
	0JbncKWdr7jfGXY2jheA2XhglDCJXoP1SB5Qoxqx1SnM+tcthz6CTEOHkj13G9wHf0ruwP
	cZnPE1kdUpwKCuSnl3vwuo/KoWF/wg8UsPUjGgQxGhJPnkRGNZT77PgnU47ZGQ==
From: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
Date: Tue, 21 Oct 2025 18:32:53 +0200
Subject: [PATCH net-next 12/12] MIPS: mobileye: eyeq5-epm: add two Cadence
 GEM Ethernet PHYs
MIME-Version: 1.0
Message-Id: <20251021-macb-eyeq5-v1-12-3b0b5a9d2f85@bootlin.com>
References: <20251021-macb-eyeq5-v1-0-3b0b5a9d2f85@bootlin.com>
In-Reply-To: <20251021-macb-eyeq5-v1-0-3b0b5a9d2f85@bootlin.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Nicolas Ferre <nicolas.ferre@microchip.com>, 
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
 Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
 =?utf-8?q?Gr=C3=A9gory_Clement?= <gregory.clement@bootlin.com>, 
 Russell King <linux@armlinux.org.uk>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, 
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-clk@vger.kernel.org, 
 Tawfik Bayouk <tawfik.bayouk@mobileye.com>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 =?utf-8?q?Beno=C3=AEt_Monin?= <benoit.monin@bootlin.com>, 
 Maxime Chevallier <maxime.chevallier@bootlin.com>, 
 =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>, 
 Andrew Lunn <andrew@lunn.ch>
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_093343_666958_57B163E1 
X-CRM114-Status: UNSURE (   6.02  )
X-CRM114-Notice: Please train this message.
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

VGhlIE1vYmlsZXllIEV5ZVE1IGV2YWwgYm9hcmQgKEVQTSkgZW1iZWRzIHR3byBNRElPIFBIWXMu
CgpSZXZpZXdlZC1ieTogQW5kcmV3IEx1bm4gPGFuZHJld0BsdW5uLmNoPgpTaWduZWQtb2ZmLWJ5
OiBUaMOpbyBMZWJydW4gPHRoZW8ubGVicnVuQGJvb3RsaW4uY29tPgotLS0KIGFyY2gvbWlwcy9i
b290L2R0cy9tb2JpbGV5ZS9leWVxNS1lcG01LmR0cyB8IDI2ICsrKysrKysrKysrKysrKysrKysr
KysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMjYgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2Fy
Y2gvbWlwcy9ib290L2R0cy9tb2JpbGV5ZS9leWVxNS1lcG01LmR0cyBiL2FyY2gvbWlwcy9ib290
L2R0cy9tb2JpbGV5ZS9leWVxNS1lcG01LmR0cwppbmRleCA5ZmMxYTFiMGE4MWIuLmJhYmY1Mjcz
MWVhNiAxMDA2NDQKLS0tIGEvYXJjaC9taXBzL2Jvb3QvZHRzL21vYmlsZXllL2V5ZXE1LWVwbTUu
ZHRzCisrKyBiL2FyY2gvbWlwcy9ib290L2R0cy9tb2JpbGV5ZS9leWVxNS1lcG01LmR0cwpAQCAt
MjksMyArMjksMjkgQEAgdGVtcGVyYXR1cmUtc2Vuc29yQDQ4IHsKIAkJbGFiZWwgPSAiVTYwIjsK
IAl9OwogfTsKKworJm1hY2IwIHsKKwlwaHktbW9kZSA9ICJzZ21paSI7CisJcGh5LWhhbmRsZSA9
IDwmbWFjYjBfcGh5PjsKKworCW1kaW8geworCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKKwkJI3Np
emUtY2VsbHMgPSA8MD47CisJCW1hY2IwX3BoeTogZXRoZXJuZXQtcGh5QGUgeworCQkJcmVnID0g
PDB4ZT47CisJCX07CisJfTsKK307CisKKyZtYWNiMSB7CisJcGh5LW1vZGUgPSAicmdtaWktaWQi
OworCXBoeS1oYW5kbGUgPSA8Jm1hY2IxX3BoeT47CisKKwltZGlvIHsKKwkJI2FkZHJlc3MtY2Vs
bHMgPSA8MT47CisJCSNzaXplLWNlbGxzID0gPDA+OworCQltYWNiMV9waHk6IGV0aGVybmV0LXBo
eUBlIHsKKwkJCXJlZyA9IDwweGU+OworCQl9OworCX07Cit9OwoKLS0gCjIuNTEuMQoKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
