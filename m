Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CEEFD2FEC0
	for <linux-phy@archiver.kernel.org>; Tue, 27 Jan 2026 17:09:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DkD5EDB12OQLbmpMwpAd5OsCJn3RKcFUfzu69hf77W4=; b=I4AAncYVRmA5Jg
	VBfxyT4ysvZ41tpK6tPM0cUrRHAlQ+uhmwopsLWzvm2ZTfeRd3uqmnGONl4iv8/EvkN4epe+eC8KK
	C4BrYYODfa2MoVF0aWUfdu2wWmTlR/vRqxHIbTCZ2Nzg8Ffc+zzrulMEeYhBNjeySwC8YZyQp+6W/
	GnAlIowHixOLXGH1xks8cqzRB5aSwhqegA7Dv0S5WO6UFrNiXmHo9VhD0JPlLq7GajC9J1qJxnPAz
	X6dgdMU7tswqdMJk5g+TzKZ8NmRjP8Phu4TQTho3fTdYhj8ILRrgupwQEy7kMLo8gvNE9t2dijjDY
	2t1aOlWbyBjDn9jyDbCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkmZf-0000000Ei6X-499A;
	Tue, 27 Jan 2026 17:09:56 +0000
Received: from smtpout-04.galae.net ([185.171.202.116])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkmZa-0000000Ei2f-3kvH
	for linux-phy@lists.infradead.org;
	Tue, 27 Jan 2026 17:09:52 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 8852DC211C8;
	Tue, 27 Jan 2026 17:09:51 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 50319606F5;
	Tue, 27 Jan 2026 17:09:49 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 678FF119A869D;
	Tue, 27 Jan 2026 18:09:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1769533788; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=+uRP6I+VHQdCF3SP4Wbv8N2ZU6aFa3eq082m9FRdvVo=;
	b=wejsVCqK9ewGvNQ+re3oP7E9GDh1wMn/3c+pJNiE5vr41m1UpGAdn3Mjr7ao+1zTYpYOq5
	fHxPlVDSmbesLuVHjtN20c1TCvjudqm9vLyayz9Tbo6fFEfWJbX0oUZiIRnZL4TsoIV/dY
	CU5vjM2bT2EQCEOo8AbVDfmi6rRAyIh8K5yYs+/YIA+LylpLl2vFgsWtkBNTO7aEnzZ0Wf
	YeH3diA8nNmwMWkucphv+bcgcpqQ0AQfy54eBRlSmyTvzmUbVHRrL75/wX3u2cNxoJ9oB+
	JkW/oGU6qcqaoZA2WeRS5U2s+cbpkt/mvhmuo3XA25vRUrrDvEHb+EY+cqfenA==
From: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
Date: Tue, 27 Jan 2026 18:09:34 +0100
Subject: [PATCH v6 6/8] reset: eyeq: drop device_set_of_node_from_dev()
 done by parent
MIME-Version: 1.0
Message-Id: <20260127-macb-phy-v6-6-cdd840588188@bootlin.com>
References: <20260127-macb-phy-v6-0-cdd840588188@bootlin.com>
In-Reply-To: <20260127-macb-phy-v6-0-cdd840588188@bootlin.com>
To: Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
 =?utf-8?q?Gr=C3=A9gory_Clement?= <gregory.clement@bootlin.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-mips@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-clk@vger.kernel.org, 
 =?utf-8?q?Beno=C3=AEt_Monin?= <benoit.monin@bootlin.com>, 
 Tawfik Bayouk <tawfik.bayouk@mobileye.com>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>, 
 =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>, 
 Jerome Brunet <jbrunet@baylibre.com>
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260127_090951_134052_2A2D63FF 
X-CRM114-Status: GOOD (  12.09  )
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

