Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0AAAC5B572
	for <linux-phy@archiver.kernel.org>; Wed, 12 Aug 2026 15:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KfH/dWMHrh+wLW03WENEHivjVVYtrlTB1rsxMOfBrA8=; b=1uj734h2kMLXNa
	2Fcowv3IwZFemyyr2FMgYJCKVUR6sKlcacboGsttVkTAj4t3tFXHQBiGZlvDRGmOHNmopbL4oFHRN
	nG/Qm+iCpT4GNy1aoJQvIXkdxAAxRTBL63a93B3OUiKQuNqyq/h4Tv+MBpobEb185J4aZsCZ+de/7
	8CGGFzUGJDYrpYtBUlDfWcZnXuDJFTkfBTGiK3B3s7Yiq2vwugsd1xsH4t/iks0FV3h25wSXiMbfN
	hQ5XYMtBObvAcImaAXTj5R9XPLMjIErxW90RJShmGxDLAr3RZ2Uq/N+lSN+vmZqnPukUwXzn9GV8S
	KTGYxiziac1JrlOr8Q6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuARv-0000000GQdK-2GWy;
	Wed, 12 Aug 2026 15:00:59 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuARu-0000000GQd5-1uR7
	for linux-phy@lists.infradead.org;
	Wed, 12 Aug 2026 15:00:58 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id A4C8560A9E;
	Wed, 12 Aug 2026 15:00:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 915971F000E9;
	Wed, 12 Aug 2026 15:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786546857;
	bh=qEmdOhtDWcb1TCaplFzUZkg70h2Ka5Q5DhBQCAHTGXE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=WwyLQbOplCXdjppgZrYcR0QZ67LgWQQoZ0hqx12TUlW4mO+3ib8fPnfAo//yLyMZy
	 qg3Y1SlPUere+f/UhfIFnFQ1N95xPmdb68hHGsJTQEcJo6hysGG/Ty3LrB9ahHY90V
	 joVgbaQ17Ott92zog2TIcO/PI/W5ynBE5c1D3SytAyu9ZbepV3KVJ9Oa7nFTKe5OJo
	 tGQTM1AdjclpNU2M/EoUxQ5S/HBDF3uQkbT1IoIvYA9a7/ZgsMq0L8Xjh4n6UKFJ8L
	 jNx1sLZ4/z7vXI2VW1R6d9y+tGM84pwn5GBnYBFghVd6TjUkeHemOA7Py57tyoNCW3
	 8vrnhM7r3jy5A==
Date: Wed, 12 Aug 2026 17:00:49 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Rustam Adilov <adilov@disroot.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Stanley Chang <stanley_chang@realtek.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Michael Zavertkin <misha.zavertkin@mail.ru>
Subject: Re: [PATCH v6 4/6] phy: realtek: usb2: introduce reset controller
 struct
Message-ID: <lbnpxp2a5g7agbtmrrxbkfeuqocurtco4n4jfcs4mqkiqsiu3w@vnf7e6weumv3>
References: <20260520175728.720877-1-adilov@disroot.org>
 <20260520175728.720877-5-adilov@disroot.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260520175728.720877-5-adilov@disroot.org>
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

