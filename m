Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BC73D2FEC2
	for <linux-phy@archiver.kernel.org>; Tue, 27 Jan 2026 17:09:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WDOVTxu/hYQG5pWtpsnE61S/8KAUBckJhItbo6IAR+U=; b=ZR/ntvRR+XLfWJ
	wPeY0wczh1BBdA9/4PBroYOKDvvnSS5NDB0VFPh6nG8xCDokbvUNWAQs0NfRizOlUTcMLEUY+IJ7J
	CjQPQbbk7KwjWDwmf72+YwyFzQo/Y0WcYBQjrwprxyKuM4qUd4avYqQ2ZxSH28o+j6WUOK34Vkti3
	fYBDp3qc907HB/XZFrHonvFkIZm6zWETCV5TkOCowynhnaliT6rM1JS5lhBGUiog+JXOePyLdZydf
	QZSNjFTTsLXAA0VRPz11Gvg6HAUABx4U5ImEYyBpdFiwTL5+zzritN0Bk2K6dxApU3O64NU0ie4b9
	7Alqe4/k+7Dm1yy1JBUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkmZb-0000000Ei3x-3HHZ;
	Tue, 27 Jan 2026 17:09:51 +0000
Received: from smtpout-02.galae.net ([185.246.84.56])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkmZW-0000000Ehzs-32XR
	for linux-phy@lists.infradead.org;
	Tue, 27 Jan 2026 17:09:48 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 4E6241A2A99;
	Tue, 27 Jan 2026 17:09:45 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 24556606F5;
	Tue, 27 Jan 2026 17:09:45 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 68E80119A8696;
	Tue, 27 Jan 2026 18:09:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1769533784; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=0Ml6Zzl8BFTNao2FAIaUiqupgTqhQZZUaSVqC7tVQy8=;
	b=zlCG/QMTw8orp0VFvhGZll/8qWWl/vgQuk2QBhCqFLbi0Roodn0JpNYzywTMez9l9gqTus
	Tk/bLQu9uq+P1+VaT6HYpC7POgAiyIOIHF7T7X/7vcWKuVJHua2C8i6vEHEyRcDxCMX7YC
	YbJ5ci0YVhB1jYcUmxsSgIucQaiMgFkZ0uJOBqIFucjbKWFmOGntN8wUIGxZBtitz30UWi
	BlgkQtjZYJyTns9/GgHAKJkwT0ys87fNgJyee8uzOm310vmWkp7LK5BSSe2Zg2kRcl8Dr3
	RM5Ax2M2i8Mxr5f+siXwW7Bv0wE9yJfaVekwid1UPQTLNFiVUhS09tYBTdWGNg==
