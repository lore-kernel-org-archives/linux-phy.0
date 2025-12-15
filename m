Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C85DD5B850
	for <linux-phy@archiver.kernel.org>; Mon, 15 Dec 2025 16:27:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WDOVTxu/hYQG5pWtpsnE61S/8KAUBckJhItbo6IAR+U=; b=LoCM88bfvHG+GE
	hHrETwMEr1uF5w/dLZNfTnmrzxsaczs0+XZqSogHlYdtHpDgG2/lzwsIHW/9zypbKimUBjwgbkYtP
	sNAGAyfl8OWGBff6tOZJo8bnj8Jze8T80wK4jr1faz8qrhX8ehDQjD5XIKoOlq6+4YnMZoSIbv/ug
	S6ethRgyOlAhcMvE3J0T4knxPGR+ESvnjGIOyezvF3/TMZiV0Hpsoz67fodR9GNmz2TfM30IRB8L8
	l8x9v0QFK2n8ozgZpiJlrRpAEp5opGL4ZTS16ttGIEW+9XuD16gcptfyCtEyC++5tf4nOeESQT0kf
	oF9BsF8Rt9jcNpeb/T6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVBPe-00000003z6Y-3pPE;
	Mon, 15 Dec 2025 16:27:06 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVBPc-00000003z4I-1SW7
	for linux-phy@lists.infradead.org;
	Mon, 15 Dec 2025 16:27:05 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id ED0E64E41C13;
	Mon, 15 Dec 2025 16:27:01 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id C277460664;
	Mon, 15 Dec 2025 16:27:01 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id A3195119427C6;
	Mon, 15 Dec 2025 17:26:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1765816020; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=0Ml6Zzl8BFTNao2FAIaUiqupgTqhQZZUaSVqC7tVQy8=;
	b=U4tZBM2/wEI/yKYO94ez0ZRXfhAIHhvAv8HthI+6jXKEP5nxsj4LVlVLtqjRvZfqsDrQpH
	uYjcTdnltaeneJI6KQYRy/YbixefuydARWQnc2Fa/qL10caIExdPf5FYDLpA/WIs0DCpQV
	C0RMlLYuCkPINsyFdTlkXlssXx4MynWlLWKHuzlk0W5prv9awxCLm4SWlcR9YrJARJtyEQ
	3cwuCW/IJ3EtPeaoDlBexkySNa6gGyv2D0Uo3TyWEJ8vrAVsUHXaZk5fo6boGGrqM9zA2+
	BlAS4mp+xIJrnkFwXTgpINkk2/SojTrLR1txYB/1m+otzei5oldB23bzJJ4ZvA==
From: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
Date: Mon, 15 Dec 2025 17:26:37 +0100
Subject: [PATCH v5 3/7] clk: eyeq: use the auxiliary device creation helper
MIME-Version: 1.0
Message-Id: <20251215-macb-phy-v5-3-a9dfea39da34@bootlin.com>
References: <20251215-macb-phy-v5-0-a9dfea39da34@bootlin.com>
In-Reply-To: <20251215-macb-phy-v5-0-a9dfea39da34@bootlin.com>
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
X-CRM114-CacheID: sfid-20251215_082704_524470_27B2363C 
X-CRM114-Status: GOOD (  12.42  )
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
