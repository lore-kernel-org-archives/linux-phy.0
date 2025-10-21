Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F50ACCD1A7
	for <linux-phy@archiver.kernel.org>; Tue, 21 Oct 2025 16:33:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MkgZIuyC1wWFGFDTRhPlbECKuanup3K80QMaWf3EurQ=; b=aIcPP+4LCqBDRY
	VtFAScsd1xGDARcHQiQrb+rPXHkrVo7ftRpOI40s5CVxykAZGQIFIur3yDkwyMVyNxiO0sTPsIhen
	TiehcHEeXx6h/v61THxKDXuCfZq3P9J4LsrC1SHaO7x2X9YxCDXx8LnlfKIam+NuWIvg5PzHL4x0f
	ROWe2r0+fJzK2YiB8WRsINtfTvrVXhTvnJbzEEDCtNoiY6340U+9imWsziVEwvOvWWxedEzGab2G7
	YmwTn5tZIS+0HyQk0M69umQ6D+6HRgA8jyXEcrQXNhSqqGXnMBIWDh813QskAcN/egDAxjiZtSHXf
	liIYGdd2UvBb1bKJunMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBFIl-000000006vE-0DvY;
	Tue, 21 Oct 2025 16:33:35 +0000
Received: from smtpout-02.galae.net ([185.246.84.56])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBFIi-000000006tA-0qXQ
	for linux-phy@lists.infradead.org;
	Tue, 21 Oct 2025 16:33:33 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id CD6521A1594;
	Tue, 21 Oct 2025 16:33:30 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id A25CE60680;
	Tue, 21 Oct 2025 16:33:30 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 6E84C102F241F;
	Tue, 21 Oct 2025 18:33:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1761064409; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=M7/ONsHb0ArB5bCF7FZGbfdHV5WjqY9DA/Z65CQxU0E=;
	b=xX8WnMrxi/X88u7Eg5zoCx9CHz5yL2wsY3l/KUe00x1hEU7zWZkmpabCMmV8Yxh3IM23Oi
	eGw5pf4isLqxz61epTfXCZ3AfuiPiFx1qz9RWgfyzi5ES3PqoJsX6K0LRNBnBgzGKCL04d
	c7eKbBQmgwH1iHUSY8J1nHKhNVZwAb5GOmH+2ZP7Jy+RpJVM8eAeSKs9YSrrCJBhBClaq6
	n64tR7E6vUqVcEVzvhv5jDfNIG0pLejBn+MsUcadzor24P74zxio0nNPvu/RIM14+SWhR2
	VHomIvVcLdGL9VRt5g7DmT+KGiRbOPM4TmFOsntz40A4ExclfTIcCVnSF50dOw==
From: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
Date: Tue, 21 Oct 2025 18:32:49 +0200
Subject: [PATCH net-next 08/12] clk: eyeq: use the auxiliary device
 creation helper
