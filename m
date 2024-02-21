Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5AF3C48BF6
	for <linux-phy@archiver.kernel.org>; Wed, 21 Feb 2024 13:41:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SLzC9gQwaKsZ+VfzLQlA7I2wQ8wI4uIx4c+Cp81t2TE=; b=C95YwWvdWBTG6u
	IT5nfgZ6vGM+0zYoWDM/9mHvN64tqMWdhUxmmb1PfnjXnYNtvSU/Py0ZFena0TAgt/LX/QbQlX/ID
	B5nnBs5qFn8uFz6r6vMQcNMOKhajLZOEWr/plYgs2Qle7TUZ79WCQcHfqsBrcdgG78RNVGNkZE1ze
	xObuCw/MV0bEjiBzkb/NQkuLqXhubktWg/iYywavEuRPHW1NKHNuJSg2orYot9ylHWBG9gdSqWWRH
	kspdsMKQCM9hnE8iUWKXBsuarbVwnVmdZhmjENUU/1UzFRE7IH1ej/CqyhFmIqnaMQJcG3x7yoTpP
	VNR4khO/g3grI59gagBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcmqp-000000016ku-2dZ6;
	Wed, 21 Feb 2024 13:41:31 +0000
Received: from relay2-d.mail.gandi.net ([2001:4b98:dc4:8::222])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcmql-000000016i7-1jHr;
	Wed, 21 Feb 2024 13:41:30 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id E46DD40009;
	Wed, 21 Feb 2024 13:41:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1708522883;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=HChv7AMFaSV60Wh6fSWATnd6gL2rY85Q3tCAwMqY42A=;
	b=Qcj4zsH+5m4yg0nj/CeFRq48awmMTU4BMthbaywS1PL69ZM6N8LSIp0O0Sgf6Rs20z+THm
	+d7AZmPS7tfde1Zu39+eYBeJ5ZN0GODxigMjV8NaO3vVWRfzd1wqotTv7b2awrqFFtSl++
	sCEusvP5+z6apuRg+dTZxq1xwpFtDjBi986kTruWgM17X1Jj9OubWE1M/dwBEhqHxzr3T6
	NoOeFGeKAPZf6Hn9XtVFkEEwfL5wxITnqbUqc02IiF8H35zdd0Rx0bMzE/lS8rVr8DyNa+
	p07Ld9yyRXcyRY5FS3OZbpK01KpWHiIV2t6hkZEZ/SJlCdsJaXi/2gkC4OK9MA==
Message-ID: <113b7f2e-1313-4ebf-a403-e5fcae8f01ca@bootlin.com>
Date: Wed, 21 Feb 2024 14:41:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 14/18] phy: cadence-torrent: add suspend and resume
 support
Content-Language: en-US
To: Philipp Zabel <p.zabel@pengutronix.de>,
 Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski
 <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>,
 Tony Lindgren <tony@atomide.com>, Haojian Zhuang
 <haojian.zhuang@linaro.org>, Vignesh R <vigneshr@ti.com>,
 Aaro Koskinen <aaro.koskinen@iki.fi>,
 Janusz Krzysztofik <jmkrzyszt@gmail.com>, Andi Shyti
 <andi.shyti@kernel.org>, Peter Rosin <peda@axentia.se>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org,
 linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-pci@vger.kernel.org, gregory.clement@bootlin.com,
 theo.lebrun@bootlin.com, thomas.petazzoni@bootlin.com, u-kumar1@ti.com
References: <20240102-j7200-pcie-s2r-v3-0-5c2e4a3fac1f@bootlin.com>
 <20240102-j7200-pcie-s2r-v3-14-5c2e4a3fac1f@bootlin.com>
 <c105bfa8567f9e76731f2b018f4ca3176357204d.camel@pengutronix.de>
From: Thomas Richard <thomas.richard@bootlin.com>
In-Reply-To: <c105bfa8567f9e76731f2b018f4ca3176357204d.camel@pengutronix.de>
X-GND-Sasl: thomas.richard@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240221_054127_906820_488137A8 
X-CRM114-Status: GOOD (  23.65  )
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

