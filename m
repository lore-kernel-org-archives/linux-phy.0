Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97D9BC48BF6
	for <linux-phy@archiver.kernel.org>; Wed, 21 Feb 2024 13:10:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4O4F9z/gE3/6DRZo8SrtCNtNo1W6G9f4fQAOixhj5AY=; b=L6wPRripvzCps9
	PVWK9VuJyEEB2ivamAgZn9vPpCro9Oywma8TgvBQrlot9/RTYn4Kl5tKalWoTBOmsV6ZjvmomJgyY
	7tmIARnuFgGBx7fikeZhnz1wDrhI6pT2Fwy8Fw39d8Rs9bxXzadDn6CQkHc9jjcQya+Mz9Q66urPb
	EUfNSPK+auxrpFqrtBu54xhdMkHrjiVZsmSqSQj6solIaQzpQSgFM/+RRpulZx4uHXBSVlOexN41m
	iZk/fz+pVD80tG5vOARjB7y8h8m1lR2ykF2QGHNwZ9kJgvwce6ksAuNfMkuvLHledyARNM9x1dr9o
	DMkx6d5WZy540guTz3bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcmMS-00000000yg8-1Jz6;
	Wed, 21 Feb 2024 13:10:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcmMO-00000000yfH-1Tbx
	for linux-phy@lists.infradead.org;
	Wed, 21 Feb 2024 13:10:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1rcmM7-0000Ni-FO; Wed, 21 Feb 2024 14:09:47 +0100
