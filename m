Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFF2ACF3942
	for <linux-phy@archiver.kernel.org>; Wed, 19 Nov 2025 15:51:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z02N0NHmI3TxBj4iidgJ9WN1p52w8DS35/a4wG77TV4=; b=DOVp/PYUW/CILD
	y6ZOsLbRhaH2HlqjNvAle9KsVUbJbpEl7ufHWb7Ug4C3ezoOEx+NjBhTdAk9Qim5GknTq2gTa3VJ2
	fLXdsGux/jJA/38ML3HDx0QvTCNzgyPJfasz76RG684AJKbw6ynhNirLTGf9/P9LETHjdTbB7ja2d
	ukgPTGKLKacP4NQZrDi7TCP9p1KX1PcOqEE6hoD9IT7DsFoUjiidtCbB92N2J8NcnAOR8szD/qmq8
	xdLU96Y8Dtu07ua3NCU+NBry+AMiJaUZ97Ui17wUrdMFtTRZC7dX3rKsLDHDH2QeW3D5d+poogHw8
	uHQxKaToGnvq48y9GCLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLkSy-00000003apI-0S1e;
	Wed, 19 Nov 2025 15:51:32 +0000
Received: from smtpout-04.galae.net ([185.171.202.116])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLkSt-00000003aij-1so8
	for linux-phy@lists.infradead.org;
	Wed, 19 Nov 2025 15:51:29 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 9E586C11192;
	Wed, 19 Nov 2025 15:51:03 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id D9FEC60699;
	Wed, 19 Nov 2025 15:51:25 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id E002A10371A75;
	Wed, 19 Nov 2025 16:51:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1763567484; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=o1ZneLkWDu4MdFISZHYho0TQB+cU4Mq99hP/Mw23jU0=;
	b=DU5AmqSMOS2Jvqh6emrRmqZLGQjXcsYhnwQZv3fHceCL/Dxm0eE7djFFAMJjX4pPj/GPSh
	MKxqidbkiEJpoa6uZH9aFv33cvQq8Ut7k1xgLl3G66FpTVBWadMogyfxzt7jM3TC9tGSFT
	CD/cEWknArSH/dMxmDEZdQif82/6JsXmB3Boh4qcAn2a+E2OfRqeTpI2Ix3zYM0CulEwYU
	88tv80UtkPSY5vFK8RLKEJUHd7j74GLB+C1lypcIURgk+LLMvz+1muVJ0Z+OBTX5AfnXYg
	L+rU07wg2SKfhfuQNK/wIbwIOSeG9q0nbIX7AWeo//Fyie+RSN8lgjAYhIvUGQ==
From: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
Date: Wed, 19 Nov 2025 16:51:12 +0100
Subject: [PATCH v3 4/7] clk: eyeq: add EyeQ5 children auxiliary device for
 generic PHYs
MIME-Version: 1.0
Message-Id: <20251119-macb-phy-v3-4-e9a7be186a33@bootlin.com>
References: <20251119-macb-phy-v3-0-e9a7be186a33@bootlin.com>
In-Reply-To: <20251119-macb-phy-v3-0-e9a7be186a33@bootlin.com>
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
X-CRM114-CacheID: sfid-20251119_075127_665543_1126257E 
X-CRM114-Status: GOOD (  11.66  )
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
X2Vhcmx5X2ZpeGVkX2ZhY3RvcnMpLAoKLS0gCjIuNTEuMgoKCi0tIApsaW51eC1waHkgbWFpbGlu
ZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
