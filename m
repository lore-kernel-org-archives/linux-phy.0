Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B620EC79FB6
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 12:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DYlf4KOGZbCMVS6f0eskX64UJLo7HqEKyf2RB+cRH+w=; b=lLjla+saiguKTQ
	kZCblWb2JEqeStK83UFu3grk2b5QVQnadySDIqXSGLQZostzg5+jIP7xX14IdJuEIhybtnj4CqvN2
	/8pdZU4yOnhY35ApQmCPiIaZMFaY7Jq7dZHtlJ444a7S/nySSP95p118jZUUzibefnOOgd732YEZk
	l1C2WOl6sZV/gFJ4A2Md7OXuFLeBxhw+s97xcPP4Yvur4dHjruq5Pq/EHBHFdwNlW6Z9dA1uneVmp
	Nar+ySSnTJMC0N5xgE0mZ598r4MOWiJoSmu2CXDcR7n+vP7jZHImeFDholBJCFV8Uib5gCy4rD6RQ
	d2+Fc1IVBDGWC7EbEUaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4HpK-0000000Bi4V-11A7;
	Wed, 09 Sep 2026 12:54:58 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4HpH-0000000Bi3k-1ZFa
	for linux-phy@lists.infradead.org;
	Wed, 09 Sep 2026 12:54:57 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id E0DD94E41372;
	Wed,  9 Sep 2026 12:54:50 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id AC88760448;
	Wed,  9 Sep 2026 12:54:50 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 2B09611C7AF7D;
	Wed,  9 Sep 2026 14:54:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1788958485; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=jAH9WRQ0ggsOvsHdlKlkxoYUhZgdRnYF6+2XNgzh1NU=;
	b=pBXlcImemWNdneh0k1Hj1bg9DcpIx2uZGLw6KPAxLtiNBI2GNPFvvdAYeKNLB46Nt29ChS
	7LCgusQF9x2Ekjb4zSDxGZBUL2Jj8oUdPBhE2yFI7GtWt3vKV7gGXVE6jYhTaX4gyOWj4w
	yIYiVLSGoNRWEL+p0q+2aWVNhR1O/OQhR6kt2DoT3gas73BfLJjMuYOUyDlLSJt1zgXZ5U
	Ndz67fuFW6UK0Iv8f407aA9RfKgde8mwABubg6je9fsY6zVCMuEnkrBf+HGvomebcuAHIj
	SURtqMPp/Cy8qmP4OE8V1F0901A3D0YsFs69NnBTkUh3QG4F2ZShHXEPHPqrGw==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Arnd Bergmann <arnd@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, Linus Walleij
 <linusw@kernel.org>, Russell King <linux@armlinux.org.uk>
Cc: Drew Fustini <fustini@kernel.org>, Arnd Bergmann <arnd@arndb.de>, Rob
 Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Liviu Dudau
 <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@kernel.org>, Lorenzo
 Pieralisi <lpieralisi@kernel.org>, Frank Li <Frank.Li@nxp.com>, Sascha
 Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team
 <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, Vladimir
 Zapolskiy <vz@mleia.com>, Stefan Agner <stefan@agner.ch>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@foss.st.com>, Aaro Koskinen <aaro.koskinen@iki.fi>,
 Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman
 <khilman@baylibre.com>, Roger Quadros <rogerq@kernel.org>, Tony Lindgren
 <tony@atomide.com>, Nicolas Ferre <nicolas.ferre@microchip.com>, Claudiu
 Beznea <claudiu.beznea@tuxon.dev>, Andrew Lunn <andrew@lunn.ch>, Sebastian
 Hesselbarth <sebastian.hesselbarth@gmail.com>, Robert Jarzmik
 <robert.jarzmik@free.fr>, Kristoffer Ericson
 <kristoffer.ericson@gmail.com>, Ethan Nelson-Moore
 <enelsonmoore@gmail.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Alexander Sverdlin <alexander.sverdlin@siemens.com>, Shawn Guo
 <shawnguo@kernel.org>, Karl Mehltretter <kmehltretter@gmail.com>, "David
 Hildenbrand (Arm)" <david@kernel.org>, Nicolas Pitre
 <npitre@baylibre.com>, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, imx@lists.linux.dev,
 linux-stm32@st-md-mailman.stormreply.com, linux-omap@vger.kernel.org,
 Alexander Clouter <alex@digriz.org.uk>, "Jeremy J. Peper"
 <jeremy@jeremypeper.com>, Damien Le Moal <dlemoal@kernel.org>, Niklas
 Cassel <cassel@kernel.org>, Ulf Hansson <ulfh@kernel.org>, Krzysztof
 =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Manivannan Sadhasivam
 <mani@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul
 <vkoul@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, Daniel
 Lezcano <daniel.lezcano@kernel.org>, Guenter Roeck <linux@roeck-us.net>,
 Mark Brown <broonie@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>,
 Thomas Weissschuh <thomas.weissschuh@linutronix.de>,
 linux-ide@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-rtc@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-sound@vger.kernel.org,
 linux-gpio@vger.kernel.org
