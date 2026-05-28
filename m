Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC4DFCD4F54
	for <linux-phy@archiver.kernel.org>; Thu, 28 May 2026 17:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V3k6HozGdK/5sQu4mZPQfQPBrJzI84JKXRH7Nxu9LMk=; b=Fw/uVT49LHT5ox
	dOtGOU8R7YcUijw5mdP4bHvNnliw1GwMmLGPZnL4XKRIkjlEVfvVKylLQF69xthwGPWacl1QnoIug
	kUJCHLEhOsToZ1kiFiEmgw4WB5ZdedDntPvIfJp0Mm6ThD2lpgX9M9nl6b9ozvXAJ9t/aKRyYbw1h
	3NecwLtWbKFwr01Sy+WkV7Mox1K9fPOIUY8uB3+8Ig3ZZqavRvlD5Ai/JEqHWdcCRiKkIgLGPZXKf
	X64jtNdnI1BLNpTdBOvnC3yZK6WKG/WnWIGAAyVKbmHGSKvWQPco9mBrLixA8KFWGvovKIatBKAKA
	sBMTC8KmKseG7aKL8mCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSeps-0000000683B-1KC8;
	Thu, 28 May 2026 17:48:00 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSepq-00000006834-2x8k
	for linux-phy@lists.infradead.org;
	Thu, 28 May 2026 17:47:58 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 299076054D;
	Thu, 28 May 2026 17:47:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9AFF31F000E9;
	Thu, 28 May 2026 17:47:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779990477;
	bh=DV3hvZrbiYiLGhqvT4KKYnmU8fjBVInr47d9DSWb5+Q=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=AJaXhU4pJMImYeQBtFQIx6TW5dpxT3C/6R1w8h4Uv0HJj7nPFMTwOEVBPSrfi5pEM
	 QF0Rw7S2bnfWg+jEJMIdVzbB51QfvCPI4AesXPEZwYJLO4BghVoS81Qd0OKZInpBva
	 nVIzkpk9kaXK2sLpU8qzEhgqhbN/yD/dulW3U9seh78Vgf/LoEW8FIpcnPVKvIJHUN
	 eAyN+nvqPlUMMkB9l85I4vQD3FaJdCCI+a863aCCpmAIfLHtCgaJ1qf+EpV3N2k4uE
	 wJpfs1L4haYZBW+tvT3cu8z4WX9QP1Kz43lJp1+hHLyVxqcP58kEHfjCCa3dOpfj9e
	 eoXB17AFEayRA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH phy-next 10/13] phy: lynx-28g: add support for big
 endian register maps
