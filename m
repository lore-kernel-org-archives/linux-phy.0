Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2AC98C3DA79
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jan 2024 16:16:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CE+lJSKxIG75EfieVW1gn6o4PT+C6Qmgr8snk5cW1y4=; b=Dc393yUTtyn443
	oRtuOYp1H5gs7VxdPx2E7wlUcS97hzjVjcb+LMs/GluJntX54nzs+uDu/LTxlfch79fcpXPJd9iWM
	zAjdjNdZJu3ELRNCcrEkKbeotvDmhXldCKVtjszqzqZ80tgCAJfFU+JuDnpyaryGCTh/fGKiP0oU3
	l3IVWbS7ZM4eCXzHYfbCPObgTxEauMnXsAdiAb14PRKQZemWbH4/YQ0LWrJcnTSUQTMILaTniyav3
	WztGaZ/qieXgfDf/tWMBBREeGFFd2jXd5lwyf0IdFG7KmWslqQyNTmYIUn159cDQ5zRFx9/z7DnJ1
	ulpp6KL4VvPiVD9EjfDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPPdf-009ajq-0A;
	Mon, 15 Jan 2024 16:16:39 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPPdO-009aWD-1o;
	Mon, 15 Jan 2024 16:16:25 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 07E69C0004;
	Mon, 15 Jan 2024 16:16:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1705335381;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xHlgHmhFQdKKCDXxYc/ggNFFXgHMuRi1rAK2fpmgtw0=;
	b=RKiq6PEDFJewrIz560B/cQ7e8tySHH9TYfN2TIIxHo7jCa0ynZHX3RDfG0oFlfnFvvOssw
	u144gWBkomeblDYKinfqJUIYWK1WMtw9qjsgs7ng8lZ2ypTKhVLM9zmHr6dJ63EVQXQwde
	eThjBltyddSiqdCcYecfV4PIMB8UcX9g6arV7Nop89YqbkWUTlUPpNMmLqMdDR+4irOTBT
	440oP+5rcQZtcYkgHtRWUSEVkdd1WLtoyBxz9Faf4iL6d2dKxvhoH4OaD4imIxpLc2MVR6
	vK/ktLLz9ZcJhB9krkUmpZJHTB1l5Lkga5nXC/T7b3uLnVm8CyR1WQbqjXSCAg==
From: Thomas Richard <thomas.richard@bootlin.com>
Date: Mon, 15 Jan 2024 17:14:46 +0100
Subject: [PATCH 05/14] phy: ti: phy-j721e-wiz: make wiz_clock_init callable
 multiple times
MIME-Version: 1.0
Message-Id: <20240102-j7200-pcie-s2r-v1-5-84e55da52400@bootlin.com>
References: <20240102-j7200-pcie-s2r-v1-0-84e55da52400@bootlin.com>
In-Reply-To: <20240102-j7200-pcie-s2r-v1-0-84e55da52400@bootlin.com>
To: Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>, 
 Tony Lindgren <tony@atomide.com>, 
 Haojian Zhuang <haojian.zhuang@linaro.org>, Vignesh R <vigneshr@ti.com>, 
 Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Janusz Krzysztofik <jmkrzyszt@gmail.com>, 
 Andi Shyti <andi.shyti@kernel.org>, Peter Rosin <peda@axentia.se>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Tom Joseph <tjoseph@cadence.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org, 
 linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-pci@vger.kernel.org, gregory.clement@bootlin.com, 
 theo.lebrun@bootlin.com, thomas.petazzoni@bootlin.com, u-kumar1@ti.com, 
 Thomas Richard <thomas.richard@bootlin.com>
X-Mailer: b4 0.12.0
X-GND-Sasl: thomas.richard@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240115_081622_861895_89619B13 
X-CRM114-Status: GOOD (  13.68  )
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

