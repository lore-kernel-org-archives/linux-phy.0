Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E153D5B843
	for <linux-phy@archiver.kernel.org>; Mon, 15 Dec 2025 15:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:From:To:Cc:
	Subject:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BsXt/jXYzKDo4xMakJlE71WxwbWSUR0TqYKc0+6mkZ0=; b=TxgrdFLiYNGImX
	jS9oUIFCTfwsknEGsGCf2RDmt+EmxW5mMe4BTFgnc1Kp1oz04VDbu8zXPQvqXJPmVzIz117pfub05
	zBY83ulj0CTA/RCIR+osxxlNzzaSoz+WQj+KAjQTGuDopf4c3K6G6lMp1cVMLG6VvT3nPcoyltlAi
	mrEf5OP7vnK/3Z7emfYdkZrLVviCtu9tFl9S1xUZ3RidlvcsoG2LOltBjLGh9JQ9Soaas5VLailnD
	ChimcBc8iyECOLT/8rbektybvPx1CQ8l0WRGLMsbN3CkUuRp3HvQcHBS18R289BF8YILqEkmMyGxV
	jYS/GFK/8NEEH1iidRMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVABw-00000003s94-400E;
	Mon, 15 Dec 2025 15:08:52 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVABt-00000003s7e-2sKw
	for linux-phy@lists.infradead.org;
	Mon, 15 Dec 2025 15:08:51 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 41DAD4E41C17;
	Mon, 15 Dec 2025 15:08:45 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 122B660664;
	Mon, 15 Dec 2025 15:08:45 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 1C25711942578;
	Mon, 15 Dec 2025 16:08:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1765811323; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=wcvVTrcx8vE/xL+R1EUIp8wAAMGOJqt3U7lEcNxvCt8=;
	b=QysjCSFHftpr0PmUk2fnxSR1Y6Bu3cIUU7Zn9AieLfERSZTsbpMh1zKW2UdUJ26DdcTp1c
	0xoN2ajsm4Z7te9idHtpDmD2IzFFf5pLfG4GOVPdqLijXZnAW3BncMaZDRDtu77U1SqgRx
	N7hjsBREM/Onkd6v3XxFTcl9+9qFCTJkwwMLod5qPpsbcZNk7dRrX8MctOZJ9Bj9koFBth
	Zt+NQUahfBlKmRD/1piYFP+FT3tSqRV4hoemDzgVJJQiIaPtIWVKvvhCF5Va65zcBMMh2b
	liU3i6FuGb5bAkAHGGVtALdagDTNwKLrzPhxkHZFDfOqOAYplARljLJGgbmLwA==
Mime-Version: 1.0
Date: Mon, 15 Dec 2025 16:08:38 +0100
Message-Id: <DEYVVCWBOZSH.2ZY41YCHLS8FU@bootlin.com>
Subject: Re: [PATCH v4 2/7] phy: Add driver for EyeQ5 Ethernet PHY wrapper
Cc: <linux-mips@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <linux-clk@vger.kernel.org>, =?utf-8?q?Beno=C3=AEt_Monin?=
 <benoit.monin@bootlin.com>, "Maxime Chevallier"
 <maxime.chevallier@bootlin.com>, "Tawfik Bayouk"
 <tawfik.bayouk@mobileye.com>, "Thomas Petazzoni"
 <thomas.petazzoni@bootlin.com>
To: "Luca Ceresoli" <luca.ceresoli@bootlin.com>,
 =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>, "Vladimir
 Kondratiev" <vladimir.kondratiev@mobileye.com>,
 =?utf-8?q?Gr=C3=A9gory_Clement?= <gregory.clement@bootlin.com>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>, "Vinod Koul" <vkoul@kernel.org>,
 "Kishon Vijay Abraham I" <kishon@kernel.org>, "Michael Turquette"
 <mturquette@baylibre.com>, "Stephen Boyd" <sboyd@kernel.org>, "Philipp
 Zabel" <p.zabel@pengutronix.de>, "Thomas Bogendoerfer"
 <tsbogend@alpha.franken.de>
