Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B360CFA466
	for <linux-phy@archiver.kernel.org>; Mon, 24 Nov 2025 14:41:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dcs0dpq6ufAZCCParI8+Zoinpkw9jbLEV4CS8BPpOmM=; b=aBAb3rxfUrOtqV
	2clc8yL0sDIXzS9A8PEpdJ6bbYgAxukLvx+1v2PHk7TfmB3jN0lIMrPe7Si/bFngkszMLcNrkBo/a
	3zki/6xjZEP2ifWAGIXGTAoRSHSsOfttrYKd1vaULr5hl1fvkIFuZYxjnOqtGuHOguwPn/PJ00SGg
	7tPt+RrUC3nh9Y3P1N4vROTEDjwRE3enHe1gsOf5Ob/ETZ6A/GkBxvCPrPID6owYs4thtoQ6PNrZy
	zQ9e7m4t4IzGAYBqMtSjIa3JDz0/bA7C/27Bc+UGF7e0Oi4NlOxznyVBNe4KQnpGciWJM7yXKdD2r
	0/TmhzFg1QwUOt/1u2dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNXks-0000000BrTQ-0Mju;
	Mon, 24 Nov 2025 14:41:26 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNXko-0000000BrRI-3R1F
	for linux-phy@lists.infradead.org;
	Mon, 24 Nov 2025 14:41:24 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 60A7A4E4189F;
	Mon, 24 Nov 2025 14:41:21 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 32F80606FC;
	Mon, 24 Nov 2025 14:41:21 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 1282B10371DAD;
	Mon, 24 Nov 2025 15:41:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1763995279; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=C62LKDCuIZwo0WSkjW2goTwQDiz6Yc49TS9DhA4dwFs=;
	b=I7rpHRSyHB801+yXI50svbMTpw9wuQ0at+XyrMzGkW/JPMeRn4IhPUl793uPFnIcWHQOyJ
	R9U+gQYrQCSazlAo1Swns5D+P8E3Ngy9tjIJAsl9AIetisrctgmUdV/ex4wjd99E26ZtyP
	VkwYw5TI0IUT+tZ7QLgQv1Douz0S0VIOrY8FAA+PhC++bGPBAZqsaHCJMPzSHV30NKj+p6
	TA08N7RDm5cZkQb5Li0X5LOyFKlFkXQFvy9EOTodFfOUa7mKw5SZemWbZ/+09laoX+Un7K
	Nukp9Z4+aGRX+WyG2u6JCvMRt84/e8gc/9d8E5wW+Xn6iJ2CwAaSyuiTz82yoQ==
From: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
Date: Mon, 24 Nov 2025 15:41:04 +0100
Subject: [PATCH v4 3/7] clk: eyeq: use the auxiliary device creation helper
MIME-Version: 1.0
Message-Id: <20251124-macb-phy-v4-3-955c625a81a7@bootlin.com>
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
 Jerome Brunet <jbrunet@baylibre.com>
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251124_064123_022249_FCC24D32 
X-CRM114-Status: GOOD (  12.94  )
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

RnJvbTogSmVyb21lIEJydW5ldCA8amJydW5ldEBiYXlsaWJyZS5jb20+CgpUaGUgYXV4aWxpYXJ5
IGRldmljZSBjcmVhdGlvbiBvZiB0aGlzIGRyaXZlciBpcyBzaW1wbGUgZW5vdWdoIHRvCnVzZSB0
aGUgYXZhaWxhYmxlIGF1eGlsaWFyeSBkZXZpY2UgY3JlYXRpb24gaGVscGVyLgoKVXNlIGl0IGFu
ZCByZW1vdmUgc29tZSBib2lsZXJwbGF0ZSBjb2RlLgoKVGVzdGVkLWJ5OiBUaMOpbyBMZWJydW4g
PHRoZW8ubGVicnVuQGJvb3RsaW4uY29tPiAgIyBPbiBNb2JpbGV5ZSBFeWVRNQpTaWduZWQtb2Zm
LWJ5OiBKZXJvbWUgQnJ1bmV0IDxqYnJ1bmV0QGJheWxpYnJlLmNvbT4KU2lnbmVkLW9mZi1ieTog
VGjDqW8gTGVicnVuIDx0aGVvLmxlYnJ1bkBib290bGluLmNvbT4KLS0tCiBkcml2ZXJzL2Nsay9j
bGstZXllcS5jIHwgNTcgKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspLCA0NSBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2Nsay9jbGstZXllcS5jIGIvZHJpdmVycy9jbGsvY2xr
LWV5ZXEuYwppbmRleCBlYTFjM2Q3OGU3Y2QuLjY2NGNlN2Q3ODY4ZCAxMDA2NDQKLS0tIGEvZHJp
dmVycy9jbGsvY2xrLWV5ZXEuYworKysgYi9kcml2ZXJzL2Nsay9jbGstZXllcS5jCkBAIC0zMjIs
MzggKzMyMiwxOCBAQCBzdGF0aWMgdm9pZCBlcWNfcHJvYmVfaW5pdF9maXhlZF9mYWN0b3JzKHN0
cnVjdCBkZXZpY2UgKmRldiwKIAl9CiB9CiAKLXN0YXRpYyB2b2lkIGVxY19hdXhkZXZfcmVsZWFz
ZShzdHJ1Y3QgZGV2aWNlICpkZXYpCi17Ci0Jc3RydWN0IGF1eGlsaWFyeV9kZXZpY2UgKmFkZXYg
PSB0b19hdXhpbGlhcnlfZGV2KGRldik7Ci0KLQlrZnJlZShhZGV2KTsKLX0KLQotc3RhdGljIGlu
dCBlcWNfYXV4ZGV2X2NyZWF0ZShzdHJ1Y3QgZGV2aWNlICpkZXYsIHZvaWQgX19pb21lbSAqYmFz
ZSwKLQkJCSAgICAgY29uc3QgY2hhciAqbmFtZSwgdTMyIGlkKQorc3RhdGljIHZvaWQgZXFjX2F1
eGRldl9jcmVhdGVfb3B0aW9uYWwoc3RydWN0IGRldmljZSAqZGV2LCB2b2lkIF9faW9tZW0gKmJh
c2UsCisJCQkJICAgICAgIGNvbnN0IGNoYXIgKm5hbWUpCiB7CiAJc3RydWN0IGF1eGlsaWFyeV9k
ZXZpY2UgKmFkZXY7Ci0JaW50IHJldDsKIAotCWFkZXYgPSBremFsbG9jKHNpemVvZigqYWRldiks
IEdGUF9LRVJORUwpOwotCWlmICghYWRldikKLQkJcmV0dXJuIC1FTk9NRU07Ci0KLQlhZGV2LT5u
YW1lID0gbmFtZTsKLQlhZGV2LT5kZXYucGFyZW50ID0gZGV2OwotCWFkZXYtPmRldi5wbGF0Zm9y
bV9kYXRhID0gKHZvaWQgX19mb3JjZSAqKWJhc2U7Ci0JYWRldi0+ZGV2LnJlbGVhc2UgPSBlcWNf
YXV4ZGV2X3JlbGVhc2U7Ci0JYWRldi0+aWQgPSBpZDsKLQotCXJldCA9IGF1eGlsaWFyeV9kZXZp
Y2VfaW5pdChhZGV2KTsKLQlpZiAocmV0KQotCQlyZXR1cm4gcmV0OwotCi0JcmV0ID0gYXV4aWxp
YXJ5X2RldmljZV9hZGQoYWRldik7Ci0JaWYgKHJldCkKLQkJYXV4aWxpYXJ5X2RldmljZV91bmlu
aXQoYWRldik7Ci0KLQlyZXR1cm4gcmV0OworCWlmIChuYW1lKSB7CisJCWFkZXYgPSBkZXZtX2F1
eGlsaWFyeV9kZXZpY2VfY3JlYXRlKGRldiwgbmFtZSwKKwkJCQkJCSAgICAodm9pZCBfX2ZvcmNl
ICopYmFzZSk7CisJCWlmICghYWRldikKKwkJCWRldl93YXJuKGRldiwgImZhaWxlZCBjcmVhdGlu
ZyBhdXhpbGlhcnkgZGV2aWNlICVzLiVzXG4iLAorCQkJCSBLQlVJTERfTU9ETkFNRSwgbmFtZSk7
CisJfQogfQogCiBzdGF0aWMgaW50IGVxY19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpw
ZGV2KQpAQCAtMzY1LDcgKzM0NSw2IEBAIHN0YXRpYyBpbnQgZXFjX3Byb2JlKHN0cnVjdCBwbGF0
Zm9ybV9kZXZpY2UgKnBkZXYpCiAJdW5zaWduZWQgaW50IGksIGNsa19jb3VudDsKIAlzdHJ1Y3Qg
cmVzb3VyY2UgKnJlczsKIAl2b2lkIF9faW9tZW0gKmJhc2U7Ci0JaW50IHJldDsKIAogCWRhdGEg
PSBkZXZpY2VfZ2V0X21hdGNoX2RhdGEoZGV2KTsKIAlpZiAoIWRhdGEpCkBAIC0zNzksMjEgKzM1
OCw5IEBAIHN0YXRpYyBpbnQgZXFjX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYp
CiAJaWYgKCFiYXNlKQogCQlyZXR1cm4gLUVOT01FTTsKIAotCS8qIEluaXQgb3B0aW9uYWwgcmVz
ZXQgYXV4aWxpYXJ5IGRldmljZS4gKi8KLQlpZiAoZGF0YS0+cmVzZXRfYXV4ZGV2X25hbWUpIHsK
LQkJcmV0ID0gZXFjX2F1eGRldl9jcmVhdGUoZGV2LCBiYXNlLCBkYXRhLT5yZXNldF9hdXhkZXZf
bmFtZSwgMCk7Ci0JCWlmIChyZXQpCi0JCQlkZXZfd2FybihkZXYsICJmYWlsZWQgY3JlYXRpbmcg
YXV4aWxpYXJ5IGRldmljZSAlcy4lczogJWRcbiIsCi0JCQkJIEtCVUlMRF9NT0ROQU1FLCBkYXRh
LT5yZXNldF9hdXhkZXZfbmFtZSwgcmV0KTsKLQl9Ci0KLQkvKiBJbml0IG9wdGlvbmFsIHBpbmN0
cmwgYXV4aWxpYXJ5IGRldmljZS4gKi8KLQlpZiAoZGF0YS0+cGluY3RybF9hdXhkZXZfbmFtZSkg
ewotCQlyZXQgPSBlcWNfYXV4ZGV2X2NyZWF0ZShkZXYsIGJhc2UsIGRhdGEtPnBpbmN0cmxfYXV4
ZGV2X25hbWUsIDApOwotCQlpZiAocmV0KQotCQkJZGV2X3dhcm4oZGV2LCAiZmFpbGVkIGNyZWF0
aW5nIGF1eGlsaWFyeSBkZXZpY2UgJXMuJXM6ICVkXG4iLAotCQkJCSBLQlVJTERfTU9ETkFNRSwg
ZGF0YS0+cGluY3RybF9hdXhkZXZfbmFtZSwgcmV0KTsKLQl9CisJLyogSW5pdCBvcHRpb25hbCBh
dXhpbGlhcnkgZGV2aWNlcy4gKi8KKwllcWNfYXV4ZGV2X2NyZWF0ZV9vcHRpb25hbChkZXYsIGJh
c2UsIGRhdGEtPnJlc2V0X2F1eGRldl9uYW1lKTsKKwllcWNfYXV4ZGV2X2NyZWF0ZV9vcHRpb25h
bChkZXYsIGJhc2UsIGRhdGEtPnBpbmN0cmxfYXV4ZGV2X25hbWUpOwogCiAJaWYgKGRhdGEtPnBs
bF9jb3VudCArIGRhdGEtPmRpdl9jb3VudCArIGRhdGEtPmZpeGVkX2ZhY3Rvcl9jb3VudCA9PSAw
KQogCQlyZXR1cm4gMDsgLyogWmVybyBjbG9ja3MsIHdlIGFyZSBkb25lLiAqLwoKLS0gCjIuNTEu
MgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