Received: from [2a0a:edc0:0:900:1d::4e] (helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1rcmM5-00235h-KR; Wed, 21 Feb 2024 14:09:45 +0100
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1rcmM5-0008RC-1k;
	Wed, 21 Feb 2024 14:09:45 +0100
Message-ID: <c105bfa8567f9e76731f2b018f4ca3176357204d.camel@pengutronix.de>
Subject: Re: [PATCH v3 14/18] phy: cadence-torrent: add suspend and resume
 support
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Thomas Richard <thomas.richard@bootlin.com>, Linus Walleij
 <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, Andy
 Shevchenko <andy@kernel.org>, Tony Lindgren <tony@atomide.com>, Haojian
 Zhuang <haojian.zhuang@linaro.org>,  Vignesh R <vigneshr@ti.com>, Aaro
 Koskinen <aaro.koskinen@iki.fi>, Janusz Krzysztofik <jmkrzyszt@gmail.com>,
 Andi Shyti <andi.shyti@kernel.org>, Peter Rosin <peda@axentia.se>, Vinod
 Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof
 =?UTF-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Rob Herring <robh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org, 
 linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-pci@vger.kernel.org, gregory.clement@bootlin.com,
 theo.lebrun@bootlin.com,  thomas.petazzoni@bootlin.com, u-kumar1@ti.com
Date: Wed, 21 Feb 2024 14:09:45 +0100
In-Reply-To: <20240102-j7200-pcie-s2r-v3-14-5c2e4a3fac1f@bootlin.com>
References: <20240102-j7200-pcie-s2r-v3-0-5c2e4a3fac1f@bootlin.com>
	 <20240102-j7200-pcie-s2r-v3-14-5c2e4a3fac1f@bootlin.com>
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240221_051004_420926_EF9B1336 
X-CRM114-Status: GOOD (  18.84  )
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

T24gRG8sIDIwMjQtMDItMTUgYXQgMTY6MTcgKzAxMDAsIFRob21hcyBSaWNoYXJkIHdyb3RlOgo+
IEFkZCBzdXNwZW5kIGFuZCByZXN1bWUgc3VwcG9ydC4KPiAKPiBUaGUgYWxyZWFkeV9jb25maWd1
cmVkIGZsYWcgaXMgY2xlYXJlZCBkdXJpbmcgdGhlIHN1c3BlbmQgc3RhZ2UgdG8gZm9yY2UKPiB0
aGUgUEhZIGluaXRpYWxpemF0aW9uIGR1cmluZyB0aGUgcmVzdW1lIHN0YWdlLgo+IAo+IEJhc2Vk
IG9uIHRoZSB3b3JrIG9mIFRow6lvIExlYnJ1biA8dGhlby5sZWJydW5AYm9vdGxpbi5jb20+Cj4g
Cj4gU2lnbmVkLW9mZi1ieTogVGhvbWFzIFJpY2hhcmQgPHRob21hcy5yaWNoYXJkQGJvb3RsaW4u
Y29tPgo+IC0tLQo+ICBkcml2ZXJzL3BoeS9jYWRlbmNlL3BoeS1jYWRlbmNlLXRvcnJlbnQuYyB8
IDU0ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDU0
IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvY2FkZW5jZS9waHkt
Y2FkZW5jZS10b3JyZW50LmMgYi9kcml2ZXJzL3BoeS9jYWRlbmNlL3BoeS1jYWRlbmNlLXRvcnJl
bnQuYwo+IGluZGV4IDUyY2FkY2E0YzA3Yi4uZjg5NDVhMTFlN2NhIDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvcGh5L2NhZGVuY2UvcGh5LWNhZGVuY2UtdG9ycmVudC5jCj4gKysrIGIvZHJpdmVycy9w
aHkvY2FkZW5jZS9waHktY2FkZW5jZS10b3JyZW50LmMKPiBAQCAtMzAwNSw2ICszMDA1LDU5IEBA
IHN0YXRpYyB2b2lkIGNkbnNfdG9ycmVudF9waHlfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZp
Y2UgKnBkZXYpCj4gIAljZG5zX3RvcnJlbnRfY2xrX2NsZWFudXAoY2Ruc19waHkpOwo+ICB9Cj4g
IAo+ICtzdGF0aWMgaW50IGNkbnNfdG9ycmVudF9waHlfc3VzcGVuZF9ub2lycShzdHJ1Y3QgZGV2
aWNlICpkZXYpCj4gK3sKPiArCXN0cnVjdCBjZG5zX3RvcnJlbnRfcGh5ICpjZG5zX3BoeSA9IGRl
dl9nZXRfZHJ2ZGF0YShkZXYpOwo+ICsJaW50IGk7Cj4gKwo+ICsJcmVzZXRfY29udHJvbF9hc3Nl
cnQoY2Ruc19waHktPnBoeV9yc3QpOwo+ICsJcmVzZXRfY29udHJvbF9hc3NlcnQoY2Ruc19waHkt
PmFwYl9yc3QpOwo+ICsJZm9yIChpID0gMDsgaSA8IGNkbnNfcGh5LT5uc3Vibm9kZXM7IGkrKykK
PiArCQlyZXNldF9jb250cm9sX2Fzc2VydChjZG5zX3BoeS0+cGh5c1tpXS5sbmtfcnN0KTsKPiAr
Cj4gKwlpZiAoY2Ruc19waHktPmFscmVhZHlfY29uZmlndXJlZCkKPiArCQljZG5zX3BoeS0+YWxy
ZWFkeV9jb25maWd1cmVkID0gMDsKPiArCWVsc2UKPiArCQljbGtfZGlzYWJsZV91bnByZXBhcmUo
Y2Ruc19waHktPmNsayk7Cj4gKwo+ICsJcmV0dXJuIDA7Cj4gK30KPiArCj4gK3N0YXRpYyBpbnQg
Y2Ruc190b3JyZW50X3BoeV9yZXN1bWVfbm9pcnEoc3RydWN0IGRldmljZSAqZGV2KQo+ICt7Cj4g
KwlzdHJ1Y3QgY2Ruc190b3JyZW50X3BoeSAqY2Ruc19waHkgPSBkZXZfZ2V0X2RydmRhdGEoZGV2
KTsKPiArCWludCBub2RlID0gY2Ruc19waHktPm5zdWJub2RlczsKPiArCWludCByZXQsIGk7Cj4g
Kwo+ICsJcmV0ID0gY2Ruc190b3JyZW50X2NsayhjZG5zX3BoeSk7Cj4gKwlpZiAocmV0KQo+ICsJ
CWdvdG8gY2xrX2NsZWFudXA7Cj4gKwo+ICsJLyogRW5hYmxlIEFQQiAqLwo+ICsJcmVzZXRfY29u
dHJvbF9kZWFzc2VydChjZG5zX3BoeS0+YXBiX3JzdCk7Cj4gKwo+ICsJaWYgKGNkbnNfcGh5LT5u
c3Vibm9kZXMgPiAxKSB7Cj4gKwkJcmV0ID0gY2Ruc190b3JyZW50X3BoeV9jb25maWd1cmVfbXVs
dGlsaW5rKGNkbnNfcGh5KTsKPiArCQlpZiAocmV0KQo+ICsJCQlnb3RvIHB1dF9sbmtfcnN0Owo+
ICsJfQo+ICsKPiArCXJldHVybiAwOwo+ICsKPiArcHV0X2xua19yc3Q6Cj4gKwlmb3IgKGkgPSAw
OyBpIDwgbm9kZTsgaSsrKQo+ICsJCXJlc2V0X2NvbnRyb2xfYXNzZXJ0KGNkbnNfcGh5LT5waHlz
W2ldLmxua19yc3QpOwoKVGhlIHNhbWUgY2xlYW51cCBpcyBmb3VuZCBpbiBwcm9iZS4gV291bGQg
aXQgYmUgY2xlYW5lciB0byBtb3ZlIHRoaXMKaW50byBjZG5zX3RvcnJlbnRfcGh5X2NvbmZpZ3Vy
ZV9tdWx0aWxpbmsoKSBpbnN0ZWFkIG9mIGR1cGxpY2F0aW5nIGl0CmhlcmU/Cgo+ICsJcmVzZXRf
Y29udHJvbF9hc3NlcnQoY2Ruc19waHktPmFwYl9yc3QpOwo+ICsJY2xrX2Rpc2FibGVfdW5wcmVw
YXJlKGNkbnNfcGh5LT5jbGspOwo+ICtjbGtfY2xlYW51cDoKPiArCWNkbnNfdG9ycmVudF9jbGtf
Y2xlYW51cChjZG5zX3BoeSk7CgpUaGlzIGNhbGxzIG9mX2Nsa19kZWxfcHJvdmlkZXIoKSwgc2Vl
bXMgbWlzcGxhY2VkIGhlcmUuCgpyZWdhcmRzClBoaWxpcHAKCgotLSAKbGludXgtcGh5IG1haWxp
bmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
