Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 625ED606A31C
	for <linux-phy@archiver.kernel.org>; Tue, 20 Oct 2026 08:52:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=liLKmDrI;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=T0gBlAOP
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wl0Su6fTMiGi1x7P93JgaPP7Ai2CgwM7uMGwfAaNdQU=; b=liLKmDrIwYJk5e
	JBGnLxphna1rN9lm/olUsMDpQClGkBCVp+OabZ24LIDsgJVw3dsjzLflgWUfksEMg7oN5EWxMLTjS
	U6gwQQksSlxfLkAx0Fl3Ji6eYKWBq1mXKGaTL6G9BfwlRWHNCb4ZcsVEU1tQ4RxRFrj2IrRDbTmFd
	QI/II4njoalMH19sgsi+BK49nNtOeKJzWEy3nOYOkYB1fg5vjyoam+T3Rq4gd5OdodgFsJAbS730P
	Y4wVN6xygQjeGivxpC4U0yZAQbBa7x+a7d4wUJrjcE8gXdElztxz6SjxXpI9wDtBQWh26qhv4MDhY
	amGFkbfKe1A2K8+bQrXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ5Zt-00000009EK2-3wNi;
	Tue, 20 Oct 2026 08:52:13 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ5Zs-00000009EJv-3fe1
	for linux-phy@lists.infradead.org;
	Tue, 20 Oct 2026 08:52:12 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 0147760142;
	Tue, 20 Oct 2026 08:52:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C66F1F000C4;
	Tue, 20 Oct 2026 08:52:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792486331;
	bh=ZH1z6KDVx90CY10u+4FjiY0FSByMO+4UfjWl2FRvU9M=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=T0gBlAOPczycR1ibIInPoOYRYf96wkiPpCFkeNWkCT/3n5C/3THP2ZDql7ZCXA6s0
	 M4KTWYKJ0L5xXXqwJ2yhyLSRJr536ubI7AQfZxIa6eq9HBTz4ouaOpkE/coKJA2Zwp
	 MlZox7KQUjto/5aVEIdqDGDVZ2UpEqOCOuZe4dAMOldsrV5FRhu1npTDXj7QeWDS0r
	 mJnDwC0VCCs0nvsPgooyJHPuobEi6y8JBMzoVj6wGqGkjoj3yKsVIN6hnhGSTSJIRp
	 MTV8K+rALS7+VErh4aj6uWwjoXS0UAjpZserSlU1GiZq6WBP6oGyPR8CVI11lmluHY
	 784gHtSpx0cAg==
Message-ID: <sashiko-outbox-178640@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 6/7] drm/rockchip: cdn-dp: Support handle lane info
 without extcon
To: "Chaoyi Chen" <kernel@airkyi.com>
Cc: dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261020072816.180-7-kernel@airkyi.com>
References: <20261020072816.180-1-kernel@airkyi.com>
 <20261020072816.180-7-kernel@airkyi.com>
