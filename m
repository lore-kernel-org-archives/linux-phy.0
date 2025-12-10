Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7718BD3C922
	for <linux-phy@archiver.kernel.org>; Wed, 10 Dec 2025 16:06:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:From:To:Cc:
	Subject:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6J6M8SvKfQCVMXr6PbKI9x/vULFikHFabXVO0YKq6gg=; b=L91WBg+xv3kEbI
	Xef+UFRn5Xq/gSQmLnarzT7Cy4YoV5hh371xpyUDEk758dEEdQmCeW0+74yOpTAEnaSj1g0o4aVvG
	n95hSwC3Z6stU5z17ypgZkM/z7wZuAteEpFa4cHMbQycm/oM3UjGj/1LkJeO+Jx6e83Tov4+1N57Y
	yyzG49glIxgoVXemQEEFa+v+HTaj0WItV+BI5KUTBrGlziyPZr8KI7fyDdCAIKL64zQlWHZUjLZ+L
	KTJ+uRu3p3McnpBflGE2Az0MK/E2G7ev7AgfZgRN4XgeQB876DSiOo0A1N7Tq8ymd3Yvul/dR/WXB
	YDvbC3a6dgd8FNFxii6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTMiJ-0000000Fbif-0C0x;
	Wed, 10 Dec 2025 16:06:51 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTMiG-0000000FbgJ-0m5f
	for linux-phy@lists.infradead.org;
	Wed, 10 Dec 2025 16:06:49 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id BEB314E41B44;
	Wed, 10 Dec 2025 16:06:45 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 8DD5A60714;
	Wed, 10 Dec 2025 16:06:45 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 8B26111931A8C;
	Wed, 10 Dec 2025 17:06:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1765382804; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=IZ7YZNfW8akNqU2m1GJ0qgSiSInP3u3B1ptG7sHFuMU=;
	b=PyNv6QD+ueNmdfmWHuSzSH6pk6CG9xsrW2BAm2SFPPRN1XfAywkmLLnJad+Emev4UYCUPY
	6L45UGxXCOrPn00MKmWN/1LmbVwcRdTy2an29imcy4S6kkhtPnwSYZ8vDiwxrb6Lw2W5IZ
	Ja2b2JRStJ5sGonAOmEL/1mBQFTIMk+2BGN75aSuBmOs8HqigN0LUj4mYAY1OgdNpBqiqD
	0IdJ3mUE4eTfcrAoUY8sJQf//gkPwrniY6Z/Ww0QbOrs5ZLgegKYuuzyb1vXE+YnMega8G
	4cI1y3Bv9iuqFHTfFqxJHsKjw7GJ3j2KlIiRgBtdp4d6ptkVLPIGMEkJhyIviQ==
Mime-Version: 1.0
Date: Wed, 10 Dec 2025 17:06:41 +0100
Message-Id: <DEUNZ2R3L0LU.1CO231RCA18A6@bootlin.com>
Subject: Re: [PATCH v4 3/7] clk: eyeq: use the auxiliary device creation
 helper
Cc: <linux-mips@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <linux-clk@vger.kernel.org>, =?utf-8?q?Beno=C3=AEt_Monin?=
 <benoit.monin@bootlin.com>, "Maxime Chevallier"
 <maxime.chevallier@bootlin.com>, "Tawfik Bayouk"
 <tawfik.bayouk@mobileye.com>, "Thomas Petazzoni"
 <thomas.petazzoni@bootlin.com>, "Jerome Brunet" <jbrunet@baylibre.com>
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
 <20251124-macb-phy-v4-3-955c625a81a7@bootlin.com>
In-Reply-To: <20251124-macb-phy-v4-3-955c625a81a7@bootlin.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251210_080648_354688_4D47C525 
X-CRM114-Status: UNSURE (   5.96  )
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
IEZyb206IEplcm9tZSBCcnVuZXQgPGpicnVuZXRAYmF5bGlicmUuY29tPgo+Cj4gVGhlIGF1eGls
aWFyeSBkZXZpY2UgY3JlYXRpb24gb2YgdGhpcyBkcml2ZXIgaXMgc2ltcGxlIGVub3VnaCB0bwo+
IHVzZSB0aGUgYXZhaWxhYmxlIGF1eGlsaWFyeSBkZXZpY2UgY3JlYXRpb24gaGVscGVyLgo+Cj4g
VXNlIGl0IGFuZCByZW1vdmUgc29tZSBib2lsZXJwbGF0ZSBjb2RlLgo+Cj4gVGVzdGVkLWJ5OiBU
aMOpbyBMZWJydW4gPHRoZW8ubGVicnVuQGJvb3RsaW4uY29tPiAgIyBPbiBNb2JpbGV5ZSBFeWVR
NQo+IFNpZ25lZC1vZmYtYnk6IEplcm9tZSBCcnVuZXQgPGpicnVuZXRAYmF5bGlicmUuY29tPgo+
IFNpZ25lZC1vZmYtYnk6IFRow6lvIExlYnJ1biA8dGhlby5sZWJydW5AYm9vdGxpbi5jb20+CgpS
ZXZpZXdlZC1ieTogTHVjYSBDZXJlc29saSA8bHVjYS5jZXJlc29saUBib290bGluLmNvbT4KCi0t
Ckx1Y2EgQ2VyZXNvbGksIEJvb3RsaW4KRW1iZWRkZWQgTGludXggYW5kIEtlcm5lbCBlbmdpbmVl
cmluZwpodHRwczovL2Jvb3RsaW4uY29tCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