Subject: Re: [PATCH 05/13] ARM: orion/dove/mv78xx0: remove all board files
In-Reply-To: <20260908152808.3928630-6-arnd@kernel.org>
References: <20260908152808.3928630-1-arnd@kernel.org>
 <20260908152808.3928630-6-arnd@kernel.org>
Date: Wed, 09 Sep 2026 14:54:34 +0200
Message-ID: <87pkymmvp1.fsf@BLaptop.bootlin.com>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260909_055455_547203_3478EC40 
X-CRM114-Status: GOOD (  11.46  )
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

QXJuZCBCZXJnbWFubiA8YXJuZEBrZXJuZWwub3JnPiB3cml0ZXM6Cgo+IEZyb206IEFybmQgQmVy
Z21hbm4gPGFybmRAYXJuZGIuZGU+Cj4KPiBUaGUgJ29yaW9uJyBwbGF0Zm9ybSBpcyB0aGUgcHJl
ZGVjZXNzb3IgdG8gd2hhdCBsaW51eCBub3cgY2FsbHMgdGhlCj4gJ212ZWJ1JyBsaW5lIG9mIE1h
cnZlbGwgU29DcywgYW5kIG9yaWdpbmFsbHkgY292ZXJlZCBvcmlvbjV4LAo+IG12Nzh4eDAsIGtp
cmt3b29kLCBkb3ZlIGFuZCBhIGZldyBvdGhlcnMgdGhhdCBkbyBub3QgaGF2ZSBhbnkKPiB1cHN0
cmVhbSBzdXBwb3J0IGF0IHRoZSBtb21lbnQuCj4KPiBPbmx5IGEgZmV3IGJvYXJkIGZpbGVzIHJl
bWFpbiBoZXJlLCB0aGVzZSBhcmUgdGhlIG9uZXMgbGVmdAo+IGluIDIwMjIgYm9hcmQgZmlsZSBw
dXJnZSBiZWNhdXNlIHRoZXkgaGFkIHNvbWUgbGV2ZWwgb2Ygc3VwcG9ydAo+IGluIERlYmlhbiBv
ciBPcGVuV1JULCBtb3N0bHkgZm9yIGNvbW1lcmNpYWwgTkFTIG9yIHJvdXRlciBib3hlcy4KPiBU
aGlzIGRpc3RybyBzdXBwb3J0IGlzIG5vdyBnb25lLCBhbmQgbm9ib2R5IGhhcyBjb252ZXJ0ZWQg
dGhlCj4gYm9hcmQgZmlsZXMgdG8gZGV2aWNldHJlZSwgdGhvdWdoIHRoZSBvcmlvbjV4IGFuZCBk
b3ZlIHBsYXRmb3Jtcwo+IGFsc28gY29tZSB3aXRoIGRldmljZXRyZWUgc3VwcG9ydCBmb3Igc29t
ZSBvdGhlciBtYWNoaW5lcy4KPgoKQWNrZWQtYnk6IEdyZWdvcnkgQ0xFTUVOVCA8Z3JlZ29yeS5j
bGVtZW50QGJvb3RsaW4uY29tPgoKVGhhbmtzLAoKR3JlZ29yeQotLSAKR3LDqWdvcnkgQ0xFTUVO
VCwgQm9vdGxpbgpFbWJlZGRlZCBMaW51eCBhbmQgS2VybmVsIGVuZ2luZWVyaW5nCmh0dHBzOi8v
Ym9vdGxpbi5jb20KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