From: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20251124-macb-phy-v4-0-955c625a81a7@bootlin.com>
 <20251124-macb-phy-v4-2-955c625a81a7@bootlin.com>
 <DEUNYYW0Y23E.2SA0SOCS99NA0@bootlin.com>
In-Reply-To: <DEUNYYW0Y23E.2SA0SOCS99NA0@bootlin.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_070849_861920_C2418103 
X-CRM114-Status: GOOD (  18.60  )
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

SGVsbG8gTHVjYSwKCk9uIFdlZCBEZWMgMTAsIDIwMjUgYXQgNTowNiBQTSBDRVQsIEx1Y2EgQ2Vy
ZXNvbGkgd3JvdGU6Cj4gT24gTW9uIE5vdiAyNCwgMjAyNSBhdCAzOjQxIFBNIENFVCwgVGjDqW8g
TGVicnVuIHdyb3RlOgo+PiBFeWVRNSBlbWJlZHMgYSBzeXN0ZW0tY29udHJvbGxlciBjYWxsZWQg
T0xCLiBJdCBmZWF0dXJlcyBtYW55IHVucmVsYXRlZAo+PiByZWdpc3RlcnMsIGFuZCBzb21lIG9m
IHRob3NlIGFyZSByZWdpc3RlcnMgdXNlZCB0byBjb25maWd1cmUgdGhlCj4+IGludGVncmF0aW9u
IG9mIHRoZSBSR01JSS9TR01JSSBDYWRlbmNlIFBIWSB1c2VkIGJ5IE1BQ0IvR0VNIGluc3RhbmNl
cy4KPj4KPj4gV3JhcCBpbiBhIG5lYXQgZ2VuZXJpYyBQSFkgcHJvdmlkZXIsIGV4cG9zaW5nIHR3
byBQSFlzIHdpdGggc3RhbmRhcmQKPj4gcGh5X2luaXQoKSAvIHBoeV9zZXRfbW9kZSgpIC8gcGh5
X3Bvd2VyX29uKCkgb3BlcmF0aW9ucy4KPj4KPj4gU2lnbmVkLW9mZi1ieTogVGjDqW8gTGVicnVu
IDx0aGVvLmxlYnJ1bkBib290bGluLmNvbT4KPgo+IFsuLi5dCj4KPj4gLS0tIC9kZXYvbnVsbAo+
PiArKysgYi9kcml2ZXJzL3BoeS9waHktZXllcTUtZXRoLmMKPj4gQEAgLTAsMCArMSwyNTQgQEAK
Pj4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkKPj4gKwo+PiArI2lu
Y2x1ZGUgPGxpbnV4L2FycmF5X3NpemUuaD4KPj4gKyNpbmNsdWRlIDxsaW51eC9hdXhpbGlhcnlf
YnVzLmg+Cj4+ICsjaW5jbHVkZSA8bGludXgvYml0ZmllbGQuaD4KPj4gKyNpbmNsdWRlIDxsaW51
eC9iaXRzLmg+Cj4+ICsjaW5jbHVkZSA8bGludXgvYnVnLmg+Cj4+ICsjaW5jbHVkZSA8bGludXgv
Y2xlYW51cC5oPgo+PiArI2luY2x1ZGUgPGxpbnV4L2NvbnRhaW5lcl9vZi5oPgo+PiArI2luY2x1
ZGUgPGxpbnV4L2RldmljZS5oPgo+PiArI2luY2x1ZGUgPGxpbnV4L2Vyci5oPgo+PiArI2luY2x1
ZGUgPGxpbnV4L2Vycm5vLmg+Cj4+ICsjaW5jbHVkZSA8bGludXgvaW5pdC5oPgo+PiArI2luY2x1
ZGUgPGxpbnV4L2lvLmg+Cj4+ICsjaW5jbHVkZSA8bGludXgvaW9wb2xsLmg+Cj4+ICsjaW5jbHVk
ZSA8bGludXgvbG9ja2RlcC5oPgo+PiArI2luY2x1ZGUgPGxpbnV4L21vZF9kZXZpY2V0YWJsZS5o
Pgo+PiArI2luY2x1ZGUgPGxpbnV4L211dGV4Lmg+Cj4+ICsjaW5jbHVkZSA8bGludXgvb2YuaD4K
Pj4gKyNpbmNsdWRlIDxsaW51eC9waHkuaD4KPj4gKyNpbmNsdWRlIDxsaW51eC9waHkvcGh5Lmg+
Cj4+ICsjaW5jbHVkZSA8bGludXgvc2xhYi5oPgo+PiArI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+
Cj4KPiBBcmUgYWxsIHRoZXNlIGluY2x1ZGUgZmlsZXMgcmVhbGx5IG5lZWRlZD8gQXQgYSBxdWlj
ayBnbGFuY2UgYml0ZmllbGQuaCwKPiBjbGVhbnVwLmggYW5kIGxvY2tkZXAuaCBsb29rIHVudXNl
ZCBpbiB0aGlzIGZpbGUuCgpZZXMgZ29vZCBjYXRjaCwgYWZ0ZXIgaGF2aW5nIGNoZWNrZWQgYWxs
IHN5bWJvbHMgdXNlZCwgdXBkYXRlcyBhcmU6Ci0gQWRkIGRlbGF5LmggZm9yIHVkZWxheSgpLCBn
ZnBfdHlwZXMuaCBmb3IgR0ZQXyogYWxsb2MgZmxhZ3MsCiAgbW9kdWxlLmggZm9yIE1PRFVMRV8q
IG1hY3Jvcy4KLSBEcm9wIGFycmF5X3NpemUuaCwgYnVnLmgsIGNsZWFudXAuaCwgY29udGFpbmVy
X29mLmgsIGxvY2tkZXAuaCwKICBtdXRleC5oLgoKV2UgZG8gbmVlZCBiaXRmaWVsZC5oIGZvciBG
SUVMRF9QUkVQKCkuCgo+Cj4+ICsjZGVmaW5lIEVRNV9QSFlfQ09VTlQJMgo+Cj4gWy4uLl0KPgo+
PiArc3RhdGljIGNvbnN0IHN0cnVjdCBwaHlfb3BzIGVxNV9waHlfb3BzID0gewo+PiArCS5pbml0
CQk9IGVxNV9waHlfaW5pdCwKPj4gKwkuZXhpdAkJPSBlcTVfcGh5X2V4aXQsCj4+ICsJLnNldF9t
b2RlCT0gZXE1X3BoeV9zZXRfbW9kZSwKPj4gKwkucG93ZXJfb24JPSBlcTVfcGh5X3Bvd2VyX29u
LAo+PiArCS5wb3dlcl9vZmYJPSBlcTVfcGh5X3Bvd2VyX29mZiwKPj4gK307Cj4+ICsKPj4gK3N0
YXRpYyBzdHJ1Y3QgcGh5ICplcTVfcGh5X3hsYXRlKHN0cnVjdCBkZXZpY2UgKmRldiwKPj4gKwkJ
CQkgY29uc3Qgc3RydWN0IG9mX3BoYW5kbGVfYXJncyAqYXJncykKPj4gK3sKPj4gKwlzdHJ1Y3Qg
ZXE1X3BoeV9wcml2YXRlICpwcml2ID0gZGV2X2dldF9kcnZkYXRhKGRldik7Cj4+ICsKPj4gKwlp
ZiAoYXJncy0+YXJnc19jb3VudCAhPSAxIHx8IGFyZ3MtPmFyZ3NbMF0gPiAxKQo+Cj4gTWF5YmUs
IGZvciBiZXR0ZXIgY2xhcml0eToKPgo+IAlpZiAoYXJncy0+YXJnc19jb3VudCAhPSAxIHx8IGFy
Z3MtPmFyZ3NbMF0gPj0gRVE1X1BIWV9DT1VOVCkKCkRvbmUsIGluZGVlZCB0aGUgb2xkIG1hZ2lj
IHZhbHVlIHdhcyBub3QgYSBnb29kIGlkZWEuCgo+Cj4+ICsJCXJldHVybiBFUlJfUFRSKC1FSU5W
QUwpOwo+PiArCj4+ICsJcmV0dXJuIHByaXYtPnBoeXNbYXJncy0+YXJnc1swXV0ucGh5Owo+PiAr
fQo+PiArCj4+ICtzdGF0aWMgaW50IGVxNV9waHlfcHJvYmVfcGh5KHN0cnVjdCBlcTVfcGh5X3By
aXZhdGUgKnByaXYsIHVuc2lnbmVkIGludCBpbmRleCwKPj4gKwkJCSAgICAgdm9pZCBfX2lvbWVt
ICpiYXNlLCB1bnNpZ25lZCBpbnQgZ3AsCj4+ICsJCQkgICAgIHVuc2lnbmVkIGludCBzZ21paSkK
Pj4gK3sKPj4gKwlzdHJ1Y3QgZXE1X3BoeV9pbnN0ICppbnN0ID0gJnByaXYtPnBoeXNbaW5kZXhd
Owo+PiArCXN0cnVjdCBkZXZpY2UgKmRldiA9IHByaXYtPmRldjsKPj4gKwlzdHJ1Y3QgcGh5ICpw
aHk7Cj4+ICsKPj4gKwlwaHkgPSBkZXZtX3BoeV9jcmVhdGUoZGV2LCBkZXYtPm9mX25vZGUsICZl
cTVfcGh5X29wcyk7Cj4+ICsJaWYgKElTX0VSUihwaHkpKSB7Cj4+ICsJCWRldl9lcnIoZGV2LCAi
ZmFpbGVkIHRvIGNyZWF0ZSBQSFkgJXVcbiIsIGluZGV4KTsKPj4gKwkJcmV0dXJuIFBUUl9FUlIo
cGh5KTsKPj4gKwl9Cj4KPiBXaHkgbm90IGRldl9lcnJfcHJvYmUoKT8gSXQgd291bGQgbWFrZSBj
b2RlIG1vcmUgY29uY2lzZSB0b286Cj4KPiAJcGh5ID0gZGV2bV9waHlfY3JlYXRlKGRldiwgZGV2
LT5vZl9ub2RlLCAmZXE1X3BoeV9vcHMpOwo+IAlpZiAoSVNfRVJSKHBoeSkpCj4gCQlyZXR1cm4g
ZGV2X2Vycl9wcm9iZShkZXYsIFBUUl9FUlIocGh5KSwgImZhaWxlZCB0byBjcmVhdGUgUEhZICV1
XG4iLCBpbmRleCk7CgpCZWNhdXNlIEkgaGFkIGZvcmdvdHRlbi4gOi0pIFRoYW5rcyEKCj4KPj4g
Kwo+PiArCWluc3QtPnByaXYgPSBwcml2Owo+PiArCWluc3QtPnBoeSA9IHBoeTsKPj4gKwlpbnN0
LT5ncCA9IGJhc2UgKyBncDsKPj4gKwlpbnN0LT5zZ21paSA9IGJhc2UgKyBzZ21paTsKPj4gKwlp
bnN0LT5waHlfaW50ZXJmYWNlID0gUEhZX0lOVEVSRkFDRV9NT0RFX05BOwo+PiArCXBoeV9zZXRf
ZHJ2ZGF0YShwaHksIGluc3QpOwo+PiArCj4+ICsJcmV0dXJuIDA7Cj4+ICt9Cj4+ICsKPj4gK3N0
YXRpYyBpbnQgZXE1X3BoeV9wcm9iZShzdHJ1Y3QgYXV4aWxpYXJ5X2RldmljZSAqYWRldiwKPj4g
KwkJCSBjb25zdCBzdHJ1Y3QgYXV4aWxpYXJ5X2RldmljZV9pZCAqaWQpCj4+ICt7Cj4+ICsJc3Ry
dWN0IGRldmljZSAqZGV2ID0gJmFkZXYtPmRldjsKPj4gKwlzdHJ1Y3QgcGh5X3Byb3ZpZGVyICpw
cm92aWRlcjsKPj4gKwlzdHJ1Y3QgZXE1X3BoeV9wcml2YXRlICpwcml2Owo+PiArCXZvaWQgX19p
b21lbSAqYmFzZTsKPj4gKwlpbnQgcmV0Owo+PiArCj4+ICsJcHJpdiA9IGRldm1fa3phbGxvYyhk
ZXYsIHNpemVvZigqcHJpdiksIEdGUF9LRVJORUwpOwo+PiArCWlmICghcHJpdikKPj4gKwkJcmV0
dXJuIC1FTk9NRU07Cj4+ICsKPj4gKwlwcml2LT5kZXYgPSBkZXY7Cj4+ICsJZGV2X3NldF9kcnZk
YXRhKGRldiwgcHJpdik7Cj4+ICsKPj4gKwliYXNlID0gKHZvaWQgX19pb21lbSAqKWRldl9nZXRf
cGxhdGRhdGEoZGV2KTsKPj4gKwo+PiArCXJldCA9IGVxNV9waHlfcHJvYmVfcGh5KHByaXYsIDAs
IGJhc2UsIEVRNV9QSFkwX0dQLCBFUTVfUEhZMF9TR01JSSk7Cj4+ICsJaWYgKHJldCkKPj4gKwkJ
cmV0dXJuIHJldDsKPj4gKwo+PiArCXJldCA9IGVxNV9waHlfcHJvYmVfcGh5KHByaXYsIDEsIGJh
c2UsIEVRNV9QSFkxX0dQLCBFUTVfUEhZMV9TR01JSSk7Cj4+ICsJaWYgKHJldCkKPj4gKwkJcmV0
dXJuIHJldDsKPj4gKwo+PiArCXByb3ZpZGVyID0gZGV2bV9vZl9waHlfcHJvdmlkZXJfcmVnaXN0
ZXIoZGV2LCBlcTVfcGh5X3hsYXRlKTsKPj4gKwlpZiAoSVNfRVJSKHByb3ZpZGVyKSkgewo+PiAr
CQlkZXZfZXJyKGRldiwgInJlZ2lzdGVyaW5nIHByb3ZpZGVyIGZhaWxlZFxuIik7Cj4+ICsJCXJl
dHVybiBQVFJfRVJSKHByb3ZpZGVyKTsKPj4gKwl9Cj4KPiBBcyBhYm92ZSwgd2h5IG5vdCBkZXZf
ZXJyX3Byb2JlKCk/CgpHb29kIGlkZWEgb25jZSBhZ2Fpbi4KCj4gT3RoZXIgdGhhbiB0aGUgYWJv
dmUgbWlub3IgaXNzdWVzLCBMR1RNLiBUaGlzIGRyaXZlciBsb29rcyBjbGVhbmx5Cj4gaW1wbGVt
ZW50ZWQuCgpUaGFua3MgZm9yIHRoZSByZXZpZXcuIERvZXMgdGhhdCBpbXBseSBJIGNhbiBhcHBl
bmQgeW91ciBSYiB0cmFpbGVyPwoKVGhhbmtzIEx1Y2EsCgotLQpUaMOpbyBMZWJydW4sIEJvb3Rs
aW4KRW1iZWRkZWQgTGludXggYW5kIEtlcm5lbCBlbmdpbmVlcmluZwpodHRwczovL2Jvb3RsaW4u
Y29tCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cGh5Cg==
