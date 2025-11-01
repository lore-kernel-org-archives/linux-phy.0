Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72340CCF9F8
	for <linux-phy@archiver.kernel.org>; Sat,  1 Nov 2025 08:54:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H02gyVvv3AUIeDH+rTH5rmbUSAYa38j6VrgIdHVjAKA=; b=Gh25UuGGHOTUYn
	gwNwn41UPA0mK1lw90SiGdh7h7CjEZqEMXJ6pVhpyqmaXEtZawNAocmsZhl3X7ITKYTwZkuJ2ozXC
	cDCpiF68ROoWjq1vsvJNTfP/RQ9SeoIA1soM2C+n+YHppvX7li3Wi3XEPXiHdN9tFgrK4zagePr0E
	YciqSh9vesA50Qmm4jcXauwfn+ks3AL8nCnLXzoqYOAZGxhVSfpi4OdHhUUja1MtSpH2gxRXF4JfY
	3yb1kBMuVHHRykMTNhDRC0cMdcMSzY5IBgGZ5trucnKUN6U2BhN5D6C3xEFjiQy6XE/QDweDN17bU
	G1ZPFWwLWEiC+3aL2lWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vF7N9-00000007Ci4-0tho;
	Sat, 01 Nov 2025 08:54:07 +0000
Received: from smtpout-02.galae.net ([185.246.84.56])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vF7N4-00000007Cec-1ZT3
	for linux-phy@lists.infradead.org;
	Sat, 01 Nov 2025 08:54:05 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id A3A8C1A17E0;
	Sat,  1 Nov 2025 08:53:59 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 7960D6070B;
	Sat,  1 Nov 2025 08:53:59 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 144FF11819FA5;
	Sat,  1 Nov 2025 09:53:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1761987237; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=xGfi/wxxIWJSZ/P38qx/iDvGfCPuBRfGoA+hd2Uxo10=;
	b=qNAd3Gx1W2aWuBjGQrqgJRJBHhcwNPafbm7rBGugSQkYJXTrbincOX4X+g4J84X0gC3g17
	2vu00AIZTYB1cIxFryvUcmTqTokf9BOh8EPkAlV/wwkoAVTiVRnUSqPdsN2SjWFoTTWn8l
	qJ6+QRtLiQShf+vcZjbClsdIICzbXClnsWvCSz0vmQS1VfMURLBHCPpgyqeywfdelx4Jho
	OZwBr60z6DJ1J/G+lJz9tRuIVqNx5uNR7Sp6BNSEY31eEY2F5Er5nTF1/00mH5eZcI84+E
	y0jt3trtC0bUQgs9i4/vDH5OLoYlpxa2Ti9crY9BqiW1uT92vYT6RO901GJcxw==
From: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
Date: Sat, 01 Nov 2025 09:53:32 +0100
Subject: [PATCH v2 4/7] clk: eyeq: add EyeQ5 children auxiliary device for
 generic PHYs
MIME-Version: 1.0
Message-Id: <20251101-macb-phy-v2-4-c1519eef16d3@bootlin.com>
References: <20251101-macb-phy-v2-0-c1519eef16d3@bootlin.com>
In-Reply-To: <20251101-macb-phy-v2-0-c1519eef16d3@bootlin.com>
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
 =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251101_015403_910384_C63D92E4 
X-CRM114-Status: GOOD (  10.88  )
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

R3JvdyBvdXIgY2xrLWV5ZXEgZmFtaWx5OyBpdCBrbm93cyBob3cgdG8gc3Bhd24gcmVzZXQgcHJv
dmlkZXIgYW5kIHBpbgpjb250cm9sbGVyIGNoaWxkcmVuLiBFeHBhbmQgd2l0aCBhIGdlbmVyaWMg
UEhZIGRyaXZlciBvbiBFeWVRNS4KClNpZ25lZC1vZmYtYnk6IFRow6lvIExlYnJ1biA8dGhlby5s
ZWJydW5AYm9vdGxpbi5jb20+Ci0tLQogZHJpdmVycy9jbGsvY2xrLWV5ZXEuYyB8IDMgKysrCiAx
IGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsv
Y2xrLWV5ZXEuYyBiL2RyaXZlcnMvY2xrL2Nsay1leWVxLmMKaW5kZXggNjY0Y2U3ZDc4NjhkLi5h
OWRlNTczMTVlNDggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvY2xrL2Nsay1leWVxLmMKKysrIGIvZHJp
dmVycy9jbGsvY2xrLWV5ZXEuYwpAQCAtMTA5LDYgKzEwOSw3IEBAIHN0cnVjdCBlcWNfbWF0Y2hf
ZGF0YSB7CiAKIAljb25zdCBjaGFyCQkqcmVzZXRfYXV4ZGV2X25hbWU7CiAJY29uc3QgY2hhcgkJ
KnBpbmN0cmxfYXV4ZGV2X25hbWU7CisJY29uc3QgY2hhcgkJKmV0aF9waHlfYXV4ZGV2X25hbWU7
CiAKIAl1bnNpZ25lZCBpbnQJCWVhcmx5X2Nsa19jb3VudDsKIH07CkBAIC0zNjEsNiArMzYyLDcg
QEAgc3RhdGljIGludCBlcWNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAkv
KiBJbml0IG9wdGlvbmFsIGF1eGlsaWFyeSBkZXZpY2VzLiAqLwogCWVxY19hdXhkZXZfY3JlYXRl
X29wdGlvbmFsKGRldiwgYmFzZSwgZGF0YS0+cmVzZXRfYXV4ZGV2X25hbWUpOwogCWVxY19hdXhk
ZXZfY3JlYXRlX29wdGlvbmFsKGRldiwgYmFzZSwgZGF0YS0+cGluY3RybF9hdXhkZXZfbmFtZSk7
CisJZXFjX2F1eGRldl9jcmVhdGVfb3B0aW9uYWwoZGV2LCBiYXNlLCBkYXRhLT5ldGhfcGh5X2F1
eGRldl9uYW1lKTsKIAogCWlmIChkYXRhLT5wbGxfY291bnQgKyBkYXRhLT5kaXZfY291bnQgKyBk
YXRhLT5maXhlZF9mYWN0b3JfY291bnQgPT0gMCkKIAkJcmV0dXJuIDA7IC8qIFplcm8gY2xvY2tz
LCB3ZSBhcmUgZG9uZS4gKi8KQEAgLTUyMSw2ICs1MjMsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0
IGVxY19tYXRjaF9kYXRhIGVxY19leWVxNV9tYXRjaF9kYXRhID0gewogCiAJLnJlc2V0X2F1eGRl
dl9uYW1lID0gInJlc2V0IiwKIAkucGluY3RybF9hdXhkZXZfbmFtZSA9ICJwaW5jdHJsIiwKKwku
ZXRoX3BoeV9hdXhkZXZfbmFtZSA9ICJwaHkiLAogCiAJLmVhcmx5X2Nsa19jb3VudCA9IEFSUkFZ
X1NJWkUoZXFjX2V5ZXE1X2Vhcmx5X3BsbHMpICsKIAkJCSAgIEFSUkFZX1NJWkUoZXFjX2V5ZXE1
X2Vhcmx5X2ZpeGVkX2ZhY3RvcnMpLAoKLS0gCjIuNTEuMQoKCi0tIApsaW51eC1waHkgbWFpbGlu
ZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