T24gV2VkLCBNYXkgMjAsIDIwMjYgYXQgMTA6NTc6MjZQTSArMDUwMCwgUnVzdGFtIEFkaWxvdiB3
cm90ZToKPiBJbiBSVEw5NjA3QywgdGhlcmUgaXMgc28gY2FsbGVkICJJUCBFbmFibGUgQ29udHJv
bGxlciIgd2hpY2ggcmVzZW1ibGUKPiByZXNldCBjb250cm9sbGVyIHdpdGggcmVzZXQgbGluZXMg
YW5kIGlzIHVzZWQgZm9yIHZhcmlvdXMgdGhpbmdzIGxpa2UKPiBVU0IsIFBDSUUsIEdNQUMgYW5k
IHN1Y2guCj4gCj4gSW50cm9kdWNlIHRoZSByZXNldF9jb250cm9sIHN0cnVjdCB0byB0aGlzIGRy
aXZlciB0byBoYW5kbGUgZGVhc3NlcnRpbmcKPiB1c2IyIHBoeSByZXNldCBsaW5lLgo+IAo+IE1h
a2UgdXNlIG9mIHRoZSBmdW5jdGlvbiBkZXZtX3Jlc2V0X2NvbnRyb2xfYXJyYXlfZ2V0X29wdGlv
bmFsX2V4Y2x1c2l2ZSgpCj4gZnVuY3Rpb24gdG8gZ2V0IHRoZSByZXNldCBjb250cm9sbGVyIGFu
ZCBzaW5jZSBleGlzdGluZyBSVEQgU29DcyBkb24ndAo+IHNwZWNpZnkgdGhlIHJlc2V0cyB3ZSBj
YW4gaGF2ZSBhIGNsZWFuZXIgY29kZS4KPiAKPiBTaW5jZSB0aGUgdmVuZG9yIHVzYiBkcml2ZXIg
ZGV2ZWxvcGVkIGJ5IFJlYWx0ZWsgZG9lc24ndCBhc3NlcnQgdGhlIHJlc2V0Cj4gbGluZSAob3Ig
aW4gdGhlaXIgY2FzZSBjbGVhciB0aGUgcmVnaXN0ZXIgYml0KSwgd2UgY2FuIHJlYXNvbmFibHkg
YXNzdW1lCj4gcmVzZXRfY29udHJvbF9hc3NlcnQgaXMgbm90IG5lZWRlZCBoZXJlLgo+IAo+IENv
LWRldmVsb3BlZC1ieTogTWljaGFlbCBaYXZlcnRraW4gPG1pc2hhLnphdmVydGtpbkBtYWlsLnJ1
Pgo+IFNpZ25lZC1vZmYtYnk6IE1pY2hhZWwgWmF2ZXJ0a2luIDxtaXNoYS56YXZlcnRraW5AbWFp
bC5ydT4KPiBTaWduZWQtb2ZmLWJ5OiBSdXN0YW0gQWRpbG92IDxhZGlsb3ZAZGlzcm9vdC5vcmc+
Cj4gLS0tCj4gIGRyaXZlcnMvcGh5L3JlYWx0ZWsvcGh5LXJ0ay11c2IyLmMgfCAxNiArKysrKysr
KysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvcGh5L3JlYWx0ZWsvcGh5LXJ0ay11c2IyLmMgYi9kcml2ZXJzL3BoeS9y
ZWFsdGVrL3BoeS1ydGstdXNiMi5jCj4gaW5kZXggYTllMjlkMmY3ZTZmLi4xNmM1ZmMzMTkxZGUg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvcmVhbHRlay9waHktcnRrLXVzYjIuYwo+ICsrKyBi
L2RyaXZlcnMvcGh5L3JlYWx0ZWsvcGh5LXJ0ay11c2IyLmMKPiBAQCAtMTcsNiArMTcsNyBAQAo+
ICAjaW5jbHVkZSA8bGludXgvc3lzX3NvYy5oPgo+ICAjaW5jbHVkZSA8bGludXgvbWZkL3N5c2Nv
bi5oPgo+ICAjaW5jbHVkZSA8bGludXgvcGh5L3BoeS5oPgo+ICsjaW5jbHVkZSA8bGludXgvcmVz
ZXQuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L3VzYi5oPgo+ICAKPiAgLyogR1VTQjJQSFlBQ0NuIHJl
Z2lzdGVyICovCj4gQEAgLTEzMCw2ICsxMzEsNyBAQCBzdHJ1Y3QgcnRrX3BoeSB7Cj4gIAlzdHJ1
Y3QgcGh5X2NmZyAqcGh5X2NmZzsKPiAgCWludCBudW1fcGh5Owo+ICAJc3RydWN0IHBoeV9wYXJh
bWV0ZXIgKnBoeV9wYXJhbWV0ZXI7Cj4gKwlzdHJ1Y3QgcmVzZXRfY29udHJvbCAqcGh5X3JzdDsK
PiAgCj4gIAlzdHJ1Y3QgZGVudHJ5ICpkZWJ1Z19kaXI7Cj4gIH07Cj4gQEAgLTY3Niw2ICs2Nzgs
MTUgQEAgc3RhdGljIGludCBydGtfcGh5X2luaXQoc3RydWN0IHBoeSAqcGh5KQo+ICAJaWYgKCFy
dGtfcGh5KQo+ICAJCXJldHVybiAtRUlOVkFMOwo+ICAKPiArCWlmIChydGtfcGh5LT5waHlfcnN0
KSB7Cj4gKwkJcmV0ID0gcmVzZXRfY29udHJvbF9kZWFzc2VydChydGtfcGh5LT5waHlfcnN0KTsK
PiArCj4gKwkJaWYgKHJldCkKPiArCQkJcmV0dXJuIHJldDsKPiArCj4gKwkJdXNsZWVwX3Jhbmdl
KDUwMDAsIDYwMDApOwo+ICsJfQo+ICsKPiAgCWZvciAoaSA9IDA7IGkgPCBydGtfcGh5LT5udW1f
cGh5OyBpKyspCj4gIAkJcmV0ID0gZG9fcnRrX3BoeV9pbml0KHJ0a19waHksIGkpOwo+ICAKPiBA
QCAtMTA1OSw2ICsxMDcwLDExIEBAIHN0YXRpYyBpbnQgcnRrX3VzYjJwaHlfcHJvYmUoc3RydWN0
IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgCj4gIAlydGtfcGh5LT5udW1fcGh5ID0gcGh5X2Nm
Zy0+bnVtX3BoeTsKPiAgCj4gKwlydGtfcGh5LT5waHlfcnN0ID0gZGV2bV9yZXNldF9jb250cm9s
X2FycmF5X2dldF9vcHRpb25hbF9leGNsdXNpdmUoZGV2KTsKCldoeSBkbyB5b3UgbmVlZCB0byB1
c2UgZGV2bV9yZXNldF9jb250cm9sX2FycmF5KigpIGZvciBhIHNpbmdsZSByZXNldCBsaW5lPwoK
LSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+Cu
teCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==
