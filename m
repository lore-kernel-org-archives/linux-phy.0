Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 853D9D3C927
	for <linux-phy@archiver.kernel.org>; Wed, 10 Dec 2025 16:06:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:From:To:Cc:
	Subject:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g4lxSjDwUz1/WQ+8JBqwC5W8Bj7aCxSdKk3IE73/C1E=; b=ybkuJgKd8U+0Jr
	iYop8NLelhrIz3EE7ElzHCGqisSdPo0sYV6ZwkBT51tetPeDp/lwImYfbuVNfn7fXDS6a84lSRcd5
	nOYh5a+syze7svRzWTt+QsyGsWknP/Xe+Go3tXEPcYqZAU0Te2MEELF0v+afZmVwEeX0U4dDABmsA
	Xs14xQKEcsHWzrpWoQIpPBqBzqjyD6xCWkpS+JnCcsrZCBdWT1Zktc6Ieti2jEJ8dYlyA3SceHfsg
	bdTC2Ac80r1ok49U/P9yB+Ejw97f58zLD6TwaoRRWe/68KOFr9WoijeZzNp9+/Fxr+Qs7qOzGjlxL
	JjyrRay5Kk66KZrvRxAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTMiN-0000000FblN-1Dsn;
	Wed, 10 Dec 2025 16:06:55 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTMiK-0000000Fbj4-2asD
	for linux-phy@lists.infradead.org;
	Wed, 10 Dec 2025 16:06:54 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 3589C4E41B44;
	Wed, 10 Dec 2025 16:06:51 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id F33E560714;
	Wed, 10 Dec 2025 16:06:50 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 28B0F11931A8F;
	Wed, 10 Dec 2025 17:06:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1765382810; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=j7IMaXSGae8/zSMNH5tabWZidQgz9x1xyATYXrO5kSw=;
	b=p5gpe+TY6I51MtjCELzk2RuavVYrxS0W4GzteyJMuGq/AobyDzlbDT6HQpOhBePE+lxBjS
	vh6x8gTEGWxjhkBfVtvruvJWHlZZU1oonAzdrSsn+d4Mlp4QRVgz2SmQ+EATau9Op5jfa9
	EYXw1yzBETDD2qFZky97F+TMoyIDj/ISZVbsXTHnVP41gA5LDFbE2ncfmAJnVwmmussDaW
	P/G62UzJbkbnDna9clHZhjRVOnnQA7eeZjksxcw634AyCJH346fAYQTyaU+SU5uglrFRkm
	BBpvVyqUgkFjprwvoNcIFB9Jt8BvXbHy/OBJzX+rwQKn7HkabEbs3y4uohsHtw==
Mime-Version: 1.0
Date: Wed, 10 Dec 2025 17:06:47 +0100
Message-Id: <DEUNZ5TYSY2E.1QO656BT3YQ5D@bootlin.com>
Subject: Re: [PATCH v4 4/7] clk: eyeq: add EyeQ5 children auxiliary device
 for generic PHYs
Cc: <linux-mips@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <linux-clk@vger.kernel.org>, =?utf-8?q?Beno=C3=AEt_Monin?=
 <benoit.monin@bootlin.com>, "Maxime Chevallier"
 <maxime.chevallier@bootlin.com>, "Tawfik Bayouk"
 <tawfik.bayouk@mobileye.com>, "Thomas Petazzoni"
 <thomas.petazzoni@bootlin.com>
To: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>, "Vladimir
 Kondratiev" <vladimir.kondratiev@mobileye.com>,
 =?utf-8?q?Gr=C3=A9gory_Clement?= <gregory.clement@bootlin.com>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>, "Vinod Koul" <vkoul@kernel.org>,
 "Kishon Vijay Abraham I" <kishon@kernel.org>, "Michael Turquette"
 <mturquette@baylibre.com>, "Stephen Boyd" <sboyd@kernel.org>, "Philipp
 Zabel" <p.zabel@pengutronix.de>, "Thomas Bogendoerfer"
 <tsbogend@alpha.franken.de>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
X-Mailer: aerc 0.20.1
References: <20251124-macb-phy-v4-0-955c625a81a7@bootlin.com>
 <20251124-macb-phy-v4-4-955c625a81a7@bootlin.com>
In-Reply-To: <20251124-macb-phy-v4-4-955c625a81a7@bootlin.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251210_080652_792152_F7E7A05E 
X-CRM114-Status: UNSURE (   4.98  )
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

T24gTW9uIE5vdiAyNCwgMjAyNSBhdCAzOjQxIFBNIENFVCwgVGjDqW8gTGVicnVuIHdyb3RlOgo+
IEdyb3cgb3VyIGNsay1leWVxIGZhbWlseTsgaXQga25vd3MgaG93IHRvIHNwYXduIHJlc2V0IHBy
b3ZpZGVyIGFuZCBwaW4KPiBjb250cm9sbGVyIGNoaWxkcmVuLiBFeHBhbmQgd2l0aCBhIGdlbmVy
aWMgUEhZIGRyaXZlciBvbiBFeWVRNS4KPgo+IFNpZ25lZC1vZmYtYnk6IFRow6lvIExlYnJ1biA8
dGhlby5sZWJydW5AYm9vdGxpbi5jb20+CgpSZXZpZXdlZC1ieTogTHVjYSBDZXJlc29saSA8bHVj
YS5jZXJlc29saUBib290bGluLmNvbT4KCi0tCkx1Y2EgQ2VyZXNvbGksIEJvb3RsaW4KRW1iZWRk
ZWQgTGludXggYW5kIEtlcm5lbCBlbmdpbmVlcmluZwpodHRwczovL2Jvb3RsaW4uY29tCgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
