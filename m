Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38E50C61DC2
	for <linux-phy@archiver.kernel.org>; Thu, 27 Aug 2026 12:29:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vgLCuCk9jGb9NSZJDRfoIlA+jeWyCWKX1Gjfh3q5Dqw=; b=2FEhPWFpzfoeZX
	lZ3iEpoNU4213cmlmxbs3ZVW0jVcBp0+PntyhKfVZArdQR2jZzMsJW2A/X/8r8/zsOyrWymXaFXsb
	HGzpGetN19aG3ANG74N4ZKV/tdYge3V5LsPi4MiZlGfpFGlYJ37gxcD9U6dXmws6wEPku5PoKzVt/
	kpGxSp/TtiQXj4CKdfKh9W9z2sjP4PazrUJ23X1V5p2xtwcDljbjBKYWd9gCw50LAl6RTdRUzM2DH
	ZsChsvUWhTPqe3k2MnM915fYLkbJ7qaCAQSKuuYKoYy0q6xGeZeAojaXT5FS4BdKeJy1QGw3jVtnH
	ZlVnfj9diakZesjIRI9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzZEb-00000003xxe-3tlJ;
	Thu, 27 Aug 2026 12:29:33 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzZEa-00000003xxR-2mjq
	for linux-phy@lists.infradead.org;
	Thu, 27 Aug 2026 12:29:32 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id DBB72419C9;
	Thu, 27 Aug 2026 12:29:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5157C1F000E9;
	Thu, 27 Aug 2026 12:29:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787833771;
	bh=51+010Zi2JKdaLta5+Xprszys/TaM4GdONMHOU1eXkc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Djx2ve1HwE1IPRqEbzphLy6Fp6H/Ww44ptnCZZup+V/Jm9Wqt3+lSlWEGZnOwsuXQ
	 VzV9dhQVeHOJPGeXX7MsQO5TuYiv6yjuSO2uBVFqPKcVPeH7+7cZ7xRLW3IkNvwBGA
	 pW0GGl77GY9SOu796I3fvimfLpKUI/CbknKvBPm6rcbJF3stwQXGlxCQ0ABsOQVN8Q
	 v8wKBXyxhBDxY1hgJzOFVRjkZ7ogxrBsDRlQUUYwH6cIr6oL0Ml2tP0ttRZVoo74ZF
	 6AJ0AHcInc5cZS4KFEtes+BcwM7mKWRHlM2Pdpu6xMLs08BovCvOOveY7ov19vm0xc
	 h5D5k6QZA9urg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/2] phy: airoha: add support for AN7583 Gen3 PCIe
 PHY driver
To: "Christian Marangi" <ansuelsmth@gmail.com>
Cc: robh@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, vkoul@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org
In-Reply-To: <20260827122127.18874-3-ansuelsmth@gmail.com>
References: <20260827122127.18874-1-ansuelsmth@gmail.com>
 <20260827122127.18874-3-ansuelsmth@gmail.com>