MIME-Version: 1.0
Message-Id: <20251021-macb-eyeq5-v1-8-3b0b5a9d2f85@bootlin.com>
References: <20251021-macb-eyeq5-v1-0-3b0b5a9d2f85@bootlin.com>
In-Reply-To: <20251021-macb-eyeq5-v1-0-3b0b5a9d2f85@bootlin.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Nicolas Ferre <nicolas.ferre@microchip.com>, 
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
 Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
 =?utf-8?q?Gr=C3=A9gory_Clement?= <gregory.clement@bootlin.com>, 
 Russell King <linux@armlinux.org.uk>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, 
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-clk@vger.kernel.org, 
 Tawfik Bayouk <tawfik.bayouk@mobileye.com>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 =?utf-8?q?Beno=C3=AEt_Monin?= <benoit.monin@bootlin.com>, 
 Maxime Chevallier <maxime.chevallier@bootlin.com>, 
 =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>, 
 Jerome Brunet <jbrunet@baylibre.com>
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_093332_374095_3E416172 
X-CRM114-Status: GOOD (  12.72  )
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
LWJ5OiBKZXJvbWUgQnJ1bmV0IDxqYnJ1bmV0QGJheWxpYnJlLmNvbT4KLS0tCiBkcml2ZXJzL2Ns
ay9jbGstZXllcS5jIHwgNTcgKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspLCA0NSBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2Nsay9jbGstZXllcS5jIGIvZHJpdmVycy9jbGsv
Y2xrLWV5ZXEuYwppbmRleCBlYTFjM2Q3OGU3Y2QuLjY2NGNlN2Q3ODY4ZCAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9jbGsvY2xrLWV5ZXEuYworKysgYi9kcml2ZXJzL2Nsay9jbGstZXllcS5jCkBAIC0z
MjIsMzggKzMyMiwxOCBAQCBzdGF0aWMgdm9pZCBlcWNfcHJvYmVfaW5pdF9maXhlZF9mYWN0b3Jz
KHN0cnVjdCBkZXZpY2UgKmRldiwKIAl9CiB9CiAKLXN0YXRpYyB2b2lkIGVxY19hdXhkZXZfcmVs
ZWFzZShzdHJ1Y3QgZGV2aWNlICpkZXYpCi17Ci0Jc3RydWN0IGF1eGlsaWFyeV9kZXZpY2UgKmFk
ZXYgPSB0b19hdXhpbGlhcnlfZGV2KGRldik7Ci0KLQlrZnJlZShhZGV2KTsKLX0KLQotc3RhdGlj
IGludCBlcWNfYXV4ZGV2X2NyZWF0ZShzdHJ1Y3QgZGV2aWNlICpkZXYsIHZvaWQgX19pb21lbSAq
YmFzZSwKLQkJCSAgICAgY29uc3QgY2hhciAqbmFtZSwgdTMyIGlkKQorc3RhdGljIHZvaWQgZXFj
X2F1eGRldl9jcmVhdGVfb3B0aW9uYWwoc3RydWN0IGRldmljZSAqZGV2LCB2b2lkIF9faW9tZW0g
KmJhc2UsCisJCQkJICAgICAgIGNvbnN0IGNoYXIgKm5hbWUpCiB7CiAJc3RydWN0IGF1eGlsaWFy
eV9kZXZpY2UgKmFkZXY7Ci0JaW50IHJldDsKIAotCWFkZXYgPSBremFsbG9jKHNpemVvZigqYWRl
diksIEdGUF9LRVJORUwpOwotCWlmICghYWRldikKLQkJcmV0dXJuIC1FTk9NRU07Ci0KLQlhZGV2
LT5uYW1lID0gbmFtZTsKLQlhZGV2LT5kZXYucGFyZW50ID0gZGV2OwotCWFkZXYtPmRldi5wbGF0
Zm9ybV9kYXRhID0gKHZvaWQgX19mb3JjZSAqKWJhc2U7Ci0JYWRldi0+ZGV2LnJlbGVhc2UgPSBl
cWNfYXV4ZGV2X3JlbGVhc2U7Ci0JYWRldi0+aWQgPSBpZDsKLQotCXJldCA9IGF1eGlsaWFyeV9k
ZXZpY2VfaW5pdChhZGV2KTsKLQlpZiAocmV0KQotCQlyZXR1cm4gcmV0OwotCi0JcmV0ID0gYXV4
aWxpYXJ5X2RldmljZV9hZGQoYWRldik7Ci0JaWYgKHJldCkKLQkJYXV4aWxpYXJ5X2RldmljZV91
bmluaXQoYWRldik7Ci0KLQlyZXR1cm4gcmV0OworCWlmIChuYW1lKSB7CisJCWFkZXYgPSBkZXZt
X2F1eGlsaWFyeV9kZXZpY2VfY3JlYXRlKGRldiwgbmFtZSwKKwkJCQkJCSAgICAodm9pZCBfX2Zv
cmNlICopYmFzZSk7CisJCWlmICghYWRldikKKwkJCWRldl93YXJuKGRldiwgImZhaWxlZCBjcmVh
dGluZyBhdXhpbGlhcnkgZGV2aWNlICVzLiVzXG4iLAorCQkJCSBLQlVJTERfTU9ETkFNRSwgbmFt
ZSk7CisJfQogfQogCiBzdGF0aWMgaW50IGVxY19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNl
ICpwZGV2KQpAQCAtMzY1LDcgKzM0NSw2IEBAIHN0YXRpYyBpbnQgZXFjX3Byb2JlKHN0cnVjdCBw
bGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJdW5zaWduZWQgaW50IGksIGNsa19jb3VudDsKIAlzdHJ1
Y3QgcmVzb3VyY2UgKnJlczsKIAl2b2lkIF9faW9tZW0gKmJhc2U7Ci0JaW50IHJldDsKIAogCWRh
dGEgPSBkZXZpY2VfZ2V0X21hdGNoX2RhdGEoZGV2KTsKIAlpZiAoIWRhdGEpCkBAIC0zNzksMjEg
KzM1OCw5IEBAIHN0YXRpYyBpbnQgZXFjX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBk
ZXYpCiAJaWYgKCFiYXNlKQogCQlyZXR1cm4gLUVOT01FTTsKIAotCS8qIEluaXQgb3B0aW9uYWwg
cmVzZXQgYXV4aWxpYXJ5IGRldmljZS4gKi8KLQlpZiAoZGF0YS0+cmVzZXRfYXV4ZGV2X25hbWUp
IHsKLQkJcmV0ID0gZXFjX2F1eGRldl9jcmVhdGUoZGV2LCBiYXNlLCBkYXRhLT5yZXNldF9hdXhk
ZXZfbmFtZSwgMCk7Ci0JCWlmIChyZXQpCi0JCQlkZXZfd2FybihkZXYsICJmYWlsZWQgY3JlYXRp
bmcgYXV4aWxpYXJ5IGRldmljZSAlcy4lczogJWRcbiIsCi0JCQkJIEtCVUlMRF9NT0ROQU1FLCBk
YXRhLT5yZXNldF9hdXhkZXZfbmFtZSwgcmV0KTsKLQl9Ci0KLQkvKiBJbml0IG9wdGlvbmFsIHBp
bmN0cmwgYXV4aWxpYXJ5IGRldmljZS4gKi8KLQlpZiAoZGF0YS0+cGluY3RybF9hdXhkZXZfbmFt
ZSkgewotCQlyZXQgPSBlcWNfYXV4ZGV2X2NyZWF0ZShkZXYsIGJhc2UsIGRhdGEtPnBpbmN0cmxf
YXV4ZGV2X25hbWUsIDApOwotCQlpZiAocmV0KQotCQkJZGV2X3dhcm4oZGV2LCAiZmFpbGVkIGNy
ZWF0aW5nIGF1eGlsaWFyeSBkZXZpY2UgJXMuJXM6ICVkXG4iLAotCQkJCSBLQlVJTERfTU9ETkFN
RSwgZGF0YS0+cGluY3RybF9hdXhkZXZfbmFtZSwgcmV0KTsKLQl9CisJLyogSW5pdCBvcHRpb25h
bCBhdXhpbGlhcnkgZGV2aWNlcy4gKi8KKwllcWNfYXV4ZGV2X2NyZWF0ZV9vcHRpb25hbChkZXYs
IGJhc2UsIGRhdGEtPnJlc2V0X2F1eGRldl9uYW1lKTsKKwllcWNfYXV4ZGV2X2NyZWF0ZV9vcHRp
b25hbChkZXYsIGJhc2UsIGRhdGEtPnBpbmN0cmxfYXV4ZGV2X25hbWUpOwogCiAJaWYgKGRhdGEt
PnBsbF9jb3VudCArIGRhdGEtPmRpdl9jb3VudCArIGRhdGEtPmZpeGVkX2ZhY3Rvcl9jb3VudCA9
PSAwKQogCQlyZXR1cm4gMDsgLyogWmVybyBjbG9ja3MsIHdlIGFyZSBkb25lLiAqLwoKLS0gCjIu
NTEuMQoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=