T24gMi8yMS8yNCAxNDowOSwgUGhpbGlwcCBaYWJlbCB3cm90ZToKPiBPbiBEbywgMjAyNC0wMi0x
NSBhdCAxNjoxNyArMDEwMCwgVGhvbWFzIFJpY2hhcmQgd3JvdGU6Cj4+IEFkZCBzdXNwZW5kIGFu
ZCByZXN1bWUgc3VwcG9ydC4KPj4KPj4gVGhlIGFscmVhZHlfY29uZmlndXJlZCBmbGFnIGlzIGNs
ZWFyZWQgZHVyaW5nIHRoZSBzdXNwZW5kIHN0YWdlIHRvIGZvcmNlCj4+IHRoZSBQSFkgaW5pdGlh
bGl6YXRpb24gZHVyaW5nIHRoZSByZXN1bWUgc3RhZ2UuCj4+Cj4+IEJhc2VkIG9uIHRoZSB3b3Jr
IG9mIFRow6lvIExlYnJ1biA8dGhlby5sZWJydW5AYm9vdGxpbi5jb20+Cj4+Cj4+IFNpZ25lZC1v
ZmYtYnk6IFRob21hcyBSaWNoYXJkIDx0aG9tYXMucmljaGFyZEBib290bGluLmNvbT4KPj4gLS0t
Cj4+ICBkcml2ZXJzL3BoeS9jYWRlbmNlL3BoeS1jYWRlbmNlLXRvcnJlbnQuYyB8IDU0ICsrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysKPj4gIDEgZmlsZSBjaGFuZ2VkLCA1NCBpbnNlcnRp
b25zKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9jYWRlbmNlL3BoeS1jYWRlbmNl
LXRvcnJlbnQuYyBiL2RyaXZlcnMvcGh5L2NhZGVuY2UvcGh5LWNhZGVuY2UtdG9ycmVudC5jCj4+
IGluZGV4IDUyY2FkY2E0YzA3Yi4uZjg5NDVhMTFlN2NhIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJz
L3BoeS9jYWRlbmNlL3BoeS1jYWRlbmNlLXRvcnJlbnQuYwo+PiArKysgYi9kcml2ZXJzL3BoeS9j
YWRlbmNlL3BoeS1jYWRlbmNlLXRvcnJlbnQuYwo+PiBAQCAtMzAwNSw2ICszMDA1LDU5IEBAIHN0
YXRpYyB2b2lkIGNkbnNfdG9ycmVudF9waHlfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2Ug
KnBkZXYpCj4+ICAJY2Ruc190b3JyZW50X2Nsa19jbGVhbnVwKGNkbnNfcGh5KTsKPj4gIH0KPj4g
IAo+PiArc3RhdGljIGludCBjZG5zX3RvcnJlbnRfcGh5X3N1c3BlbmRfbm9pcnEoc3RydWN0IGRl
dmljZSAqZGV2KQo+PiArewo+PiArCXN0cnVjdCBjZG5zX3RvcnJlbnRfcGh5ICpjZG5zX3BoeSA9
IGRldl9nZXRfZHJ2ZGF0YShkZXYpOwo+PiArCWludCBpOwo+PiArCj4+ICsJcmVzZXRfY29udHJv
bF9hc3NlcnQoY2Ruc19waHktPnBoeV9yc3QpOwo+PiArCXJlc2V0X2NvbnRyb2xfYXNzZXJ0KGNk
bnNfcGh5LT5hcGJfcnN0KTsKPj4gKwlmb3IgKGkgPSAwOyBpIDwgY2Ruc19waHktPm5zdWJub2Rl
czsgaSsrKQo+PiArCQlyZXNldF9jb250cm9sX2Fzc2VydChjZG5zX3BoeS0+cGh5c1tpXS5sbmtf
cnN0KTsKPj4gKwo+PiArCWlmIChjZG5zX3BoeS0+YWxyZWFkeV9jb25maWd1cmVkKQo+PiArCQlj
ZG5zX3BoeS0+YWxyZWFkeV9jb25maWd1cmVkID0gMDsKPj4gKwllbHNlCj4+ICsJCWNsa19kaXNh
YmxlX3VucHJlcGFyZShjZG5zX3BoeS0+Y2xrKTsKPj4gKwo+PiArCXJldHVybiAwOwo+PiArfQo+
PiArCj4+ICtzdGF0aWMgaW50IGNkbnNfdG9ycmVudF9waHlfcmVzdW1lX25vaXJxKHN0cnVjdCBk
ZXZpY2UgKmRldikKPj4gK3sKPj4gKwlzdHJ1Y3QgY2Ruc190b3JyZW50X3BoeSAqY2Ruc19waHkg
PSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsKPj4gKwlpbnQgbm9kZSA9IGNkbnNfcGh5LT5uc3Vibm9k
ZXM7Cj4+ICsJaW50IHJldCwgaTsKPj4gKwo+PiArCXJldCA9IGNkbnNfdG9ycmVudF9jbGsoY2Ru
c19waHkpOwo+PiArCWlmIChyZXQpCj4+ICsJCWdvdG8gY2xrX2NsZWFudXA7Cj4+ICsKPj4gKwkv
KiBFbmFibGUgQVBCICovCj4+ICsJcmVzZXRfY29udHJvbF9kZWFzc2VydChjZG5zX3BoeS0+YXBi
X3JzdCk7Cj4+ICsKPj4gKwlpZiAoY2Ruc19waHktPm5zdWJub2RlcyA+IDEpIHsKPj4gKwkJcmV0
ID0gY2Ruc190b3JyZW50X3BoeV9jb25maWd1cmVfbXVsdGlsaW5rKGNkbnNfcGh5KTsKPj4gKwkJ
aWYgKHJldCkKPj4gKwkJCWdvdG8gcHV0X2xua19yc3Q7Cj4+ICsJfQo+PiArCj4+ICsJcmV0dXJu
IDA7Cj4+ICsKPj4gK3B1dF9sbmtfcnN0Ogo+PiArCWZvciAoaSA9IDA7IGkgPCBub2RlOyBpKysp
Cj4+ICsJCXJlc2V0X2NvbnRyb2xfYXNzZXJ0KGNkbnNfcGh5LT5waHlzW2ldLmxua19yc3QpOwo+
IAo+IFRoZSBzYW1lIGNsZWFudXAgaXMgZm91bmQgaW4gcHJvYmUuIFdvdWxkIGl0IGJlIGNsZWFu
ZXIgdG8gbW92ZSB0aGlzCj4gaW50byBjZG5zX3RvcnJlbnRfcGh5X2NvbmZpZ3VyZV9tdWx0aWxp
bmsoKSBpbnN0ZWFkIG9mIGR1cGxpY2F0aW5nIGl0Cj4gaGVyZT8KCkhlbGxvIFBoaWxpcHAsCgpZ
ZXMgSSBjb3VsZCwgYnV0IGZyb20gbXkgcG9pbnQgb2YgdmlldywgaXQgd291bGQgbm90IGJlIGNs
ZWFuZXIuClRoaXMgY2xlYW51cCBpcyBjYWxsZWQgZnJvbSBtYW55IHBsYWNlcyBpbiB0aGUgcHJv
YmU6Ci0KaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjYuOC1yYzUvc291cmNlL2Ry
aXZlcnMvcGh5L2NhZGVuY2UvcGh5LWNhZGVuY2UtdG9ycmVudC5jI0wyOTQ4Ci0KaHR0cHM6Ly9l
bGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjYuOC1yYzUvc291cmNlL2RyaXZlcnMvcGh5L2NhZGVu
Y2UvcGh5LWNhZGVuY2UtdG9ycmVudC5jI0wyOTU0Ci0KaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5j
b20vbGludXgvdjYuOC1yYzUvc291cmNlL2RyaXZlcnMvcGh5L2NhZGVuY2UvcGh5LWNhZGVuY2Ut
dG9ycmVudC5jI0wyOTYwCgpJZiBJIGFkZCB0aGlzIGNsZWFudXAgaW4gY2Ruc190b3JyZW50X3Bo
eV9jb25maWd1cmVfbXVsdGlsaW5rKCksIHllcyBJCmNvdWxkIHJlbW92ZSBpdCBmcm9tIGNkbnNf
dG9ycmVudF9waHlfcmVzdW1lX25vaXJxKCksIGJ1dCBJIHNob3VsZCBrZWVwCml0IGluIHRoZSBw
cm9iZS4gQW5kIEkgc2hvdWxkIG1vZGlmeSB0aGUgcHJvYmUgdG8ganVtcCB0byBjbGtfY2xlYW51
cCBpZgpjZG5zX3RvcnJlbnRfcGh5X2NvbmZpZ3VyZV9tdWx0aWxpbmsoKSBmYWlscy4KCj4gCj4+
ICsJcmVzZXRfY29udHJvbF9hc3NlcnQoY2Ruc19waHktPmFwYl9yc3QpOwo+PiArCWNsa19kaXNh
YmxlX3VucHJlcGFyZShjZG5zX3BoeS0+Y2xrKTsKPj4gK2Nsa19jbGVhbnVwOgo+PiArCWNkbnNf
dG9ycmVudF9jbGtfY2xlYW51cChjZG5zX3BoeSk7Cj4gCj4gVGhpcyBjYWxscyBvZl9jbGtfZGVs
X3Byb3ZpZGVyKCksIHNlZW1zIG1pc3BsYWNlZCBoZXJlLgoKWWVzIHlvdSdyZSByaWdodCwgaXQn
cyBjYWxsZWQgaW4gY2Ruc190b3JyZW50X3BoeV9yZW1vdmUoKS4KU28gSSBzaG91bGQgbm90IGNh
bGwgaXQgaW4gdGhlIHJlc3VtZSBjYWxsYmFjaywgdGhpcyB3aWxsIGNhdXNlIHNvbWUKaXNzdWVz
IGR1cmluZyB0aGUgcmVtb3ZlLgoKUmVnYXJkcywKCi0tIApUaG9tYXMgUmljaGFyZCwgQm9vdGxp
bgpFbWJlZGRlZCBMaW51eCBhbmQgS2VybmVsIGVuZ2luZWVyaW5nCmh0dHBzOi8vYm9vdGxpbi5j
b20KCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK
