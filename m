Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E057ACCD1AB
	for <linux-phy@archiver.kernel.org>; Wed, 22 Oct 2025 15:39:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H02gyVvv3AUIeDH+rTH5rmbUSAYa38j6VrgIdHVjAKA=; b=c3ObxPMFqARYvo
	iZAM0XAcqR2bA55yYbBIK/88Pkf/SOMlQWAoU/eksnDpxH4iQjHyjQ/3jKr4I+RKTE7Htj/UfV6Zl
	JS5hUetGwDfI7gP5jOITpN44w4V0eD1NYrjIhv+xXiXwmSI1J6PObGMwDSQR9eP5+DI97t8khafxm
	0NaL9LWbyycDTDTPyghrdB3B4gED1oQRlqzwtsKgmATaH7gnQ7cgEu8G6qL0vtcLIZTQXEMMftZ9w
	IQRTFw76YUmlP3yi7CxopV6lDPkcFfdsqs+ierHbf62KcZ+op6LDuNlApw+kYi9wvPq3Zjy8745gG
	R91Nno1FMB3qYl4ZDCdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBaw6-00000003QzE-1uMY;
	Wed, 22 Oct 2025 15:39:38 +0000
Received: from smtpout-04.galae.net ([185.171.202.116])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBaw0-00000003QwN-3K2W
	for linux-phy@lists.infradead.org;
	Wed, 22 Oct 2025 15:39:34 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 21C4CC0AFFC;
	Wed, 22 Oct 2025 15:39:11 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id E0DBB606DC;
	Wed, 22 Oct 2025 15:39:30 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 3D59F102F243E;
	Wed, 22 Oct 2025 17:39:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1761147569; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=xGfi/wxxIWJSZ/P38qx/iDvGfCPuBRfGoA+hd2Uxo10=;
	b=EjtcJcxs+0UCdQ+pznvyHrNM1liawuZYM64F72qC2RqV+9x8rEl+WJsipSOUhzltGfQfUd
	gBiTdtw1ZZxUCRebSgzTMAAPNws1L3zFKJ1Xlwxwcf+fnJ8fti+0604ZNbxXB0qH8yI6lx
	VilmT1rrFnuhdSTfu+O71skgHWxiIAr/JGHziMomXH+VRq2REjfAVzT/jLjRezJognCr8h
	fXRWaEwIRWCcndBTQvG4tvPL7gTyYsJpYPVln/RB2EqM1n/pdozp7wH4rt9ZVRLV3DGa5y
	nHCqCL0LfZoj3SZXujhtdJIiBLYUhf13nTXnrLxur2Hwv5AWUzuJISgr4PHYMw==
From: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
Date: Wed, 22 Oct 2025 17:39:06 +0200
Subject: [PATCH 4/7] clk: eyeq: add EyeQ5 children auxiliary device for
 generic PHYs
MIME-Version: 1.0
Message-Id: <20251022-macb-phy-v1-4-f29f28fae721@bootlin.com>
References: <20251022-macb-phy-v1-0-f29f28fae721@bootlin.com>
In-Reply-To: <20251022-macb-phy-v1-0-f29f28fae721@bootlin.com>
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
X-CRM114-CacheID: sfid-20251022_083933_129889_1CA52E1F 
X-CRM114-Status: UNSURE (   9.60  )
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
