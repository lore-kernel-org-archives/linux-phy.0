Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B4EEC5CFDB
	for <linux-phy@archiver.kernel.org>; Sat, 15 Aug 2026 09:26:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hE0AqnODBV+S9yXdTz0bFoeK6LDozINGHiNSNdT6hAI=; b=wdY6ByRWGKoSJ1
	+x59FuSWyokcAGmHa7rlpRPbjtwAJ6CgBi9CXSJulUJjMFwmO64PMxfPw4S/+gzjzrpkTe6ULZAhL
	wpNprKU7XL7WNNlRtk5uq1vGQAZN+nCRC1DMRQCBaw2qtMoAC5A8N6vNqvRvIyJp5VG9NEUaps1/5
	p68Wi6NLWWerW9yFKAFhr5jY3wCdl85pJJVbwDOoQHnppno9UhsIDfee4QW1p+ynr0bk/yZ2znh4E
	qLsTR0FW/h+WP99kg06WWnPz4NTWjrZo+KfHnT2COETRsnUJLj8q5tR4yqpdUG4qY+FPvYpGeqLpZ
	yGKilSlob7K354Yrm+EA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvAex-00000003hzH-0iLI;
	Sat, 15 Aug 2026 09:26:35 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvAev-00000003hzB-2wwV
	for linux-phy@lists.infradead.org;
	Sat, 15 Aug 2026 09:26:33 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 1FD66400FE;
	Sat, 15 Aug 2026 09:26:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 863DB1F00A3A;
	Sat, 15 Aug 2026 09:26:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786785993;
	bh=954vqBAV7CPL7BRytItHgK3ROpUM/l5DnrdwjjcKuro=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=joy0NYlrBU4Ej08KkzggmQhr0qtyd3q//BbMhEeWQq3F8Mt8f2X27xNUUFab+0Q5s
	 DidLieZOqOsUWWJJAfH67acnhXi3TYoJqkKxDlt+7QEclVyrazikq+BbdlRHz+AQYa
	 BpHNpxKIA20mPqq8Z3vuYZ0ZHAUhbHkvCrRi8AXOSuDq9TOUemB0MOLw0iZEp+4zqt
	 w5XIqyfQP8oPAc663DYWp9IXnDjAYSDmhhkU1+gpkQAnOVxezqgCcJyQcwfvgdgyQR
	 Z21S56LwqAIP15DCuhXvZV6th91V4FdnWAw/0T0Me85wRO7/vpHaBtZbmTxMaohCaH
	 bvdH7MrIPkuMg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 4/6] phy: realtek: usb2: introduce reset controller
 struct
To: "Rustam Adilov" <adilov@disroot.org>
Cc: robh@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, devicetree@vger.kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, conor+dt@kernel.org
In-Reply-To: <20260815091340.26910-5-adilov@disroot.org>
References: <20260815091340.26910-1-adilov@disroot.org>
 <20260815091340.26910-5-adilov@disroot.org>
Date: Sat, 15 Aug 2026 09:26:32 +0000
Message-Id: <20260815092632.863DB1F00A3A@smtp.kernel.org>
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
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBuZXdseSBpbnRy
b2R1Y2VkIFBIWSByZXNldCBpcyBkZWFzc2VydGVkIHRvbyBsYXRlIChpbiBgcnRrX3BoeV9pbml0
KClgKSwgY2F1c2luZyBmYXRhbCBNTUlPIHJlZ2lzdGVyIGFjY2Vzc2VzIGR1cmluZyBgcHJvYmUo
KWAgaWYgdGhlIHN0YXRpYyBjb25maWd1cmF0aW9uIG9taXRzIGV4cGxpY2l0IGluaXRpYWxpemVy
cy4KLS0KCi0tLSBQYXRjaCBbNF06IFtQQVRDSCB2NyA0LzZdIHBoeTogcmVhbHRlazogdXNiMjog
aW50cm9kdWNlIHJlc2V0IGNvbnRyb2xsZXIgc3RydWN0IC0tLQpjb21taXQgZjE0NDczYTliNTVl
NzA5NzdkNDUxZWMzOWFmN2YzMzc4MTg3NTFiZApBdXRob3I6IFJ1c3RhbSBBZGlsb3YgPGFkaWxv
dkBkaXNyb290Lm9yZz4KCnBoeTogcmVhbHRlazogdXNiMjogaW50cm9kdWNlIHJlc2V0IGNvbnRy
b2xsZXIgc3RydWN0CgpUaGlzIGNvbW1pdCBpbnRyb2R1Y2VzIGEgcmVzZXRfY29udHJvbCBzdHJ1
Y3QgdG8gdGhlIGRyaXZlciB0byBoYW5kbGUKZGVhc3NlcnRpbmcgdGhlIHVzYjIgcGh5IHJlc2V0
IGxpbmUgdXNpbmcgCmRldm1fcmVzZXRfY29udHJvbF9nZXRfb3B0aW9uYWxfZXhjbHVzaXZlKCku
Cgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9yZWFsdGVrL3BoeS1ydGstdXNiMi5jIGIvZHJp
dmVycy9waHkvcmVhbHRlay9waHktcnRrLXVzYjIuYwo+IGluZGV4IDVlNDgzYzg1M2YwMmYuLjJk
ZGFkN2JlNzM1MzQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvcmVhbHRlay9waHktcnRrLXVz
YjIuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3JlYWx0ZWsvcGh5LXJ0ay11c2IyLmMKClsgLi4uIF0K
Cj4gQEAgLTY3Niw2ICs2NzgsMTUgQEAgc3RhdGljIGludCBydGtfcGh5X2luaXQoc3RydWN0IHBo
eSAqcGh5KQo+ICAJaWYgKCFydGtfcGh5KQo+ICAJCXJldHVybiAtRUlOVkFMOwo+ICAKPiArCWlm
IChydGtfcGh5LT5waHlfcnN0KSB7Cj4gKwkJcmV0ID0gcmVzZXRfY29udHJvbF9kZWFzc2VydChy
dGtfcGh5LT5waHlfcnN0KTsKPiArCj4gKwkJaWYgKHJldCkKPiArCQkJcmV0dXJuIHJldDsKPiAr
Cj4gKwkJdXNsZWVwX3JhbmdlKDUwMDAsIDYwMDApOwo+ICsJfQo+ICsKClsgLi4uIF0KCj4gQEAg
LTEwNTUsNiArMTA2NiwxMSBAQCBzdGF0aWMgaW50IHJ0a191c2IycGh5X3Byb2JlKHN0cnVjdCBw
bGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIAo+ICAJcnRrX3BoeS0+bnVtX3BoeSA9IHBoeV9jZmct
Pm51bV9waHk7Cj4gIAo+ICsJcnRrX3BoeS0+cGh5X3JzdCA9IGRldm1fcmVzZXRfY29udHJvbF9n
ZXRfb3B0aW9uYWxfZXhjbHVzaXZlKGRldiwgTlVMTCk7Cj4gKwlpZiAoSVNfRVJSKHJ0a19waHkt
PnBoeV9yc3QpKQo+ICsJCXJldHVybiBkZXZfZXJyX3Byb2JlKGRldiwgUFRSX0VSUihydGtfcGh5
LT5waHlfcnN0KSwKPiArCQkJCSAgICAgInVzYjIgcGh5IHJlc2V0IGlzIG5vdCB3b3JraW5nXG4i
KTsKPiArCj4gIAlyZXQgPSBwYXJzZV9waHlfZGF0YShydGtfcGh5KTsKCltTZXZlcml0eTogSGln
aF0KQ2FuIHRoaXMgY2F1c2UgYSBidXMgaGFuZyBvciByZWFkIHRpbWVvdXQgZHVyaW5nIHByb2Jl
KCk/CgpTaW5jZSB0aGUgbmV3bHkgaW50cm9kdWNlZCByZXNldCBpcyBvbmx5IGRlYXNzZXJ0ZWQg
bGF0ZXIgd2hlbiBjb25zdW1lcnMKY2FsbCBydGtfcGh5X2luaXQoKSwgdGhlIElQIGlzIHN0aWxs
IGhlbGQgaW4gcmVzZXQgaGVyZS4KCkhvd2V2ZXIsIHBhcnNlX3BoeV9kYXRhKCkgY2FuIHBlcmZv
cm0gZGlyZWN0IE1NSU8gcmVhZHMgYWdhaW5zdCB0aGUgUEhZIHRvCmNhY2hlIGRlZmF1bHQgdmFs
dWVzIGlmIHRoZSBzdGF0aWMgY29uZmlndXJhdGlvbiBsYWNrcyBleHBsaWNpdCBpbml0aWFsaXpl
cnM6Cgpkcml2ZXJzL3BoeS9yZWFsdGVrL3BoeS1ydGstdXNiMi5jOnVwZGF0ZV9kY19kcml2aW5n
X2xldmVsKCkgewogICAgLi4uCiAgICBpZiAoIXBoeV9jZmctPnBhZ2UwWzRdLmFkZHIpIHsKICAg
ICAgICBydGtfcGh5X3NldF9wYWdlKHBoeV9yZWcsIDApOwogICAgICAgIHBoeV9jZmctPnBhZ2Uw
WzRdLmFkZHIgPSBQQUdFMF8wWEU0OwogICAgICAgIHBoeV9jZmctPnBhZ2UwWzRdLmRhdGEgPSBy
dGtfcGh5X3JlYWQocGh5X3JlZywgUEFHRTBfMFhFNCk7CiAgICB9CiAgICAuLi4KfQoKV2lsbCB0
aGlzIGNhdXNlIGlzc3VlcyB3aGVuIGludGVyYWN0aW5nIHdpdGggdGhlIFBIWSByZWdpc3RlcnMg
d2hpbGUgdGhlCmRldmljZSBpcyBzdGlsbCBpbiByZXNldD8KCj4gIAlpZiAocmV0KQo+ICAJCWdv
dG8gZXJyOwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9w
YXRjaHNldC8yMDI2MDgxNTA5MTM0MC4yNjkxMC0xLWFkaWxvdkBkaXNyb290Lm9yZz9wYXJ0PTQK
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
