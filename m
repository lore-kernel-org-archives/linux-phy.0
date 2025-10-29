Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9AD4CCF9EB
	for <linux-phy@archiver.kernel.org>; Wed, 29 Oct 2025 15:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:From:To:Cc:
	Subject:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RiiI3VTCCLLJ+gtrj/qqKaJetF7wpA0RDPTeCll80gU=; b=ZJGrR3Fyz7iM82
	BHwWai3DVylvw/zgAXritoGm9QtJj3uyNX6s85V/BIWRbxsSge1XBgScOgheLa1A1l6i8R97XILzO
	l/i37ZDJrTN87pxc4/f9I5aO26HhDo6+HwhLw2CvdhI1CoWTjMZWJZtRsw91LVt8cVmbmm2uPanbX
	uaZM6ocJDnQqm0vESDHSqB1gpxq3YDNIjNtZzl4aWcUA64u00iQXdIu1WVb5c2fXhBm4Y194aB//i
	FwGqfVcD756Mx+1lEZRHEU8+lz35ajE4n4j73CfCWEMRPVotdiXzFoF+9pwIEfZhMq+p1/fJ91KMN
	g+EtIO7mhGIA3aeO3iSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE8K5-00000001qKf-1gi8;
	Wed, 29 Oct 2025 15:42:53 +0000
Received: from smtpout-04.galae.net ([185.171.202.116])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE8K2-00000001qIs-0xnl
	for linux-phy@lists.infradead.org;
	Wed, 29 Oct 2025 15:42:52 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 2B48AC0DA8B;
	Wed, 29 Oct 2025 15:42:26 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 6CDF3606E8;
	Wed, 29 Oct 2025 15:42:46 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 3FA7D117F82C5;
	Wed, 29 Oct 2025 16:42:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1761752565; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=mTyubcT0QXbiYSYuJBtiOy+znibfDRYqoP4/3JvVdrk=;
	b=1wwya0A+6J55bXJZ9i9zxIM9ypamlJUH+c9TrZ/M9MZrRukaDz3uACmVjIVbMqScFwybpX
	+S1t9r/X8A5FxjJQ053o1+VlfzT3sEbVrL9J0es/RK8clpfRafAF8jipRoU09A/j6G83e0
	KmO/BC2JWXI9sRkx3UMyDpVuAL53/ksHYqNY23lNEGTOPL7FiGaYlWKGjtejhbGoeeqRLL
	LXAPhJ+uKDc9cuVFCeCJ/0ZpB+dJrh/DhvGl3nxA+Vc6dAG7aA+HjsGzZ3tt8+FE1eMcWU
	xn7FnhuyfnKVUZqcN+FRdcG3NiFj6jA8J4HcsVPAP7QAGUlsr9Q0RHQkbRjWJg==
Mime-Version: 1.0
Date: Wed, 29 Oct 2025 16:42:41 +0100
Message-Id: <DDUX5TR1VIR9.1KDDNA4XZ6JYW@bootlin.com>
Subject: Re: [PATCH 2/7] phy: Add driver for EyeQ5 Ethernet PHY wrapper
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
From: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20251022-macb-phy-v1-0-f29f28fae721@bootlin.com>
 <20251022-macb-phy-v1-2-f29f28fae721@bootlin.com>
In-Reply-To: <20251022-macb-phy-v1-2-f29f28fae721@bootlin.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251029_084250_416179_FF13B62E 
X-CRM114-Status: UNSURE (   9.38  )
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

SGVsbG8gYWxsLAoKT24gV2VkIE9jdCAyMiwgMjAyNSBhdCA1OjM5IFBNIENFU1QsIFRow6lvIExl
YnJ1biB3cm90ZToKPiBFeWVRNSBlbWJlZHMgYSBzeXN0ZW0tY29udHJvbGxlciBjYWxsZWQgT0xC
LiBJdCBmZWF0dXJlcyBtYW55IHVucmVsYXRlZAo+IHJlZ2lzdGVycywgYW5kIHNvbWUgb2YgdGhv
c2UgYXJlIHJlZ2lzdGVycyB1c2VkIHRvIGNvbmZpZ3VyZSB0aGUKPiBpbnRlZ3JhdGlvbiBvZiB0
aGUgUkdNSUkvU0dNSUkgQ2FkZW5jZSBQSFkgdXNlZCBieSBNQUNCL0dFTSBpbnN0YW5jZXMuCj4K
PiBXcmFwIGluIGEgbmVhdCBnZW5lcmljIFBIWSBwcm92aWRlciwgZXhwb3NpbmcgdHdvIFBIWXMg
d2l0aCBzdGFuZGFyZAo+IHBoeV9pbml0KCkgLyBwaHlfc2V0X21vZGUoKSAvIHBoeV9wb3dlcl9v
bigpIG9wZXJhdGlvbnMuCgpJIGFtIGN1cmlvdXMgaWYgYW55b25lIGhhcyBmZWVkYmFjayBvbiB0
aGlzIGdlbmVyaWMgUEhZIGRyaXZlcj8gUGF0Y2hlcwpvbiBNQUNCIGxhbmRlZCBpbiBuZXQtbmV4
dCBbMF0uIElmIHRoZSBwaHktZXllcTUtZXRoIGRyaXZlciBhcHByb2FjaApkb2Vzbid0IGZseSB0
aGVuIEkgc2hvdWxkIHN5bmMgd2l0aCBuZXQgbGFuZCB0byByZXZlcnQgTUFDQiBwYXRjaGVzIGFz
CnRoZXkgYXJlIHVzZWxlc3MgdW5sZXNzIHdlIGhhdmUgcGh5LWV5ZXE1LWV0aCBtZXJnZWQuCgpW
MiBjaGFuZ2Vsb2cgYXQgdGhlIG1vbWVudCAod2lsbCB3YWl0IGEgZmV3IG1vcmUgZGF5cyBiZWZv
cmUgc2VuZGluZyk6CiAtIEFja2VkLWJ5OiBDb25vciBEb29sZXkgb24gZHQtYmluZGluZ3MgcGF0
Y2guCiAtIHB0cmRpZmZfdCBpcyBwcmludGVkIHVzaW5nICV0ZCBub3QgJWxkOyB3YXJuaW5nIG9u
IDMyLWJpdCBhcmNocyBbMV0uCgpbMF06IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvMTc2
MTY2MTIxMzUxLjIyNDk1MTIuNzIzODI1NDQwOTExNzM1MjA3OS5naXQtcGF0Y2h3b3JrLW5vdGlm
eUBrZXJuZWwub3JnLwpbMV06IGh0dHBzOi8vbmV0ZGV2LmJvdHMubGludXguZGV2L3N0YXRpYy9u
aXBhLzEwMTQxMjYvMTQyNzc4NTcvYnVpbGRfMzJiaXQvc3RkZXJyCgpUaGFua3MhCgotLQpUaMOp
byBMZWJydW4sIEJvb3RsaW4KRW1iZWRkZWQgTGludXggYW5kIEtlcm5lbCBlbmdpbmVlcmluZwpo
dHRwczovL2Jvb3RsaW4uY29tCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcGh5Cg==