Date: Tue, 20 Oct 2026 08:52:10 +0000
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Reply-To: sashiko-reviews@lists.linux.dev
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-9.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIGRybS9yb2NrY2hpcDog
Y2RuLWRwOiB1bmd1YXJkZWQgUFRSX0VSUigpIGluIGNkbl9kcF9wcm9iZSgpIGJyZWFrcyBleHRj
b24KLS0KCmNvbW1pdCAxY2YzZTNjZmJjYzc5ZmRiZjM5OTZmZDA5OTNiNzJkOTg3YmJjZjU5CkF1
dGhvcjogQ2hhb3lpIENoZW4gPGNoYW95aS5jaGVuQHJvY2stY2hpcHMuY29tPgoKZHJtL3JvY2tj
aGlwOiBjZG4tZHA6IFN1cHBvcnQgaGFuZGxlIGxhbmUgaW5mbyB3aXRob3V0IGV4dGNvbgoKVGhp
cyBwYXRjaCB1cGRhdGVzIHRoZSBSb2NrY2hpcCBjZG4tZHAgZHJpdmVyIHRvIGFsbG93IG9wZXJh
dGluZyB3aXRob3V0IGFuCmV4dGNvbiBkZXZpY2UgYnkgcmV0cmlldmluZyBsYW5lIGNvdW50IGlu
Zm9ybWF0aW9uIGRpcmVjdGx5IGZyb20gdGhlIFBIWQp3aGlsZSBwcmVzZXJ2aW5nIGV4aXN0aW5n
IGV4dGNvbiBzdXBwb3J0LgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlw
L2Nkbi1kcC1jb3JlLmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvY2RuLWRwLWNvcmUuYwo+
IGluZGV4IDY4YWE2NjkxNWU4YWMuLjFjMWMxMTE2YjVlYmUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL3JvY2tjaGlwL2Nkbi1kcC1jb3JlLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
cm9ja2NoaXAvY2RuLWRwLWNvcmUuYwoKWyAuLi4gXQoKPiBAQCAtMTEyMiwxNCArMTEzMSwxNCBA
QCBzdGF0aWMgaW50IGNkbl9kcF9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+
ICAJCSAgICBQVFJfRVJSKHBoeSkgPT0gLUVQUk9CRV9ERUZFUikKPiAgCQkJcmV0dXJuIC1FUFJP
QkVfREVGRVI7Cj4gIAo+IC0JCWlmIChJU19FUlIoZXh0Y29uKSB8fCBJU19FUlIocGh5KSkKPiAr
CQlpZiAoSVNfRVJSKHBoeSkgfHwgUFRSX0VSUihleHRjb24pICE9IC1FTk9ERVYpCj4gIAkJCWNv
bnRpbnVlOwo+ICAKPiAgCQlwb3J0ID0gZGV2bV9remFsbG9jKGRldiwgc2l6ZW9mKCpwb3J0KSwg
R0ZQX0tFUk5FTCk7Cj4gIAkJaWYgKCFwb3J0KQo+ICAJCQlyZXR1cm4gLUVOT01FTTsKPiAgCj4g
LQkJcG9ydC0+ZXh0Y29uID0gZXh0Y29uOwo+ICsJCXBvcnQtPmV4dGNvbiA9IElTX0VSUihleHRj
b24pID8gTlVMTCA6IGV4dGNvbjsKPiAgCQlwb3J0LT5waHkgPSBwaHk7Cj4gIAkJcG9ydC0+ZHAg
PSBkcDsKPiAgCQlwb3J0LT5pZCA9IGk7CgpbU2V2ZXJpdHk6IEhpZ2hdCldoZW4gYW4gZXh0Y29u
IHBoYW5kbGUgaXMgcHJlc2VudCBpbiBEZXZpY2UgVHJlZSBhbmQgcmVzb2x2ZWQsCmV4dGNvbl9n
ZXRfZWRldl9ieV9waGFuZGxlKCkgcmV0dXJucyBhIHZhbGlkIHN0cnVjdCBleHRjb25fZGV2IHBv
aW50ZXIKcmF0aGVyIHRoYW4gYW4gZXJyb3IgcG9pbnRlci4KCkJlY2F1c2UgUFRSX0VSUihleHRj
b24pICE9IC1FTk9ERVYgaXMgZXZhbHVhdGVkIGluIGNkbl9kcF9wcm9iZSgpIHdpdGhvdXQKZmly
c3QgY2hlY2tpbmcgSVNfRVJSKGV4dGNvbiksIGFueSB2YWxpZCBleHRjb24gcG9pbnRlciB3aWxs
IHNhdGlzZnkKUFRSX0VSUihleHRjb24pICE9IC1FTk9ERVYgYW5kIGhpdCB0aGUgY29udGludWUg
c3RhdGVtZW50LgoKRG9lc24ndCB0aGlzIHNraXAgZXZlcnkgcG9ydCB0aGF0IGhhcyBhIHZhbGlk
IGV4dGNvbiBkZXZpY2UsIG1ha2luZyB0aGUKbm9uLU5VTEwgYnJhbmNoIG9mIElTX0VSUihleHRj
b24pID8gTlVMTCA6IGV4dGNvbiB1bnJlYWNoYWJsZSBhbmQgY2F1c2luZwpjZG5fZHBfcHJvYmUo
KSB0byBmYWlsIHdpdGggLUVJTlZBTCBvbiBib2FyZHMgdGhhdCB1c2UgZXh0Y29uPyBTaG91bGQg
dGhlCmNoZWNrIGluIGNkbl9kcF9wcm9iZSgpIGJlOgoKCWlmIChJU19FUlIocGh5KSB8fCAoSVNf
RVJSKGV4dGNvbikgJiYgUFRSX0VSUihleHRjb24pICE9IC1FTk9ERVYpKQoJCWNvbnRpbnVlOwoK
aW5zdGVhZD8KCtGC0LjRgtGM0YHRjwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8v
c2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MTAyMDA3MjgxNi4xODAtMS1rZXJuZWxAYWlya3lp
LmNvbT9wYXJ0PTYKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
