Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C11ACCD195
	for <linux-phy@archiver.kernel.org>; Wed, 22 Oct 2025 07:41:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:From:To:Cc:
	Subject:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kcv/YVDyq/iATAPXUYR8snhJo6fEy4ii14J5NIhFq5A=; b=1h5zrXy0wbh0+Q
	ylG0FyWszwc6ufIpmxnmTcKgy0STho2cx+t0rjgvB+SiywNLIv7QBFObVzh0FbS623sg82IQD/jFo
	hWNyyoHhNgth/8gB2cbe0fnbpYEcTv1+nH2QO8KrpWxqa/lLQKQFx3XG8a9IvxAOqnVm2gENIlLhp
	BS2anl2/2RDsbxhDOSadUK+AnTlT6yRFmdBTUFVr6eMkV+CJ+t9WCZ74rdVlWEHwBZZyFEhOw/zSU
	55vqMgWL6peY+/T8kQOLJVmjTqWTSr0w4E4vYq7HV42+D9AwcpInOZCVtEIkfF5Um8NM5bDNppsnl
	4tTJevT6iNHvEVHO0EEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBTTZ-00000001uzU-0Q7M;
	Wed, 22 Oct 2025 07:41:41 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBTTW-00000001uz2-04Wh
	for linux-phy@lists.infradead.org;
	Wed, 22 Oct 2025 07:41:40 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 39B4F4E41278;
	Wed, 22 Oct 2025 07:41:34 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 0A58E606DC;
	Wed, 22 Oct 2025 07:41:34 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 68B39102F241B;
	Wed, 22 Oct 2025 09:41:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1761118892; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=w6Pk318+uWlJig7kSmhciOgwzKqt9hCCrIYqqL4yqNY=;
	b=PkTnWtr1jkPN412arglI0mz2NhL3TRAuP2uayrqji+VoDe4d/FIjOWZ1cc63SLUc2Lo+Jd
	FIt6sYzMUROvjKK/8SgV+CUFUlBPL8rb9ABg11NRZs/srHm3UId29ZEnEIgtzwZi7hu8Bk
	kMs8qKh0az23BYaou/Ar5XWg2AlYUT9Siy4Oo04ojU8ZXk4QSchJV9XKZvEZQhXNDpszvs
	oAABVn1+T2IIXdMSECtUVh5yyhkYANZOUz39ovz7lY/SSCagG40w0uUti1Mtx1aEyaKc5L
	g+6yf9EKsEizPO15T9Qt6fJBKtKZp2axtAOPGBbrxKquY0a8h1C/XZ9rgavKgA==
Mime-Version: 1.0
Date: Wed, 22 Oct 2025 09:41:24 +0200
Message-Id: <DDOOJIQS8DK2.1QUEWN5FYYQ32@bootlin.com>
Subject: Re: [PATCH net-next 00/12] net: macb: EyeQ5 support (alongside
 generic PHY driver in syscon)
Cc: "Andrew Lunn" <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, "Eric Dumazet" <edumazet@google.com>, "Paolo Abeni"
 <pabeni@redhat.com>, "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Nicolas Ferre"
 <nicolas.ferre@microchip.com>, "Claudiu Beznea" <claudiu.beznea@tuxon.dev>,
 "Vladimir Kondratiev" <vladimir.kondratiev@mobileye.com>,
 =?utf-8?q?Gr=C3=A9gory_Clement?= <gregory.clement@bootlin.com>, "Russell
 King" <linux@armlinux.org.uk>, "Vinod Koul" <vkoul@kernel.org>, "Kishon
 Vijay Abraham I" <kishon@kernel.org>, "Michael Turquette"
 <mturquette@baylibre.com>, "Stephen Boyd" <sboyd@kernel.org>, "Thomas
 Bogendoerfer" <tsbogend@alpha.franken.de>, "Philipp Zabel"
 <p.zabel@pengutronix.de>, <netdev@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-mips@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <linux-clk@vger.kernel.org>, "Tawfik Bayouk" <tawfik.bayouk@mobileye.com>,
 "Thomas Petazzoni" <thomas.petazzoni@bootlin.com>,
 =?utf-8?q?Beno=C3=AEt_Monin?= <benoit.monin@bootlin.com>, "Maxime
 Chevallier" <maxime.chevallier@bootlin.com>, "Andrew Lunn"
 <andrew@lunn.ch>, "Jerome Brunet" <jbrunet@baylibre.com>
To: "Jakub Kicinski" <kuba@kernel.org>, =?utf-8?q?Th=C3=A9o_Lebrun?=
 <theo.lebrun@bootlin.com>
From: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20251021-macb-eyeq5-v1-0-3b0b5a9d2f85@bootlin.com>
 <20251021171430.579211b2@kernel.org>
In-Reply-To: <20251021171430.579211b2@kernel.org>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_004138_234104_1A155E9F 
X-CRM114-Status: UNSURE (   6.65  )
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

T24gV2VkIE9jdCAyMiwgMjAyNSBhdCAyOjE0IEFNIENFU1QsIEpha3ViIEtpY2luc2tpIHdyb3Rl
Ogo+IE9uIFR1ZSwgMjEgT2N0IDIwMjUgMTg6MzI6NDEgKzAyMDAgVGjDqW8gTGVicnVuIHdyb3Rl
Ogo+PiBNZXJnaW5nIGFsbCB0aGlzIHdvbid0IGJlIGVhc3ksIHNvcnJ5LiBJcyB0aGlzIHNwbGl0
IGFjcm9zcyB0cmVlcyBPSz8KPj4gVGhlIG5ldC1uZXh0IHBhcnQgaXMgcHJldHR5IGV2aWRlbnQs
IGl0IGlzIHRoZSByZXN0IHRoYXQgYXBwZWFycwo+PiBjb21wbGV4IHRvIG1lcmdlIHRvIG1lLiBJ
IGNhbiByZXNlbmQgdGhlIHNlcmllcyBleHBsb2RlZCBpZiB1c2VmdWwKPj4gKG9yIGF0IGxlYXN0
IHNwbGl0IG5ldC1uZXh0IHZlcnN1cyB0aGUgcmVzdCkuCj4KPiBZZXMsIHBsZWFzZSByZXNwaW4g
anVzdCB0aGUgcGF0Y2hlcyB0aGF0IG5lZWQgdG8gZ28gdmlhIG5ldC1uZXh0Cj4gZm9yIHVzICgx
LDMtNj8pLiBUaGUgcmVzdCBJIGRvbid0IGNhcl5XIGtub3cgOikKClN1cmUgdGhpbmchIE9ubHkg
bmV0IGJlYXV0eSBpcyBwcmVzZW50IGluIFYyLgoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGtt
bC8yMDI1MTAyMi1tYWNiLWV5ZXE1LXYyLTAtN2MxNDBhYmIwNTgxQGJvb3RsaW4uY29tLwoKVGhh
bmtzLAoKLS0KVGjDqW8gTGVicnVuLCBCb290bGluCkVtYmVkZGVkIExpbnV4IGFuZCBLZXJuZWwg
ZW5naW5lZXJpbmcKaHR0cHM6Ly9ib290bGluLmNvbQoKCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