From: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
Date: Tue, 27 Jan 2026 18:09:32 +0100
Subject: [PATCH v6 4/8] clk: eyeq: use the auxiliary device creation helper
MIME-Version: 1.0
Message-Id: <20260127-macb-phy-v6-4-cdd840588188@bootlin.com>
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
X-CRM114-CacheID: sfid-20260127_090946_919308_C5E0298D 
X-CRM114-Status: GOOD (  13.07  )
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
LWJ5OiBKZXJvbWUgQnJ1bmV0IDxqYnJ1bmV0QGJheWxpYnJlLmNvbT4KUmV2aWV3ZWQtYnk6IEx1
Y2EgQ2VyZXNvbGkgPGx1Y2EuY2VyZXNvbGlAYm9vdGxpbi5jb20+ClNpZ25lZC1vZmYtYnk6IFRo
w6lvIExlYnJ1biA8dGhlby5sZWJydW5AYm9vdGxpbi5jb20+Ci0tLQogZHJpdmVycy9jbGsvY2xr
LWV5ZXEuYyB8IDU3ICsrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgNDUgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsvY2xrLWV5ZXEuYyBiL2RyaXZlcnMvY2xrL2Nsay1l
eWVxLmMKaW5kZXggZWExYzNkNzhlN2NkLi42NjRjZTdkNzg2OGQgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvY2xrL2Nsay1leWVxLmMKKysrIGIvZHJpdmVycy9jbGsvY2xrLWV5ZXEuYwpAQCAtMzIyLDM4
ICszMjIsMTggQEAgc3RhdGljIHZvaWQgZXFjX3Byb2JlX2luaXRfZml4ZWRfZmFjdG9ycyhzdHJ1
Y3QgZGV2aWNlICpkZXYsCiAJfQogfQogCi1zdGF0aWMgdm9pZCBlcWNfYXV4ZGV2X3JlbGVhc2Uo
c3RydWN0IGRldmljZSAqZGV2KQotewotCXN0cnVjdCBhdXhpbGlhcnlfZGV2aWNlICphZGV2ID0g
dG9fYXV4aWxpYXJ5X2RldihkZXYpOwotCi0Ja2ZyZWUoYWRldik7Ci19Ci0KLXN0YXRpYyBpbnQg
ZXFjX2F1eGRldl9jcmVhdGUoc3RydWN0IGRldmljZSAqZGV2LCB2b2lkIF9faW9tZW0gKmJhc2Us
Ci0JCQkgICAgIGNvbnN0IGNoYXIgKm5hbWUsIHUzMiBpZCkKK3N0YXRpYyB2b2lkIGVxY19hdXhk
ZXZfY3JlYXRlX29wdGlvbmFsKHN0cnVjdCBkZXZpY2UgKmRldiwgdm9pZCBfX2lvbWVtICpiYXNl
LAorCQkJCSAgICAgICBjb25zdCBjaGFyICpuYW1lKQogewogCXN0cnVjdCBhdXhpbGlhcnlfZGV2
aWNlICphZGV2OwotCWludCByZXQ7CiAKLQlhZGV2ID0ga3phbGxvYyhzaXplb2YoKmFkZXYpLCBH
RlBfS0VSTkVMKTsKLQlpZiAoIWFkZXYpCi0JCXJldHVybiAtRU5PTUVNOwotCi0JYWRldi0+bmFt
ZSA9IG5hbWU7Ci0JYWRldi0+ZGV2LnBhcmVudCA9IGRldjsKLQlhZGV2LT5kZXYucGxhdGZvcm1f
ZGF0YSA9ICh2b2lkIF9fZm9yY2UgKiliYXNlOwotCWFkZXYtPmRldi5yZWxlYXNlID0gZXFjX2F1
eGRldl9yZWxlYXNlOwotCWFkZXYtPmlkID0gaWQ7Ci0KLQlyZXQgPSBhdXhpbGlhcnlfZGV2aWNl
X2luaXQoYWRldik7Ci0JaWYgKHJldCkKLQkJcmV0dXJuIHJldDsKLQotCXJldCA9IGF1eGlsaWFy
eV9kZXZpY2VfYWRkKGFkZXYpOwotCWlmIChyZXQpCi0JCWF1eGlsaWFyeV9kZXZpY2VfdW5pbml0
KGFkZXYpOwotCi0JcmV0dXJuIHJldDsKKwlpZiAobmFtZSkgeworCQlhZGV2ID0gZGV2bV9hdXhp
bGlhcnlfZGV2aWNlX2NyZWF0ZShkZXYsIG5hbWUsCisJCQkJCQkgICAgKHZvaWQgX19mb3JjZSAq
KWJhc2UpOworCQlpZiAoIWFkZXYpCisJCQlkZXZfd2FybihkZXYsICJmYWlsZWQgY3JlYXRpbmcg
YXV4aWxpYXJ5IGRldmljZSAlcy4lc1xuIiwKKwkJCQkgS0JVSUxEX01PRE5BTUUsIG5hbWUpOwor
CX0KIH0KIAogc3RhdGljIGludCBlcWNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRl
dikKQEAgLTM2NSw3ICszNDUsNiBAQCBzdGF0aWMgaW50IGVxY19wcm9iZShzdHJ1Y3QgcGxhdGZv
cm1fZGV2aWNlICpwZGV2KQogCXVuc2lnbmVkIGludCBpLCBjbGtfY291bnQ7CiAJc3RydWN0IHJl
c291cmNlICpyZXM7CiAJdm9pZCBfX2lvbWVtICpiYXNlOwotCWludCByZXQ7CiAKIAlkYXRhID0g
ZGV2aWNlX2dldF9tYXRjaF9kYXRhKGRldik7CiAJaWYgKCFkYXRhKQpAQCAtMzc5LDIxICszNTgs
OSBAQCBzdGF0aWMgaW50IGVxY19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQog
CWlmICghYmFzZSkKIAkJcmV0dXJuIC1FTk9NRU07CiAKLQkvKiBJbml0IG9wdGlvbmFsIHJlc2V0
IGF1eGlsaWFyeSBkZXZpY2UuICovCi0JaWYgKGRhdGEtPnJlc2V0X2F1eGRldl9uYW1lKSB7Ci0J
CXJldCA9IGVxY19hdXhkZXZfY3JlYXRlKGRldiwgYmFzZSwgZGF0YS0+cmVzZXRfYXV4ZGV2X25h
bWUsIDApOwotCQlpZiAocmV0KQotCQkJZGV2X3dhcm4oZGV2LCAiZmFpbGVkIGNyZWF0aW5nIGF1
eGlsaWFyeSBkZXZpY2UgJXMuJXM6ICVkXG4iLAotCQkJCSBLQlVJTERfTU9ETkFNRSwgZGF0YS0+
cmVzZXRfYXV4ZGV2X25hbWUsIHJldCk7Ci0JfQotCi0JLyogSW5pdCBvcHRpb25hbCBwaW5jdHJs
IGF1eGlsaWFyeSBkZXZpY2UuICovCi0JaWYgKGRhdGEtPnBpbmN0cmxfYXV4ZGV2X25hbWUpIHsK
LQkJcmV0ID0gZXFjX2F1eGRldl9jcmVhdGUoZGV2LCBiYXNlLCBkYXRhLT5waW5jdHJsX2F1eGRl
dl9uYW1lLCAwKTsKLQkJaWYgKHJldCkKLQkJCWRldl93YXJuKGRldiwgImZhaWxlZCBjcmVhdGlu
ZyBhdXhpbGlhcnkgZGV2aWNlICVzLiVzOiAlZFxuIiwKLQkJCQkgS0JVSUxEX01PRE5BTUUsIGRh
dGEtPnBpbmN0cmxfYXV4ZGV2X25hbWUsIHJldCk7Ci0JfQorCS8qIEluaXQgb3B0aW9uYWwgYXV4
aWxpYXJ5IGRldmljZXMuICovCisJZXFjX2F1eGRldl9jcmVhdGVfb3B0aW9uYWwoZGV2LCBiYXNl
LCBkYXRhLT5yZXNldF9hdXhkZXZfbmFtZSk7CisJZXFjX2F1eGRldl9jcmVhdGVfb3B0aW9uYWwo
ZGV2LCBiYXNlLCBkYXRhLT5waW5jdHJsX2F1eGRldl9uYW1lKTsKIAogCWlmIChkYXRhLT5wbGxf
Y291bnQgKyBkYXRhLT5kaXZfY291bnQgKyBkYXRhLT5maXhlZF9mYWN0b3JfY291bnQgPT0gMCkK
IAkJcmV0dXJuIDA7IC8qIFplcm8gY2xvY2tzLCB3ZSBhcmUgZG9uZS4gKi8KCi0tIAoyLjUyLjAK
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