Rm9yIHN1c3BlbmQgYW5kIHJlc3VtZSBzdXBwb3J0LCB3aXpfY2xvY2tfaW5pdCBuZWVkcyB0byBi
ZSBjYWxsZWQKbXVsdGlwbGUgdGltZXMuCkFkZCBhIHBhcmFtZXRlciB0byB3aXpfY2xvY2tfaW5p
dCB0byBiZSBhYmxlIHRvIHNraXAgY2xvY2tzCnJlZ2lzdHJhdGlvbi4KCkJhc2VkIG9uIHRoZSB3
b3JrIG9mIFRow6lvIExlYnJ1biA8dGhlby5sZWJydW5AYm9vdGxpbi5jb20+CgpTaWduZWQtb2Zm
LWJ5OiBUaG9tYXMgUmljaGFyZCA8dGhvbWFzLnJpY2hhcmRAYm9vdGxpbi5jb20+Ci0tLQogZHJp
dmVycy9waHkvdGkvcGh5LWo3MjFlLXdpei5jIHwgNjAgKysrKysrKysrKysrKysrKysrKysrKysr
Ky0tLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMzYgaW5zZXJ0aW9ucygrKSwgMjQg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvdGkvcGh5LWo3MjFlLXdpei5j
IGIvZHJpdmVycy9waHkvdGkvcGh5LWo3MjFlLXdpei5jCmluZGV4IGZjM2NkOThjNjBmZi4uMDlm
N2VkZjE2NTYyIDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS90aS9waHktajcyMWUtd2l6LmMKKysr
IGIvZHJpdmVycy9waHkvdGkvcGh5LWo3MjFlLXdpei5jCkBAIC0xMDc2LDcgKzEwNzYsNyBAQCBz
dGF0aWMgaW50IHdpel9jbG9ja19yZWdpc3RlcihzdHJ1Y3Qgd2l6ICp3aXopCiAJcmV0dXJuIHJl
dDsKIH0KIAotc3RhdGljIGludCB3aXpfY2xvY2tfaW5pdChzdHJ1Y3Qgd2l6ICp3aXosIHN0cnVj
dCBkZXZpY2Vfbm9kZSAqbm9kZSkKK3N0YXRpYyBpbnQgd2l6X2Nsb2NrX2luaXQoc3RydWN0IHdp
eiAqd2l6LCBzdHJ1Y3QgZGV2aWNlX25vZGUgKm5vZGUsIGJvb2wgcHJvYmUpCiB7CiAJY29uc3Qg
c3RydWN0IHdpel9jbGtfbXV4X3NlbCAqY2xrX211eF9zZWwgPSB3aXotPmNsa19tdXhfc2VsOwog
CXN0cnVjdCBkZXZpY2UgKmRldiA9IHdpei0+ZGV2OwpAQCAtMTA4NywxNCArMTA4NywzNiBAQCBz
dGF0aWMgaW50IHdpel9jbG9ja19pbml0KHN0cnVjdCB3aXogKndpeiwgc3RydWN0IGRldmljZV9u
b2RlICpub2RlKQogCWludCByZXQ7CiAJaW50IGk7CiAKLQljbGsgPSBkZXZtX2Nsa19nZXQoZGV2
LCAiY29yZV9yZWZfY2xrIik7Ci0JaWYgKElTX0VSUihjbGspKSB7Ci0JCWRldl9lcnIoZGV2LCAi
Y29yZV9yZWZfY2xrIGNsb2NrIG5vdCBmb3VuZFxuIik7Ci0JCXJldCA9IFBUUl9FUlIoY2xrKTsK
LQkJcmV0dXJuIHJldDsKKwlpZiAocHJvYmUpIHsKKwkJY2xrID0gZGV2bV9jbGtfZ2V0KGRldiwg
ImNvcmVfcmVmX2NsayIpOworCQlpZiAoSVNfRVJSKGNsaykpIHsKKwkJCWRldl9lcnIoZGV2LCAi
Y29yZV9yZWZfY2xrIGNsb2NrIG5vdCBmb3VuZFxuIik7CisJCQlyZXQgPSBQVFJfRVJSKGNsayk7
CisJCQlyZXR1cm4gcmV0OworCQl9CisJCXdpei0+aW5wdXRfY2xrc1tXSVpfQ09SRV9SRUZDTEtd
ID0gY2xrOworCisJCWlmICh3aXotPmRhdGEtPnBtYV9jbW5fcmVmY2xrMV9pbnRfbW9kZSkgewor
CQkJY2xrID0gZGV2bV9jbGtfZ2V0KGRldiwgImNvcmVfcmVmMV9jbGsiKTsKKwkJCWlmIChJU19F
UlIoY2xrKSkgeworCQkJCWRldl9lcnIoZGV2LCAiY29yZV9yZWYxX2NsayBjbG9jayBub3QgZm91
bmRcbiIpOworCQkJCXJldCA9IFBUUl9FUlIoY2xrKTsKKwkJCQlyZXR1cm4gcmV0OworCQkJfQor
CQkJd2l6LT5pbnB1dF9jbGtzW1dJWl9DT1JFX1JFRkNMSzFdID0gY2xrOworCQl9CisKKwkJY2xr
ID0gZGV2bV9jbGtfZ2V0KGRldiwgImV4dF9yZWZfY2xrIik7CisJCWlmIChJU19FUlIoY2xrKSkg
eworCQkJZGV2X2VycihkZXYsICJleHRfcmVmX2NsayBjbG9jayBub3QgZm91bmRcbiIpOworCQkJ
cmV0ID0gUFRSX0VSUihjbGspOworCQkJcmV0dXJuIHJldDsKKwkJfQorCQl3aXotPmlucHV0X2Ns
a3NbV0laX0VYVF9SRUZDTEtdID0gY2xrOwogCX0KLQl3aXotPmlucHV0X2Nsa3NbV0laX0NPUkVf
UkVGQ0xLXSA9IGNsazsKIAorCisJY2xrID0gd2l6LT5pbnB1dF9jbGtzW1dJWl9DT1JFX1JFRkNM
S107CiAJcmF0ZSA9IGNsa19nZXRfcmF0ZShjbGspOwogCWlmIChyYXRlID49IDEwMDAwMDAwMCkK
IAkJcmVnbWFwX2ZpZWxkX3dyaXRlKHdpei0+cG1hX2Ntbl9yZWZjbGtfaW50X21vZGUsIDB4MSk7
CkBAIC0xMTIxLDE0ICsxMTQzLDcgQEAgc3RhdGljIGludCB3aXpfY2xvY2tfaW5pdChzdHJ1Y3Qg
d2l6ICp3aXosIHN0cnVjdCBkZXZpY2Vfbm9kZSAqbm9kZSkKIAl9CiAKIAlpZiAod2l6LT5kYXRh
LT5wbWFfY21uX3JlZmNsazFfaW50X21vZGUpIHsKLQkJY2xrID0gZGV2bV9jbGtfZ2V0KGRldiwg
ImNvcmVfcmVmMV9jbGsiKTsKLQkJaWYgKElTX0VSUihjbGspKSB7Ci0JCQlkZXZfZXJyKGRldiwg
ImNvcmVfcmVmMV9jbGsgY2xvY2sgbm90IGZvdW5kXG4iKTsKLQkJCXJldCA9IFBUUl9FUlIoY2xr
KTsKLQkJCXJldHVybiByZXQ7Ci0JCX0KLQkJd2l6LT5pbnB1dF9jbGtzW1dJWl9DT1JFX1JFRkNM
SzFdID0gY2xrOwotCisJCWNsayA9IHdpei0+aW5wdXRfY2xrc1tXSVpfQ09SRV9SRUZDTEsxXTsK
IAkJcmF0ZSA9IGNsa19nZXRfcmF0ZShjbGspOwogCQlpZiAocmF0ZSA+PSAxMDAwMDAwMDApCiAJ
CQlyZWdtYXBfZmllbGRfd3JpdGUod2l6LT5wbWFfY21uX3JlZmNsazFfaW50X21vZGUsIDB4MSk7
CkBAIC0xMTM2LDIwICsxMTUxLDE3IEBAIHN0YXRpYyBpbnQgd2l6X2Nsb2NrX2luaXQoc3RydWN0
IHdpeiAqd2l6LCBzdHJ1Y3QgZGV2aWNlX25vZGUgKm5vZGUpCiAJCQlyZWdtYXBfZmllbGRfd3Jp
dGUod2l6LT5wbWFfY21uX3JlZmNsazFfaW50X21vZGUsIDB4Myk7CiAJfQogCi0JY2xrID0gZGV2
bV9jbGtfZ2V0KGRldiwgImV4dF9yZWZfY2xrIik7Ci0JaWYgKElTX0VSUihjbGspKSB7Ci0JCWRl
dl9lcnIoZGV2LCAiZXh0X3JlZl9jbGsgY2xvY2sgbm90IGZvdW5kXG4iKTsKLQkJcmV0ID0gUFRS
X0VSUihjbGspOwotCQlyZXR1cm4gcmV0OwotCX0KLQl3aXotPmlucHV0X2Nsa3NbV0laX0VYVF9S
RUZDTEtdID0gY2xrOwotCisJY2xrID0gd2l6LT5pbnB1dF9jbGtzW1dJWl9FWFRfUkVGQ0xLXTsK
IAlyYXRlID0gY2xrX2dldF9yYXRlKGNsayk7CiAJaWYgKHJhdGUgPj0gMTAwMDAwMDAwKQogCQly
ZWdtYXBfZmllbGRfd3JpdGUod2l6LT5wbWFfY21uX3JlZmNsa19tb2RlLCAweDApOwogCWVsc2UK
IAkJcmVnbWFwX2ZpZWxkX3dyaXRlKHdpei0+cG1hX2Ntbl9yZWZjbGtfbW9kZSwgMHgyKTsKIAor
CS8qIFdoYXQgZm9sbG93cyBpcyBhYm91dCByZWdpc3RlcmluZyBjbG9ja3MuICovCisJaWYgKCFw
cm9iZSkKKwkJcmV0dXJuIDA7CisKIAlzd2l0Y2ggKHdpei0+dHlwZSkgewogCWNhc2UgQU02NF9X
SVpfMTBHOgogCWNhc2UgSjcyMDBfV0laXzEwRzoKQEAgLTE1OTIsNyArMTYwNCw3IEBAIHN0YXRp
YyBpbnQgd2l6X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJCWdvdG8gZXJy
X2dldF9zeW5jOwogCX0KIAotCXJldCA9IHdpel9jbG9ja19pbml0KHdpeiwgbm9kZSk7CisJcmV0
ID0gd2l6X2Nsb2NrX2luaXQod2l6LCBub2RlLCB0cnVlKTsKIAlpZiAocmV0IDwgMCkgewogCQlk
ZXZfd2FybihkZXYsICJGYWlsZWQgdG8gaW5pdGlhbGl6ZSBjbG9ja3NcbiIpOwogCQlnb3RvIGVy
cl9nZXRfc3luYzsKCi0tIAoyLjM5LjIKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