Date: Thu, 27 Aug 2026 12:29:30 +0000
Message-Id: <20260827122931.5157C1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gTWlzc2luZyBoYXJk
d2FyZSBzdGF0ZSBjbGVhbnVwIG9uIGVycm9yIHBhdGggaW4gYGFuNzU4M19wY2llX3BoeV9pbml0
KClgLgotLQoKY29tbWl0IDYyZDdjYjI5NTAwNzZhOWZmODk2NzBiMjg2OGYwMGJkNThlNWM0M2UK
QXV0aG9yOiBDaHJpc3RpYW4gTWFyYW5naSA8YW5zdWVsc210aEBnbWFpbC5jb20+CgpwaHk6IGFp
cm9oYTogYWRkIHN1cHBvcnQgZm9yIEFONzU4MyBHZW4zIFBDSWUgUEhZIGRyaXZlcgogICAgCkFk
ZCBzdXBwb3J0IGZvciBBTjc1ODMgUENJZSBQSFkgZHJpdmVyLiBUaGlzIGlzIHJlcXVpcmVkIHRv
IG1ha2UgdGhlCkdlbjMgUENJZSBwb3J0IHByZXNlbnQgb24gdGhlIEFpcm9oYSBBTjc1ODMgU29D
IGNvcnJlY3RseSB3b3JrLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvYWlyb2hhL3BoeS1h
bjc1ODMtcGNpZS5jIGIvZHJpdmVycy9waHkvYWlyb2hhL3BoeS1hbjc1ODMtcGNpZS5jCj4gbmV3
IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAwLi42MWI1ZjFkZDY0YzA3Cj4g
LS0tIC9kZXYvbnVsbAo+ICsrKyBiL2RyaXZlcnMvcGh5L2Fpcm9oYS9waHktYW43NTgzLXBjaWUu
YwpbIC4uLiBdCj4gK3N0YXRpYyBpbnQgYW43NTgzX3BjaWVfcGh5X2luaXQoc3RydWN0IHBoeSAq
cGh5KQo+ICt7Cj4gKwlzdHJ1Y3QgYW43NTgzX3BjaWVfcGh5ICpwY2llX3BoeSA9IHBoeV9nZXRf
ZHJ2ZGF0YShwaHkpOwo+ICsJdTMyIHZhbDsKPiArCWludCByZXQ7Cj4gKwo+ICsJLyogU2V0dXAg
VHgtUnggZGV0ZWN0aW9uIHRpbWUgKi8KPiArCXZhbCA9IEZJRUxEX1BSRVAoUENJRV9YVFBfUlhE
RVRfVkNNX09GRl9TVEJfVF9TRUwsIDB4MzMpIHwKPiArCSAgICAgIEZJRUxEX1BSRVAoUENJRV9Y
VFBfUlhERVRfRU5fU1RCX1RfU0VMLCAweDEpIHwKPiArCSAgICAgIEZJRUxEX1BSRVAoUENJRV9Y
VFBfUlhERVRfRklOSVNIX1NUQl9UX1NFTCwgMHgyKSB8Cj4gKwkgICAgICBGSUVMRF9QUkVQKFBD
SUVfWFRQX1RYUERfVFhfREFUQV9FTl9ETFksIDB4MykgfAo+ICsJICAgICAgRklFTERfUFJFUChQ
Q0lFX1hUUF9SWERFVF9MQVRDSF9TVEJfVF9TRUwsIDB4MSk7Cj4gKwlyZWdtYXBfd3JpdGUocGNp
ZV9waHktPnhyX2R0aW1lLCBSRUdfUENJRV9QRVhUUF9ESUdfR0xCNDQsIHZhbCk7ClsgLi4uIF0K
PiArCXJlZ21hcF9zZXRfYml0cyhwY2llX3BoeS0+ZzNfcG1hLCBSRUdfU1NfREFfWFBPTl9QV0RC
XzAsCj4gKwkJCUczX1BNQV9EQV9YUE9OX0NEUl9QUl9QV0RCKTsKPiArCj4gKwl1c2xlZXBfcmFu
Z2UoMTAwLCAyMDApOwo+ICsKPiArCXJldCA9IHBoeV9pbml0KHBjaWVfcGh5LT5xcF9waHkpOwo+
ICsJaWYgKHJldCkgewo+ICsJCWRldl9lcnIocGNpZV9waHktPmRldiwgImZhaWxlZCB0byBpbml0
aWFsaXplIFFQIHBoeVxuIik7Cj4gKwkJcmV0dXJuIHJldDsKCltTZXZlcml0eTogTWVkaXVtXQpE
b2VzIHRoaXMgZXJyb3IgcGF0aCBuZWVkIHRvIHVud2luZCB0aGUgaGFyZHdhcmUgc3RhdGUgY2hh
bmdlcyBtYWRlIGVhcmxpZXIgaW4KYW43NTgzX3BjaWVfcGh5X2luaXQoKT8KCklmIHBoeV9pbml0
KCkgZmFpbHMsIHRoZSBQSFkgZnJhbWV3b3JrIHdvbid0IGNhbGwgdGhlIC5leGl0IGNhbGxiYWNr
IGJlY2F1c2UKaW5pdF9jb3VudCBoYXNuJ3QgYmVlbiBpbmNyZW1lbnRlZC4gVGhpcyBjb3VsZCBs
ZWF2ZSBoYXJkd2FyZSByZXNvdXJjZXMgbGlrZQpQTExzLCBMRE9zLCBhbmQgY2xvY2tzIGZ1bGx5
IGVuYWJsZWQgYW5kIHVuLXJlc2V0LiBTaG91bGQgdGhlcmUgYmUgYSBjbGVhbnVwCnNlcXVlbmNl
IGhlcmUgb3IgYSBjYWxsIHRvIGEgdGVhcmRvd24gaGVscGVyPwoKPiArCX0KPiArCj4gKwkvKiBX
YWl0IGZvciB0aGUgUENJZSBQSFkgdG8gY29tcGxldGUgaW5pdGlhbGl6YXRpb24gYmVmb3JlIHJl
dHVybmluZyAqLwo+ICsJbXNsZWVwKFBIWV9IV19JTklUX1RJTUVfTVMpOwo+ICsKPiArCXJldHVy
biAwOwo+ICt9CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8j
L3BhdGNoc2V0LzIwMjYwODI3MTIyMTI3LjE4ODc0LTEtYW5zdWVsc210aEBnbWFpbC5jb20/cGFy
dD0yCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK
