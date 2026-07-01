Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C6A6C43458
	for <linux-phy@archiver.kernel.org>; Wed,  1 Jul 2026 12:39:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cAqig5lm2REUzy2tCdxtiXGmNxnzYBGfM8nC77+N/9k=; b=N9LwjfA5ZAnjWu
	5c9lEakuOcWCvqb1BH1qwWCCdxPYxXRDekN1QeUf+hQUD5i/dStpvwmboEbHUBL4lxYUeKSUOKBpR
	HExa1lXceNm1Efphp/vj6vLrp4Rqqlipw9SqesAC10O+5J7aaFkcSQhSoGTSQgyEaLBRVhJytt3Bv
	35KjcXYS9UN8KG3QAmUqyXkBiJ3aNn1HKJLxqorWLLuavGkP/Jm0DOuoJ3Cakx3J9DkHWhZVwW12v
	NhuDScCM80yYZv5byji4PQD4tnd1TwJkkTljlp9+wY8Icjr/1aPLTokY5+acmKy5u5abUMYeGmN/m
	W/vriGlJCOyjZc54cvtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weuDd-000000021BY-1hti;
	Wed, 01 Jul 2026 12:39:09 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weuDc-000000021BM-1UVJ
	for linux-phy@lists.infradead.org;
	Wed, 01 Jul 2026 12:39:08 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id A1E2260138;
	Wed,  1 Jul 2026 12:39:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D97BD1F000E9;
	Wed,  1 Jul 2026 12:39:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782909547;
	bh=KQxD+BDucLd1j70ef6LoNzXEdO8IcXi/OcuAmbgGP9E=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=o1GXLvg8bWxPNq/IZqiGTy+27SX67f/viurF+m0Muguxdf3ovdcWTANQ4bHoZla1M
	 3xwJuFiZu3mARxdLyFUWraZ4+680Z3GWbdO3vabKtAYmRm5wWQpF21VGzXAHrBFRsd
	 54OypaoZ7k8xvIESxk3jC0u5JNRAIQYlG6Wcfft3D1HN1SM4QovS/IqafQxbjkIKYI
	 foC8xTrkcy1Ianndzm2SpeJk8qyekPUPT7btsT3gIzNg0byhmyIC2M31H51qxczxti
	 LI8EMdjYJnc+GXR88u7EF6cneNVVyVJ0FHZ4+Cz7AmAZZNarM7dlzEYQxz013pB0JK
	 bRuz2a6mnmxXg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 05/12] phy: phy-mtk-dp: Implement power_on and power_off
 PHY callbacks
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, linux-phy@lists.infradead.org
In-Reply-To: <20260701122008.19509-6-angelogioacchino.delregno@collabora.com>
References: <20260701122008.19509-1-angelogioacchino.delregno@collabora.com>
 <20260701122008.19509-6-angelogioacchino.delregno@collabora.com>
