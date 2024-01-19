Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51B79C47DD9
	for <linux-phy@archiver.kernel.org>; Fri, 19 Jan 2024 16:25:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ihdFj/Ar1eY8D+ouFHIT9lGVERNSsg3zCjrOpO/bzkQ=; b=JZIu6SXBLHFSim
	eqZaAHHll72N9d1rcs26SspCSrI8rTEuSMs11uummYeE+ZRD/Wz86u/f1Mxcz7sdeBtLr5z8/OoBA
	9IjZ0sd9CIocCntl/CAV+acpSX0XmotEJN1hwmTf54cWDCTxqQQY/QTx87yCmlMk5wgqmrzEbBcIa
	lBrOaNY4JIdapBJJ2HeYVzwSlcvlcGyUC8O7rV1ChpcjM2w9jS2H2HBQbrDCSdZIdOFSg8t6Lyga8
	B1kULOpXG1VxaiZX+NJ1IHqdEU6cwl/sYs7fjXZ6wgU+yhpFI0ePbl8+IO+am6RfQUfFE4mS6DUT2
	pLmSWqVKlZ9HhEtjvnpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQrga-0066Np-32;
	Fri, 19 Jan 2024 16:25:40 +0000
Received: from relay1-d.mail.gandi.net ([2001:4b98:dc4:8::221])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQrgW-0066Ls-31;
	Fri, 19 Jan 2024 16:25:38 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id C016B240002;
	Fri, 19 Jan 2024 16:25:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1705681533;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=e1EvaPvXApBgyAhcuA6NX5wpZMQGqeoo3nUdtJav3rw=;
	b=hjZYzM0kQHuRZNPcdU8ob/JNxW9huON2tGjrVWhmWYsIggW9L/0Bsy6cvtDtllZXtvdQs9
	xE7HL4oEC/LAcvDR9umcjSB13cJboiMZkGSqT4croOz5W7E+lyEA0Ebon8ewkcnllnk489
	cpfKUdcrfL/3cq3CC1XuRM4VLhLQSr0xY4/t5SPbBztssntRCkxEm+bttpGYrugkEBfr70
	sSkhTFovjaSNa7M6u0F5yqTzyT2vTy0IevqKxWeVWImlgl8OBAuaWxF5kqvo9RFvFd6NqM
	kWjZ8Iw9D+540DaTDSNT38aFE+Fz2R2ETVccGuE783UjmK9xBB1t4fZS9O64VQ==
Message-ID: <828dd9ba-60f1-419b-9121-204d622739d3@bootlin.com>
Date: Fri, 19 Jan 2024 17:25:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/14] mux: mmio: Add resume support
Content-Language: en-US
To: Peter Rosin <peda@axentia.se>, Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>,
 Tony Lindgren <tony@atomide.com>, Haojian Zhuang
 <haojian.zhuang@linaro.org>, Vignesh R <vigneshr@ti.com>,
 Aaro Koskinen <aaro.koskinen@iki.fi>,
 Janusz Krzysztofik <jmkrzyszt@gmail.com>, Andi Shyti
 <andi.shyti@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Tom Joseph <tjoseph@cadence.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org,
 linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-pci@vger.kernel.org, gregory.clement@bootlin.com,
 theo.lebrun@bootlin.com, thomas.petazzoni@bootlin.com, u-kumar1@ti.com
References: <20240102-j7200-pcie-s2r-v1-0-84e55da52400@bootlin.com>
 <20240102-j7200-pcie-s2r-v1-4-84e55da52400@bootlin.com>
 <c147ae1b-87cc-52b1-4ec7-684d5e7cc5db@axentia.se>
From: Thomas Richard <thomas.richard@bootlin.com>
In-Reply-To: <c147ae1b-87cc-52b1-4ec7-684d5e7cc5db@axentia.se>
X-GND-Sasl: thomas.richard@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240119_082537_413346_220904D1 
X-CRM114-Status: GOOD (  26.30  )
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