To: "Vladimir Oltean" <vladimir.oltean@nxp.com>
Cc: vkoul@kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org, linux-phy@lists.infradead.org
In-Reply-To: <20260528172404.733196-11-vladimir.oltean@nxp.com>
References: <20260528172404.733196-11-vladimir.oltean@nxp.com>
Date: Thu, 28 May 2026 17:47:57 +0000
Message-Id: <20260528174757.9AFF31F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gUmV0dXJuaW5nIGFuIGV4
cHJlc3Npb24gaW4gYSBmdW5jdGlvbiB3aXRoIGEgJ3ZvaWQnIHJldHVybiB0eXBlIGlzIGEgY29u
c3RyYWludCB2aW9sYXRpb24gaW4gc3RhbmRhcmQgQy4KLS0KCmNvbW1pdCBmM2NiZTBhMTEyMmFk
YTdjNjcyNWYzN2U5ZGM0NzkzMmZlYmZkNGFkCkF1dGhvcjogVmxhZGltaXIgT2x0ZWFuIDx2bGFk
aW1pci5vbHRlYW5AbnhwLmNvbT4KCnBoeTogbHlueC0yOGc6IGFkZCBzdXBwb3J0IGZvciBiaWcg
ZW5kaWFuIHJlZ2lzdGVyIG1hcHMKClRoaXMgY29tbWl0IGFkZHMgc3VwcG9ydCBmb3IgYmlnLWVu
ZGlhbiAxMEcgTHlueCBTZXJEZXMgYmxvY2tzLiBJdCByZWFkcwp0aGUgImJpZy1lbmRpYW4iIGRl
dmljZSB0cmVlIHByb3BlcnR5IGFuZCB1cGRhdGVzIHRoZSBseW54X3JlYWQoKSBhbmQKbHlueF93
cml0ZSgpIGFjY2Vzc29ycyB0byB1c2UgdGhlIGFwcHJvcHJpYXRlIGlvcmVhZDMyYmUvaW93cml0
ZTMyYmUgb3IKaW9yZWFkMzIvaW93cml0ZTMyIHZhcmlhbnRzIGJhc2VkIG9uIHRoZSBlbmRpYW5u
ZXNzLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtbHlueC1j
b3JlLmggYi9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1seW54LWNvcmUuaAo+IGluZGV4
IGU4YjI4MGNjOWIzOGMuLmQ4MmU1MjlmYTY1YTYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkv
ZnJlZXNjYWxlL3BoeS1mc2wtbHlueC1jb3JlLmgKPiArKysgYi9kcml2ZXJzL3BoeS9mcmVlc2Nh
bGUvcGh5LWZzbC1seW54LWNvcmUuaAoKWyAuLi4gXQoKPiBAQCAtNTgsMzYgKzU4LDUyIEBAIHN0
cnVjdCBseW54X3ByaXYgewo+ICAJICogbGlrZSBQQ0NuCj4gIAkgKi8KPiAgCXNwaW5sb2NrX3Qg
cGNjX2xvY2s7Cj4gKwlib29sIGJpZ19lbmRpYW47Cj4gIAlzdHJ1Y3QgbHlueF9wbGwgcGxsW0xZ
TlhfTlVNX1BMTF07Cj4gIAlzdHJ1Y3QgbHlueF9sYW5lICpsYW5lOwo+ICAKPiAgCXN0cnVjdCBk
ZWxheWVkX3dvcmsgY2RyX2NoZWNrOwo+ICB9Owo+ICAKPiArc3RhdGljIGlubGluZSB1MzIgbHlu
eF9yZWFkKHN0cnVjdCBseW54X3ByaXYgKnByaXYsIHVuc2lnbmVkIGxvbmcgb2ZmKQo+ICt7Cj4g
Kwl2b2lkIF9faW9tZW0gKnJlZyA9IHByaXYtPmJhc2UgKyBvZmY7Cj4gKwo+ICsJaWYgKHByaXYt
PmJpZ19lbmRpYW4pCj4gKwkJcmV0dXJuIGlvcmVhZDMyYmUocmVnKTsKPiArCj4gKwlyZXR1cm4g
aW9yZWFkMzIocmVnKTsKPiArfQo+ICsKPiArc3RhdGljIGlubGluZSB2b2lkIGx5bnhfd3JpdGUo
c3RydWN0IGx5bnhfcHJpdiAqcHJpdiwgdW5zaWduZWQgbG9uZyBvZmYsIHUzMiB2YWwpCj4gK3sK
PiArCXZvaWQgX19pb21lbSAqcmVnID0gcHJpdi0+YmFzZSArIG9mZjsKPiArCj4gKwlpZiAocHJp
di0+YmlnX2VuZGlhbikKPiArCQlyZXR1cm4gaW93cml0ZTMyYmUodmFsLCByZWcpOwoKW1NldmVy
aXR5OiBMb3ddCkRvZXMgdGhpcyBjb2RlIHVuaW50ZW50aW9uYWxseSByZXR1cm4gYSB2b2lkIGV4
cHJlc3Npb24/IAoKVGhlIGx5bnhfd3JpdGUoKSBmdW5jdGlvbiBpcyBkZWNsYXJlZCB3aXRoIGEg
dm9pZCByZXR1cm4gdHlwZSwgYnV0IGl0IHVzZXMKdGhlIHJldHVybiBrZXl3b3JkIGJlZm9yZSBj
YWxsaW5nIGlvd3JpdGUzMmJlKCkgYW5kIGlvd3JpdGUzMigpIHdoaWNoIGFsc28gCmV2YWx1YXRl
IHRvIHZvaWQuCgpXaGlsZSBHTlUgQyBhbGxvd3MgcmV0dXJuaW5nIGEgdm9pZCBleHByZXNzaW9u
IGFzIGFuIGV4dGVuc2lvbiwgc3RhbmRhcmQgQyAKZG9lcyBub3QgcGVybWl0IGl0LCBhbmQgaXQg
Y291bGQgdHJpZ2dlciB3YXJuaW5ncyBpbiBzdHJpY3Qgc3RhdGljIGFuYWx5c2lzIAp0b29scy4g
V291bGQgaXQgYmUgYmV0dGVyIHRvIGp1c3QgZHJvcCB0aGUgcmV0dXJuIGtleXdvcmRzIGhlcmU/
Cgo+ICsKPiArCXJldHVybiBpb3dyaXRlMzIodmFsLCByZWcpOwo+ICt9CgotLSAKU2FzaGlrbyBB
SSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNTI4MTcyNDA0
LjczMzE5Ni0xLXZsYWRpbWlyLm9sdGVhbkBueHAuY29tP3BhcnQ9MTAKCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
