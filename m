Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72F83CFD313
	for <linux-phy@archiver.kernel.org>; Mon, 24 Nov 2025 14:41:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bhHznSGxvmhaY//iMKs+gCzdii3GWU5Ak3qGRYka3xM=; b=GUtoq55moHGIq1
	NDifhXVInWxG9DtI0R6DdODykfXF+c4koKBdTCMfCByyzS5wr4LpaxaaoDOus6aYCq7VdjaCEBB/a
	POazHDty+a3k34IUAwAiBlgORxrF3hw8ygT1UyQiWC6Qw71KKS3shFyJNQh0cUYzpuAT2NoWGf/bg
	t2DC5/f66T/2cdA0H2jb8NfqOrF9uVWEXIvtHFggz2KvPY9p+xbVlgdosYmQXK8IDJ349GOUosXeU
	m10W9AIvkHn4wSAearECpi1dGGkK5WjzspxeKDFYJWxo9FSMGSEI911EoU7IJP6MFQs6buxa55Ujr
	hxEyPcRcwaZg70FpM+Sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNXl0-0000000BrYA-2Eer;
	Mon, 24 Nov 2025 14:41:37 +0000
Received: from smtpout-04.galae.net ([185.171.202.116])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNXkx-0000000BrVt-15cz
	for linux-phy@lists.infradead.org;
	Mon, 24 Nov 2025 14:41:32 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 18602C139AA;
	Mon, 24 Nov 2025 14:41:07 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id ABFB3606FC;
	Mon, 24 Nov 2025 14:41:29 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 0F39D10371DB3;
	Mon, 24 Nov 2025 15:41:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1763995288; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=ve9CapSEWEKtu43skVGcR+S7+2vr8yoZ+6wP4hyPLao=;
	b=TOz/Ddzq7TsHDiah+iccr332hCxp8J2KmY5VJ6aksb3CFKVt2+KPM4o1dEscA3wc1876/Z
	+78RoGIgS5/4l1N72gf1RbwCHnGnGINtMEa30vCSDw1+3hyNlJGo6QvSE1KO8leOIMnhrM
	IHD1hc8zgD+YxYvISsxsILnmRccQmmdTjPnh2Dy4FRmcGIy+ZP0Wutox5zCG509M5gQkZq
	Xp7UcNs9u9H9Cpv47cHYgu5a9g8+59YwfEXrM6AhVtmIAYnBu+6rjRzM0cHxwyvAO3jV7M
	/4FnLANd+jT4ZDFxP3zsum1kpduuFDkDOfKS+bDT9XnyKocYFJMYN3CKKRk35g==
From: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
Date: Mon, 24 Nov 2025 15:41:08 +0100
Subject: [PATCH v4 7/7] MIPS: mobileye: eyeq5-epm: add two Cadence GEM
 Ethernet PHYs
MIME-Version: 1.0
Message-Id: <20251124-macb-phy-v4-7-955c625a81a7@bootlin.com>
References: <20251124-macb-phy-v4-0-955c625a81a7@bootlin.com>
In-Reply-To: <20251124-macb-phy-v4-0-955c625a81a7@bootlin.com>
To: Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
 =?utf-8?q?Gr=C3=A9gory_Clement?= <gregory.clement@bootlin.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Cc: linux-mips@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-clk@vger.kernel.org, 
 =?utf-8?q?Beno=C3=AEt_Monin?= <benoit.monin@bootlin.com>, 
 Maxime Chevallier <maxime.chevallier@bootlin.com>, 
 Tawfik Bayouk <tawfik.bayouk@mobileye.com>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>, 
 Andrew Lunn <andrew@lunn.ch>
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251124_064131_453816_238648F5 
X-CRM114-Status: UNSURE (   6.53  )
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
CgpSZXZpZXdlZC1ieTogQW5kcmV3IEx1bm4gPGFuZHJld0BsdW5uLmNoPgpBY2tlZC1ieTogVGhv
bWFzIEJvZ2VuZG9lcmZlciA8dHNib2dlbmRAYWxwaGEuZnJhbmtlbi5kZT4KU2lnbmVkLW9mZi1i
eTogVGjDqW8gTGVicnVuIDx0aGVvLmxlYnJ1bkBib290bGluLmNvbT4KLS0tCiBhcmNoL21pcHMv
Ym9vdC9kdHMvbW9iaWxleWUvZXllcTUtZXBtNS5kdHMgfCAyNiArKysrKysrKysrKysrKysrKysr
KysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDI2IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9h
cmNoL21pcHMvYm9vdC9kdHMvbW9iaWxleWUvZXllcTUtZXBtNS5kdHMgYi9hcmNoL21pcHMvYm9v
dC9kdHMvbW9iaWxleWUvZXllcTUtZXBtNS5kdHMKaW5kZXggOWZjMWExYjBhODFiLi5iYWJmNTI3
MzFlYTYgMTAwNjQ0Ci0tLSBhL2FyY2gvbWlwcy9ib290L2R0cy9tb2JpbGV5ZS9leWVxNS1lcG01
LmR0cworKysgYi9hcmNoL21pcHMvYm9vdC9kdHMvbW9iaWxleWUvZXllcTUtZXBtNS5kdHMKQEAg
LTI5LDMgKzI5LDI5IEBAIHRlbXBlcmF0dXJlLXNlbnNvckA0OCB7CiAJCWxhYmVsID0gIlU2MCI7
CiAJfTsKIH07CisKKyZtYWNiMCB7CisJcGh5LW1vZGUgPSAic2dtaWkiOworCXBoeS1oYW5kbGUg
PSA8Jm1hY2IwX3BoeT47CisKKwltZGlvIHsKKwkJI2FkZHJlc3MtY2VsbHMgPSA8MT47CisJCSNz
aXplLWNlbGxzID0gPDA+OworCQltYWNiMF9waHk6IGV0aGVybmV0LXBoeUBlIHsKKwkJCXJlZyA9
IDwweGU+OworCQl9OworCX07Cit9OworCismbWFjYjEgeworCXBoeS1tb2RlID0gInJnbWlpLWlk
IjsKKwlwaHktaGFuZGxlID0gPCZtYWNiMV9waHk+OworCisJbWRpbyB7CisJCSNhZGRyZXNzLWNl
bGxzID0gPDE+OworCQkjc2l6ZS1jZWxscyA9IDwwPjsKKwkJbWFjYjFfcGh5OiBldGhlcm5ldC1w
aHlAZSB7CisJCQlyZWcgPSA8MHhlPjsKKwkJfTsKKwl9OworfTsKCi0tIAoyLjUxLjIKCgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
