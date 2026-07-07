Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6A9AC43458
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 11:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2z+hdb/aw6IO9lon7btIfeS9q246gSlApSd3aAvnEkM=; b=zwuLs20SoVTroZ
	K78qeX5POgGRxPdcLFRwx+xLwByzsXrCPRVeFn3IrgjyCirdD3qzobZRmh4GQZklDaXtfeq73ccT4
	Z3+0d3dEnXL7KHOJTQhfTMGzyeKLaaI/qtIOrwNrfmgXa8JJ8Fnm0OD0ea74SYLjmw7Nc8UxxD97p
	hjJFsqCiKRZlJar3jWDCSekHPiExW1ugwzzgahVC8xJ2OS75GGUWaV3MDaM21whkLG3bltpvnnY/E
	GayKoeO0iPmzWZfbTILqxkeVtDJoEK79z0sw+YGMnlvaXaXk3q1vgMtJNJaneIUCnSVoVLw0xX0v2
	ro8dFs4AVl14OZhClptw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh411-0000000ErAW-2BmG;
	Tue, 07 Jul 2026 11:31:05 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh410-0000000ErAF-1FPE
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 11:31:02 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id E490F418B7;
	Tue,  7 Jul 2026 11:31:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6CEB81F000E9;
	Tue,  7 Jul 2026 11:31:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783423861;
	bh=VcLKg93e+zs0Xjnf+pXbVXuv1TZ7gPpVnYH6IGlJgKA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=a7yzXxj0AhIw9LIdvUrOUKr5V4o564Or0pSOGCZg+pqSulwkghVeUJTzn0xvJxBu1
	 oVhfalVseEV5b0BtU6T8ijMFMzrplzUvCIHrrwEvSKaA0JK2j+McIvUEetSDo04uM6
	 WIdtz3DAHXumNMpVuaR1UczSFlbquGg7eV62tS/dQSbtAoeDX4nTbx1533Obm2039T
	 MzvgLk/0fuMMiD/S8q8OW6QiDs/qFBMlvskNxrRzVGAAxJ2MsSlG3sRW8vxPAWhAZY
	 mRVihUfAhk7cbk/rED3BcbFhEtY3B1WQbdp8xbrayGPCQC20GyqhaHO8PGW417h9zM
	 ZzkQcpkOIQMNA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v12 05/12] spmi: Implement
 spmi_subdevice_alloc_and_add() and devm variant
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: neil.armstrong@linaro.org, vkoul@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org
In-Reply-To: <20260707111829.180158-6-angelogioacchino.delregno@collabora.com>
References: <20260707111829.180158-1-angelogioacchino.delregno@collabora.com>
 <20260707111829.180158-6-angelogioacchino.delregno@collabora.com>
Date: Tue, 07 Jul 2026 11:31:00 +0000
Message-Id: <20260707113101.6CEB81F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIENvbWJpbmluZyBkZXZp
Y2UgYWxsb2NhdGlvbiBhbmQgYWRkaXRpb24gaW50byBhIHNpbmdsZSBgYWxsb2NfYW5kX2FkZGAg
ZnVuY3Rpb24gYnJlYWtzIGRldmljZSBtb2RlbCBjb25maWd1cmF0aW9uIHNlbWFudGljcyBmb3Ig
YHNwbWlfYnVzX3R5cGVgIGRldmljZXMuCi0tCgotLS0gUGF0Y2ggWzVdOiBbUEFUQ0ggdjEyIDA1
LzEyXSBzcG1pOiBJbXBsZW1lbnQgc3BtaV9zdWJkZXZpY2VfYWxsb2NfYW5kX2FkZCgpIGFuZCBk
ZXZtIHZhcmlhbnQgLS0tCmNvbW1pdCAwN2M4ODRkZWNjOGZlYjgzOTcwZGM3YTJmZTU0YTRmYmY4
MGJlNjEwCkF1dGhvcjogQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8gPGFuZ2Vsb2dpb2FjY2hp
bm8uZGVscmVnbm9AY29sbGFib3JhLmNvbT4KCnNwbWk6IEltcGxlbWVudCBzcG1pX3N1YmRldmlj
ZV9hbGxvY19hbmRfYWRkKCkgYW5kIGRldm0gdmFyaWFudAoKVGhpcyBwYXRjaCBhZGRzIG5ldyBm
dW5jdGlvbnMgdG8gbWFuYWdlIHN1Yi1kZXZpY2VzIG9mIGFuIFNQTUkgZGV2aWNlLAppbmNsdWRp
bmcgc3BtaV9zdWJkZXZpY2VfYWxsb2NfYW5kX2FkZCgpIGFuZCBzcG1pX3N1YmRldmljZV9yZW1v
dmUoKS4KVGhlc2UgYXJlIGludGVuZGVkIHRvIHN1cHBvcnQgY29tcGxleCBQTUlDcyB0aGF0IGZl
YXR1cmUgbXVsdGlwbGUKc3ViLWRldmljZXMgYWRkcmVzc2FibGUgdmlhIFNQTUkgcmVnaXN0ZXIg
cmFuZ2VzLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zcG1pL3NwbWkuYyBiL2RyaXZlcnMvc3Bt
aS9zcG1pLmMKPiBpbmRleCA0MDUwZjM2MTRkYWI4Li5lMjE4YzgxNDA1NDU4IDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvc3BtaS9zcG1pLmMKPiArKysgYi9kcml2ZXJzL3NwbWkvc3BtaS5jCgpbIC4u
LiBdCgo+ICtzdHJ1Y3Qgc3BtaV9zdWJkZXZpY2UgKnNwbWlfc3ViZGV2aWNlX2FsbG9jX2FuZF9h
ZGQoc3RydWN0IHNwbWlfZGV2aWNlICpzcGFyZW50KQo+ICt7Cj4gKwlzdHJ1Y3Qgc3BtaV9zdWJk
ZXZpY2UgKnN1Yl9zZGV2Owo+ICsJc3RydWN0IHNwbWlfZGV2aWNlICpzZGV2Owo+ICsJaW50IHJl
dDsKClsgLi4uIF0KCj4gKwlkZXZpY2VfaW5pdGlhbGl6ZSgmc2Rldi0+ZGV2KTsKPiArCXNkZXYt
PmRldi5wYXJlbnQgPSAmc3BhcmVudC0+ZGV2Owo+ICsJc2Rldi0+ZGV2LmJ1cyA9ICZzcG1pX2J1
c190eXBlOwo+ICsJc2Rldi0+ZGV2LnR5cGUgPSAmc3BtaV9zdWJkZXZfdHlwZTsKPiArCj4gKwly
ZXQgPSBkZXZfc2V0X25hbWUoJnNkZXYtPmRldiwgIiV1LSUwMnguJXUuYXV0byIsCj4gKwkJCSAg
IHNkZXYtPmN0cmwtPm5yLCBzZGV2LT51c2lkLCBzdWJfc2Rldi0+ZGV2aWQpOwo+ICsJaWYgKHJl
dCkKPiArCQlnb3RvIGVycl9wdXRfZGV2Owo+ICsKPiArCXJldCA9IGRldmljZV9hZGQoJnNkZXYt
PmRldik7CgpbU2V2ZXJpdHk6IEhpZ2hdCkRvZXMgY29tYmluaW5nIGFsbG9jYXRpb24gYW5kIHJl
Z2lzdHJhdGlvbiBpbnRvIGEgc2luZ2xlIGZ1bmN0aW9uIHByZXZlbnQKY2FsbGVycyBmcm9tIHBy
b3Blcmx5IGNvbmZpZ3VyaW5nIGRldmljZSBwcm9wZXJ0aWVzPwoKU2luY2UgZGV2aWNlX2FkZCgp
IGlzIGNhbGxlZCBpbW1lZGlhdGVseSBoZXJlLCB0aGUgZHJpdmVyIGNvcmUgZXhlY3V0ZXMgYnVz
Cm1hdGNoaW5nIGFuZCBicm9hZGNhc3RzIHRoZSBLT0JKX0FERCB1ZXZlbnQgYmVmb3JlIHRoZSBj
YWxsZXIgcmVjZWl2ZXMgdGhlCmRldmljZSBwb2ludGVyLiBUaGlzIGxlYXZlcyBubyB3aW5kb3cg
dG8gc2V0IHByb3BlcnRpZXMgbGlrZSBvZl9ub2RlIG9yCmZ3bm9kZS4KCldpbGwgdGhpcyBjYXVz
ZSB0aGUgdWV2ZW50IHRvIGJlIHNlbnQgd2l0aG91dCBhIE1PREFMSUFTLCBicmVha2luZyB1c2Vy
c3BhY2UKbW9kdWxlIGF1dG9sb2FkaW5nIGFuZCBhdXRvbWF0aWMgZHJpdmVyIHByb2JpbmcgZm9y
IHRoZXNlIHN1YmRldmljZXM/Cgo+ICsJaWYgKHJldCkgewo+ICsJCWRldl9lcnIoJnNkZXYtPmRl
diwgIkNhbid0IGFkZCBkZXZpY2UsIHN0YXR1cyAlcGVcbiIsIEVSUl9QVFIocmV0KSk7Cj4gKwkJ
Z290byBlcnJfcHV0X2RldjsKPiArCX0KPiArCj4gKwlyZXR1cm4gc3ViX3NkZXY7Cj4gKwo+ICtl
cnJfcHV0X2RldjoKPiArCXB1dF9kZXZpY2UoJnNkZXYtPmRldik7Cj4gKwlyZXR1cm4gRVJSX1BU
UihyZXQpOwo+ICt9CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRl
di8jL3BhdGNoc2V0LzIwMjYwNzA3MTExODI5LjE4MDE1OC0xLWFuZ2Vsb2dpb2FjY2hpbm8uZGVs
cmVnbm9AY29sbGFib3JhLmNvbT9wYXJ0PTUKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0Cmxp
bnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