SGVsbG8gUGV0ZXIsCgpUaGFua3MgZm9yIHRoZSByZXZpZXcuCgpPbiAxLzE1LzI0IDIzOjMxLCBQ
ZXRlciBSb3NpbiB3cm90ZToKPiBIaSEKPiAKPiAyMDI0LTAxLTE1IGF0IDE3OjE0LCBUaG9tYXMg
UmljaGFyZCB3cm90ZToKPj4gRnJvbTogVGjDqW8gTGVicnVuIDx0aGVvLmxlYnJ1bkBib290bGlu
LmNvbT4KPj4KPj4gSW1wbGVtZW50IHJlc3VtZSBzdXBwb3J0Cj4gCj4gV2hhdCBBbmR5IHNhaWQs
IGFuZCBwbGVhc2UgZG9uJ3Qgb21pdCBwdW5jdHVhdGlvbi4gVHJ5IHRvIG1ha2UgaXQgYQo+IHBs
ZWFzdXJlIHRvIHJlYWQgeW91ciBwYXRjaGVzIQoKWWVzIG15IGNvbW1pdCBtZXNzYWdlIG5lZWRz
IHRvIGJlIG1vcmUgdmVyYm9zZSwgc29ycnkuCgo+IAo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBUaMOp
byBMZWJydW4gPHRoZW8ubGVicnVuQGJvb3RsaW4uY29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBUaG9t
YXMgUmljaGFyZCA8dGhvbWFzLnJpY2hhcmRAYm9vdGxpbi5jb20+Cj4+IC0tLQo+PiAgZHJpdmVy
cy9tdXgvbW1pby5jIHwgMzQgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+PiAg
MSBmaWxlIGNoYW5nZWQsIDM0IGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvbXV4L21taW8uYyBiL2RyaXZlcnMvbXV4L21taW8uYwo+PiBpbmRleCBmZDFkMTIxYTU4NGIu
LmFiNGVmMTk1ZmMwZCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9tdXgvbW1pby5jCj4+ICsrKyBi
L2RyaXZlcnMvbXV4L21taW8uYwo+PiBAQCAtMTI1LDEzICsxMjUsNDcgQEAgc3RhdGljIGludCBt
dXhfbW1pb19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+PiAgCj4+ICAJbXV4
X2NoaXAtPm9wcyA9ICZtdXhfbW1pb19vcHM7Cj4+ICAKPj4gKwlkZXZfc2V0X2RydmRhdGEoZGV2
LCBtdXhfY2hpcCk7Cj4+ICsKPj4gIAlyZXR1cm4gZGV2bV9tdXhfY2hpcF9yZWdpc3RlcihkZXYs
IG11eF9jaGlwKTsKPj4gIH0KPj4gIAo+PiArI2lmZGVmIENPTkZJR19QTQo+PiArc3RhdGljIGlu
dCBtdXhfbW1pb19yZXN1bWVfbm9pcnEoc3RydWN0IGRldmljZSAqZGV2KQo+PiArewo+PiArCXN0
cnVjdCBtdXhfY2hpcCAqbXV4X2NoaXAgPSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsKPj4gKwlpbnQg
Z2xvYmFsX3JldCA9IDA7Cj4+ICsJdW5zaWduZWQgaW50IGk7Cj4+ICsKPj4gKwlmb3IgKGkgPSAw
OyBpIDwgbXV4X2NoaXAtPmNvbnRyb2xsZXJzOyBpKyspIHsKPj4gKwkJc3RydWN0IG11eF9jb250
cm9sICptdXggPSAmbXV4X2NoaXAtPm11eFtpXTsKPj4gKwkJaW50IHZhbCA9IG11eC0+Y2FjaGVk
X3N0YXRlOwo+IAo+IFlvdSBhcmUgbm90IHN1cHBvc2VkIHRvIGxvb2sgYXQgKG9yIGNoYW5nZSkg
Y2FjaGVkX3N0YXRlIG91dHNpZGUgdGhlCj4gbXV4IGNvcmUuCj4gCj4+ICsJCWludCByZXQ7Cj4+
ICsKPj4gKwkJaWYgKHZhbCA9PSBNVVhfSURMRV9BU19JUykKPiAKPiBUaGUgY2FjaGVkX3N0YXRl
IGNhbiBuZXZlciBiZSBNVVhfSURMRV9BU19JUy4gU3VyZSwgaXQgaGFwcGVucyB0byBoYXZlCj4g
dGhlIHNhbWUgYWN0dWFsIHZhbHVlIGFzIHRoZSBjb3JyZWN0IE1VWF9DQUNIRV9VTktOT1dOLCBi
dXQgYWJ1c2luZwo+IHRoYXQgaXMgYWxsIGtpbmRzIG9mIHdyb25nLgo+IAo+PiArCQkJY29udGlu
dWU7Cj4+ICsKPj4gKwkJcmV0ID0gbXV4X21taW9fc2V0KG11eCwgdmFsKTsKPj4gKwkJaWYgKHJl
dCkgewo+IAo+IElmIG11eF9tbWlvX3NldCgpIGZhaWxzLCBjYWNoZWRfc3RhdGUgZW5kcyB1cCB3
cm9uZyBhcyBpdCBzaG91bGQgYmUgc2V0Cj4gdG8gTVVYX0NBQ0hFX1VOS05PV04gb24gZmFpbHVy
ZS4gTG93LWxldmVsIHN0dWZmIGxpa2UgdGhpcyBuZWVkcyB0byBiZQo+IGRvbmUgYnkgdGhlIG11
eCBjb3JlLCBvciB0aGluZ3MgYmVjb21lcyBhIG1haW50ZW5hbmNlIGhhemFyZC4uLgo+IAo+IFNv
LCB0aGUgbWVhdCBvZiB0aGlzIGZ1bmN0aW9uIGJlbG9uZ3MgaW4gdGhlIG11eCBjb3JlIHNpbmNl
IG5vbmUgb2YKPiBpdCBsb29rcyBtbWlvIHNwZWNpZmljLiBJdCBjb3VsZCBwcm9iYWJseSBiZSBu
YW1lZCBtdXhfY2hpcF9yZXN1bWUoKQo+IG9yIHNvbWV0aGluZyBzdWNoLiBUaGF0IG1ha2VzIGl0
IHNpbXBsZSB0byB1c2UgdGhlIGNvcnJlY3QgY29uc3RhbnQsCj4gYW5kIHRoZSBtdXhfY29udHJv
bF9zZXQoKSBoZWxwZXIgbWFrZXMgaXQgZWFzeSB0byBnZXQgdGhlIGhhbmRsaW5nIG9mCj4gY2Fj
aGVkX3N0YXRlIHJpZ2h0Lgo+IAoKVGhhbmtzIGZvciB0aGUgZXhwbGFuYXRpb25zLgoKU28gSSBj
cmVhdGVkIGEgbXV4X2NoaXBfcmVzdW1lIGZ1bmN0aW9uIGluIHRoZSBtdXggY29yZS4KVGhpcyBm
dW5jdGlvbiByZXN0b3JlcyBlYWNoIG11eCB1c2luZyBtdXhfY29udHJvbF9zZXQuClRoZSByZXN0
b3JlZCBzdGF0ZSBpcyB0aGUgY2FjaGVkIHN0YXRlLgpUaGUgbXV4ZXMgd2l0aCBhIE1VWF9DQUNI
RV9VTktOT1dOIGNhY2hlIHN0YXRlIGFyZSBpZ25vcmVkLgoKU28gdGhpcyBwYXRjaCB3aWxsIGJl
IHNwbGl0dGVkLCBvbmUgcGF0Y2ggZm9yIHRoZSBjb3JlLCBvbmUgZm9yIHRoZSBtbWlvCmRyaXZl
ci4KClJlZ2FyZHMsCgotLSAKVGhvbWFzIFJpY2hhcmQsIEJvb3RsaW4KRW1iZWRkZWQgTGludXgg
YW5kIEtlcm5lbCBlbmdpbmVlcmluZwpodHRwczovL2Jvb3RsaW4uY29tCgoKLS0gCmxpbnV4LXBo
eSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