Date: Wed, 01 Jul 2026 12:39:06 +0000
Message-Id: <20260701123906.D97BD1F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBwb3dlcl9vbiBh
bmQgcG93ZXJfb2ZmIGNhbGxiYWNrcyB1c2UgdGhlIGRpZ2l0YWwgcmVnaXN0ZXIgbGF5b3V0IGFy
cmF5IHRvIGxvb2sgdXAgYW4gYW5hbG9nIHJlZ2lzdGVyIG9mZnNldCwgY2F1c2luZyByZWdpc3Rl
ciBvcGVyYXRpb25zIHRvIG1vZGlmeSB0aGUgd3JvbmcgaGFyZHdhcmUgb2Zmc2V0LgotIFtNZWRp
dW1dIFRoZSBlcnJvciBwYXRoIGluIGBtdGtfZHBfcGh5X3Bvd2VyX29uKClgIGZhaWxzIHRvIHVu
d2luZCBwcmV2aW91c2x5IGFwcGxpZWQgaGFyZHdhcmUgc3RhdGUgaWYgYSBzdWJzZXF1ZW50IHN0
ZXAgZmFpbHMsIGxlYWtpbmcgcG93ZXIgc3RhdGUuCi0tCgpjb21taXQgZGIxYzZjNGQ0NmNhZTdk
YzI0NzcwZTJmNTI1NTNiODI5MmZiZmJjOQpBdXRob3I6IEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJl
Z25vIDxhbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxhYm9yYS5jb20+CgpwaHk6IHBoeS1t
dGstZHA6IEltcGxlbWVudCBwb3dlcl9vbiBhbmQgcG93ZXJfb2ZmIFBIWSBjYWxsYmFja3MKCkFk
ZCAucG93ZXJfb24oKSBhbmQgLnBvd2VyX29mZigpIGNhbGxiYWNrcyB0byBtdGtfZHBfcGh5X2Rl
dl9vcHMKdG8gYmUgYWJsZSB0byBjYWxsIHRob3NlIHdpdGggcGh5X3Bvd2VyX29uKCkgYW5kIHBo
eV9wb3dlcl9vZmYoKQpBUEkgaW4gdGhlIERpc3BsYXlQb3J0IGRyaXZlciB0byBiZSBhYmxlIHRv
IHN0b3AgdXNpbmcgYWxsIG9mCnRob3NlIGhhcmRjb2RlZCByZWdpc3RlciB3cml0ZXMgaW4gdGhh
dCBleHRlcm5hbCBkcml2ZXIuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9tZWRpYXRlay9w
aHktbXRrLWRwLmMgYi9kcml2ZXJzL3BoeS9tZWRpYXRlay9waHktbXRrLWRwLmMKPiBpbmRleCBj
ZTMzZjY4MTJiYWU2Li41ODZlNzI3OTU2MzMyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L21l
ZGlhdGVrL3BoeS1tdGstZHAuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L21lZGlhdGVrL3BoeS1tdGst
ZHAuYwoKWyAuLi4gXQoKPiBAQCAtMjAwLDYgKzIzNiw1MyBAQCBzdGF0aWMgaW50IG10a19kcF9w
aHlfY29uZmlndXJlKHN0cnVjdCBwaHkgKnBoeSwgdW5pb24gcGh5X2NvbmZpZ3VyZV9vcHRzICpv
cHRzKQo+ICAJcmV0dXJuIDA7Cj4gIH0KPiAgCj4gK3N0YXRpYyBpbnQgbXRrX2RwX3BoeV9wb3dl
cl9vbihzdHJ1Y3QgcGh5ICpwaHkpCj4gK3sKPiArCXN0cnVjdCBtdGtfZHBfcGh5ICpkcF9waHkg
PSBwaHlfZ2V0X2RydmRhdGEocGh5KTsKPiArCWNvbnN0IHN0cnVjdCBtdGtfZHBfcGh5X3BkYXRh
ICpwZGF0YSA9IGRwX3BoeS0+cGRhdGE7Cj4gKwljb25zdCB1OCAqcmVncyA9IHBkYXRhLT5yZWdz
X2RpZ19nbGI7Cj4gKwlpbnQgcmV0Owo+ICsKPiArCS8qIEVuYWJsZSBBVVggQ2hhbm5lbCB3aXRo
IFJYIERlLUdsaXRjaCBhbmQgaW5wdXQgY2xvY2sgZGV0ZWN0aW9uICovCj4gKwlyZXQgPSByZWdt
YXBfd3JpdGUoZHBfcGh5LT5yZWdtYXAsCj4gKwkJCSAgIHBkYXRhLT5vZmZfZGlnX2dsYiArIHJl
Z3NbRFBfUEhZRF9BVVhfUlhfQ1RMXSwKPiArCQkJICAgUEhZRF9ESUdfRFBBVVhfUlhfRU4gfAo+
ICsJCQkgICBQSFlEX0RJR19YVFBfR0xCX0NLREVUX0VOIHwKPiArCQkJICAgUEhZRF9ESUdfRFBB
VVhfUlhfREVHTElUQ0hfRU4pOwo+ICsJaWYgKHJldCkKPiArCQlyZXR1cm4gcmV0Owo+ICsKPiAr
CXJldCA9IHJlZ21hcF9jbGVhcl9iaXRzKGRwX3BoeS0+cmVnbWFwLAo+ICsJCQkJcGRhdGEtPm9m
Zl9hbmFfZ2xiICsgcmVnc1tEUF9QSFlBX0dMQl9GT1JDRV9DVFJMXzFdLAoKW1NldmVyaXR5OiBI
aWdoXQpIZXJlIHJlZ3MgcG9pbnRzIHRvIHRoZSBkaWdpdGFsIHJlZ2lzdGVyIGFycmF5IHBkYXRh
LT5yZWdzX2RpZ19nbGIsIGJ1dCBpdCBpcwpiZWluZyBpbmRleGVkIHdpdGggRFBfUEhZQV9HTEJf
Rk9SQ0VfQ1RSTF8xLCB3aGljaCBpcyBhbiBhbmFsb2cgcmVnaXN0ZXIKZW51bS4gRG9lcyB0aGlz
IHJlc3VsdCBpbiByZWFkaW5nIHRoZSB3cm9uZyBvZmZzZXQgKGZldGNoaW5nIHRoZSBvZmZzZXQg
Zm9yCkRQX1BIWURfQklUX1JBVEUgaW5zdGVhZCBvZiBEUF9QSFlBX0dMQl9GT1JDRV9DVFJMXzEp
IGFuZCBjb3JydXB0aW5nIHRoZQpiaXRyYXRlIGNvbmZpZ3VyYXRpb24/Cgo+ICsJCQkJQ0tNX0NL
VFgwX0VOX0ZPUkNFX01PREUpOwo+ICsJaWYgKHJldCkKPiArCQlyZXR1cm4gcmV0OwoKW1NldmVy
aXR5OiBNZWRpdW1dCklmIHJlZ21hcF9jbGVhcl9iaXRzKCkgZmFpbHMgaGVyZSwgdGhlIGZ1bmN0
aW9uIHJldHVybnMgdGhlIGVycm9yIHdpdGhvdXQKdW53aW5kaW5nIHRoZSBwcmV2aW91cyBzdWNj
ZXNzZnVsIHdyaXRlIHRvIERQX1BIWURfQVVYX1JYX0NUTC4gU2luY2UgdGhlIFBIWQpjb3JlIHdp
bGwgbm90IGNhbGwgcGh5X3Bvd2VyX29mZigpIGlmIHBoeV9wb3dlcl9vbigpIHJldHVybnMgYW4g
ZXJyb3IsIGRvZXMKdGhpcyBsZWF2ZSB0aGUgUlggY2hhbm5lbCBhbmQgY2xvY2sgZGV0ZWN0aW9u
IHBlcm1hbmVudGx5IGVuYWJsZWQ/Cgo+ICsKPiArCXJldHVybiAwOwo+ICt9Cj4gKwo+ICtzdGF0
aWMgaW50IG10a19kcF9waHlfcG93ZXJfb2ZmKHN0cnVjdCBwaHkgKnBoeSkKPiArewo+ICsJc3Ry
dWN0IG10a19kcF9waHkgKmRwX3BoeSA9IHBoeV9nZXRfZHJ2ZGF0YShwaHkpOwo+ICsJY29uc3Qg
c3RydWN0IG10a19kcF9waHlfcGRhdGEgKnBkYXRhID0gZHBfcGh5LT5wZGF0YTsKPiArCWNvbnN0
IHU4ICpyZWdzID0gcGRhdGEtPnJlZ3NfZGlnX2dsYjsKPiArCWludCByZXQ7Cj4gKwo+ICsJcmV0
ID0gcmVnbWFwX3NldF9iaXRzKGRwX3BoeS0+cmVnbWFwLAo+ICsJCQkJcGRhdGEtPm9mZl9hbmFf
Z2xiICsgcmVnc1tEUF9QSFlBX0dMQl9GT1JDRV9DVFJMXzFdLAoKW1NldmVyaXR5OiBIaWdoXQpT
aW1pbGFybHkgdG8gbXRrX2RwX3BoeV9wb3dlcl9vbigpLCB0aGlzIHVzZXMgdGhlIGRpZ2l0YWwg
cmVnaXN0ZXIgYXJyYXkKcmVncyBpbmRleGVkIHdpdGggdGhlIGFuYWxvZyBlbnVtIERQX1BIWUFf
R0xCX0ZPUkNFX0NUUkxfMS4gU2hvdWxkIHRoaXMgdXNlCnBkYXRhLT5yZWdzX2FuYV9nbGIgaW5z
dGVhZCB0byBhdm9pZCB3cml0aW5nIHRvIHRoZSB3cm9uZyBoYXJkd2FyZSBvZmZzZXQ/Cgo+ICsJ
CQkJQ0tNX0NLVFgwX0VOX0ZPUkNFX01PREUpOwo+ICsJaWYgKHJldCkKPiArCQlyZXR1cm4gcmV0
OwoKWyAuLi4gXQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYv
Iy9wYXRjaHNldC8yMDI2MDcwMTEyMjAwOC4xOTUwOS0xLWFuZ2Vsb2dpb2FjY2hpbm8uZGVscmVn
bm9AY29sbGFib3JhLmNvbT9wYXJ0PTUKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
