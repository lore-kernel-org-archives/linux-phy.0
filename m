Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77FC1CCD1AB
	for <linux-phy@archiver.kernel.org>; Wed, 22 Oct 2025 15:39:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MkgZIuyC1wWFGFDTRhPlbECKuanup3K80QMaWf3EurQ=; b=lHVdLN/Mke9wyw
	tKD8aClbXbqP91X0+/79ca/6aOi7ESGLTYMlV2mFqjSig+19WDw3PtmGkq6nsPyCS738pUGcHwAfv
	t5gbJT73030JlBhBLmbE7gpmEGYWb5+K1udFj024vO17+uvNfMgoFqL3XDd7LVQwTolvxPAYkmqqk
	Os+wndOVEB26KGKRkPz8GVU1NUQ2OYTZ4DggoHI+D9PFle/bhS43FkC61ZqqGgDXVMeoWjGeILKDb
	OoZ7SpRu/V1V0ueAz2v6KzneIKcnufXSPz4KcS+rZPoGjEfgcSH07IT5FLaCZ8CHFHZRNEvHzc1wq
	rxxD1rBoDasLs6TOKycQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBaw2-00000003Qxe-0T4p;
	Wed, 22 Oct 2025 15:39:34 +0000
Received: from smtpout-04.galae.net ([185.171.202.116])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBavy-00000003QvA-3PG8
	for linux-phy@lists.infradead.org;
	Wed, 22 Oct 2025 15:39:32 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 298D6C09FB9;
	Wed, 22 Oct 2025 15:39:09 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id E8AE4606DC;
	Wed, 22 Oct 2025 15:39:28 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 14339102F2448;
	Wed, 22 Oct 2025 17:39:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1761147567; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=M7/ONsHb0ArB5bCF7FZGbfdHV5WjqY9DA/Z65CQxU0E=;
	b=hymOWQWm2u4SOdkcWA1GVBMijDT0Q5s84DYGXqLT240sCIL74+gOgYTPLRwWgE3WtZB1t1
	/BaL59GWPB4Fzwbd0WJ7+XTEiLRT02T4p6zr9eqDCk6vDvmIJfu1tic40XWhR5z79fqMB8
	kX4C6MUmNYxQOKIAVFxXKV7RcqxVL9kyAVJvYJMDhpBeetP1UeP+wq3vrZqJjQlwU5bYuc
	famjhoh3Kmx1X0RRatkPfNXbMskQDDW7rE5tWyIbBysB7p79nwSvVLoShzcxmhuy5DUk5Q
	vZoNb1NQYBvzNwwOL7RqURzTED3IXVPNSNw2olJUDp8PkuwSdUcavon8Lsj8ZA==
From: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
Date: Wed, 22 Oct 2025 17:39:05 +0200
Subject: [PATCH 3/7] clk: eyeq: use the auxiliary device creation helper
MIME-Version: 1.0
Message-Id: <20251022-macb-phy-v1-3-f29f28fae721@bootlin.com>
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
 =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>, 
 Jerome Brunet <jbrunet@baylibre.com>
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_083931_211675_0F6586FC 
X-CRM114-Status: GOOD (  11.62  )
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