T3VyIHBhcmVudCBkcml2ZXIgKGNsay1leWVxKSBub3cgZG9lcyB0aGUKCWRldmljZV9zZXRfb2Zf
bm9kZV9mcm9tX2RldihkZXYsIGRldi0+cGFyZW50KQpjYWxsIHRocm91Z2ggdGhlIG5ld2x5IGlu
dHJvZHVjZWQgZGV2bV9hdXhpbGlhcnlfZGV2aWNlX2NyZWF0ZSgpIGhlbHBlci4KCkRvaW5nIGl0
IGFnYWluIGluIHRoZSByZXNldC1leWVxIHByb2JlIHdvdWxkIGJlIHJlZHVuZGFudC4KRHJvcCBi
b3RoIHRoZSBXQVJOX09OKCkgYW5kIHRoZSBkZXZpY2Vfc2V0X29mX25vZGVfZnJvbV9kZXYoKSBj
YWxsLgpBbHNvIGZpeCB0aGUgZm9sbG93aW5nIGNvbW1lbnQgdGhhdCB0YWxrcyBhYm91dCAib3Vy
IG5ld2ZvdW5kIE9GIG5vZGUiLgoKU2lnbmVkLW9mZi1ieTogSmVyb21lIEJydW5ldCA8amJydW5l
dEBiYXlsaWJyZS5jb20+ClJldmlld2VkLWJ5OiBQaGlsaXBwIFphYmVsIDxwLnphYmVsQHBlbmd1
dHJvbml4LmRlPgpBY2tlZC1ieTogUGhpbGlwcCBaYWJlbCA8cC56YWJlbEBwZW5ndXRyb25peC5k
ZT4KU2lnbmVkLW9mZi1ieTogVGjDqW8gTGVicnVuIDx0aGVvLmxlYnJ1bkBib290bGluLmNvbT4K
LS0tCiBkcml2ZXJzL3Jlc2V0L3Jlc2V0LWV5ZXEuYyB8IDI0ICsrLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMjIgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9yZXNldC9yZXNldC1leWVxLmMgYi9kcml2ZXJzL3Jlc2V0L3Jl
c2V0LWV5ZXEuYwppbmRleCAyZDM5OTgzNjhhMWMuLjgwMThmYTg5NTQyNyAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9yZXNldC9yZXNldC1leWVxLmMKKysrIGIvZHJpdmVycy9yZXNldC9yZXNldC1leWVx
LmMKQEAgLTQxMCwxMyArNDEwLDYgQEAgc3RhdGljIGludCBlcXJfb2ZfeGxhdGVfdHdvY2VsbHMo
c3RydWN0IHJlc2V0X2NvbnRyb2xsZXJfZGV2ICpyY2RldiwKIAlyZXR1cm4gZXFyX29mX3hsYXRl
X2ludGVybmFsKHJjZGV2LCByZXNldF9zcGVjLT5hcmdzWzBdLCByZXNldF9zcGVjLT5hcmdzWzFd
KTsKIH0KIAotc3RhdGljIHZvaWQgZXFyX29mX25vZGVfcHV0KHZvaWQgKl9kZXYpCi17Ci0Jc3Ry
dWN0IGRldmljZSAqZGV2ID0gX2RldjsKLQotCW9mX25vZGVfcHV0KGRldi0+b2Zfbm9kZSk7Ci19
Ci0KIHN0YXRpYyBpbnQgZXFyX3Byb2JlKHN0cnVjdCBhdXhpbGlhcnlfZGV2aWNlICphZGV2LAog
CQkgICAgIGNvbnN0IHN0cnVjdCBhdXhpbGlhcnlfZGV2aWNlX2lkICppZCkKIHsKQEAgLTQyNywy
MSArNDIwLDggQEAgc3RhdGljIGludCBlcXJfcHJvYmUoc3RydWN0IGF1eGlsaWFyeV9kZXZpY2Ug
KmFkZXYsCiAJaW50IHJldDsKIAogCS8qCi0JICogV2UgYXJlIGFuIGF1eGlsaWFyeSBkZXZpY2Ug
b2YgY2xrLWV5ZXEuIFdlIGRvIG5vdCBoYXZlIGFuIE9GIG5vZGUgYnkKLQkgKiBkZWZhdWx0OyBs
ZXQncyByZXVzZSBvdXIgcGFyZW50J3MgT0Ygbm9kZS4KLQkgKi8KLQlXQVJOX09OKGRldi0+b2Zf
bm9kZSk7Ci0JZGV2aWNlX3NldF9vZl9ub2RlX2Zyb21fZGV2KGRldiwgZGV2LT5wYXJlbnQpOwot
CWlmICghZGV2LT5vZl9ub2RlKQotCQlyZXR1cm4gLUVOT0RFVjsKLQotCXJldCA9IGRldm1fYWRk
X2FjdGlvbl9vcl9yZXNldChkZXYsIGVxcl9vZl9ub2RlX3B1dCwgZGV2KTsKLQlpZiAocmV0KQot
CQlyZXR1cm4gcmV0OwotCi0JLyoKLQkgKiBVc2luZyBvdXIgbmV3Zm91bmQgT0Ygbm9kZSwgd2Ug
Y2FuIGdldCBtYXRjaCBkYXRhLiBXZSBjYW5ub3QgdXNlCi0JICogZGV2aWNlX2dldF9tYXRjaF9k
YXRhKCkgYmVjYXVzZSBpdCBkb2VzIG5vdCBtYXRjaCByZXVzZWQgT0Ygbm9kZXMuCisJICogR2V0
IG1hdGNoIGRhdGEuIFdlIGNhbm5vdCB1c2UgZGV2aWNlX2dldF9tYXRjaF9kYXRhKCkgYmVjYXVz
ZSBpdCBkb2VzCisJICogbm90IGFjY2VwdCByZXVzZWQgT0Ygbm9kZXM7IHNlZSBkZXZpY2Vfc2V0
X29mX25vZGVfZnJvbV9kZXYoKS4KIAkgKi8KIAltYXRjaCA9IG9mX21hdGNoX25vZGUoZGV2LT5k
cml2ZXItPm9mX21hdGNoX3RhYmxlLCBkZXYtPm9mX25vZGUpOwogCWlmICghbWF0Y2ggfHwgIW1h
dGNoLT5kYXRhKQoKLS0gCjIuNTIuMAoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
