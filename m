Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 084A8606A31C
	for <linux-phy@archiver.kernel.org>; Mon,  9 Nov 2026 22:26:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=nQPqW9XT;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=kIkfaYqo
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=CpprbkVWzRL8u0DJXwdWRWD+EYqv8olUL4UPHojV/n8=; b=nQPqW9XT+B2gC5YZMW70r77yJP
	ZgngU6Dyc9meGB6/Gicythr3vm/s9HycDwoytIgx1Lr7loFGSGk69ay5pBrWkQUfRGP/PBHTPyoGo
	Kj7rr5aVHCPQLwUEc6l6nog5YVHSnWfPBHtHxdT/dhIGDmN9gDDFShN4rgKOc+8Wwr9cvkXOmPKwc
	BmD6eAIL7RxsdgJfKS/zZE2BDvjV5m4owNn40v1nvdawJm+ZdCsz6nzrabpXSkgoTuN/vsLpHXCgh
	9N3W77wj9BkQqh/JU9m5MfOeU7DF/AJIndJE0torHbhd1umEuE83+Xk1ohH8uxu4jsdJQHmync3aA
	++RsXtZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQXoW-00000001sS2-2xaK;
	Mon, 09 Nov 2026 22:26:08 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQXoV-00000001sRc-342m
	for linux-phy@lists.infradead.org;
	Mon, 09 Nov 2026 22:26:07 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 5825F41431;
	Mon,  9 Nov 2026 22:26:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E89921F0089F;
	Mon,  9 Nov 2026 22:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794263167;
	bh=KxYnNVaigwB2P9F45TJDS4iWldci9JUOQhr2u1Vxp2k=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=kIkfaYqosNOQo8XLRvC7Yl26q/I0lpNFP0/xkLBqVFVV2nJQwctCQDoB9d0JqMpdl
	 4cZtpCSYKhGrfj1qhPdMkrU85huDmsRtlNmFzJJNyCl4RzeDlRiqq2oaFmJX8ciYwE
	 pcW+KJX4EB60zpEtzDtmsxGKnPEH+TpKTQhMaA5PDTg35XA3CcTtZSSsAL2SLEoGKD
	 jv3pOtrQhznSP3fHma3LHTPjVfnV53PHfs1b8f8P3f715mTTEZpYDDOkwxKXg6MYjt
	 ikW+gTN08rWCsWtLl01HzqfzMGDD9OYZ/K8JOSz+MLgvn4FisxFRbs3cSFbTgToN31
	 tGxqYoIJhCi+g==
Message-ID: <sashiko-outbox-205724@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] phy: exynos5-usbdrd: fix HS phy init count imbalance on
 Exynos2200
To: Soheyb <soheyb_boulaa@proton.me>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261109221522.2796426-1-soheyb_boulaa@proton.me>
References: <20261109221522.2796426-1-soheyb_boulaa@proton.me>
Date: Mon, 09 Nov 2026 22:26:06 +0000
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
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MiBwb3RlbnRpYWwKaXNzdWVzIHRvIGNvbnNpZGVyOgotIFtNZWRpdW1dIHBoeTogZXh5bm9zNS11
c2JkcmQ6IGluaXRfY291bnQgaW1iYWxhbmNlIGluCiAgZXh5bm9zMjIwMF91c2JkcmRfcGh5X2V4
aXQoKQotIFtNZWRpdW1dIHBoeTogZXh5bm9zNS11c2JkcmQ6IHVuY2hlY2tlZCBwaHlfaW5pdCgp
IGluCiAgZXh5bm9zMjIwMF91c2JkcmRfdXRtaV9pbml0KCkKLS0KCmNvbW1pdCA3MjY3MjYxYWQ4
MTI4NTQ4YmJjMzhkMzlhNDAwZTkwODZmNjc2ZmNlCkF1dGhvcjogU29oZXliIDxzb2hleWJfYm91
bGFhQHByb3Rvbi5tZT4KCnBoeTogZXh5bm9zNS11c2JkcmQ6IGZpeCBIUyBwaHkgaW5pdCBjb3Vu
dCBpbWJhbGFuY2Ugb24gRXh5bm9zMjIwMAoKVGhpcyBjb21taXQgY2FsbHMgcGh5X2V4aXQoKSBv
biBwaHlfZHJkLT5oc19waHkgd2hlbiBleGl0aW5nIHRoZSBVVE1JIFBIWQppbiBleHlub3MyMjAw
X3VzYmRyZF9waHlfZXhpdCgpIHNvIHRoYXQgdGhlIGhpZ2gtc3BlZWQgUEhZIGluaXQgY291bnQg
cmV0dXJucwp0byB6ZXJvIGFuZCB0aGUgUEhZIGlzIHJlLWluaXRpYWxpemVkIG9uIHJlc3VtZS4K
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMg
Yi9kcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jCj4gaW5kZXggMDg3ZDU1
MmViNTExOS4uMGJlZTkyODQ0MjQ1ZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9zYW1zdW5n
L3BoeS1leHlub3M1LXVzYmRyZC5jCj4gKysrIGIvZHJpdmVycy9waHkvc2Ftc3VuZy9waHktZXh5
bm9zNS11c2JkcmQuYwo+IEBAIC0xNDg2LDYgKzE0ODYsMTMgQEAgc3RhdGljIGludCBleHlub3My
MjAwX3VzYmRyZF9waHlfZXhpdChzdHJ1Y3QgcGh5ICpwaHkpCj4gIAl1MzIgcmVnOwo+ICAJaW50
IHJldDsKPiAgCj4gKwkvKgo+ICsJICogVGhlIFVUTUkgaW5pdCBpbml0aWFsaXplcyB0aGUgaGln
aC1zcGVlZCBwaHk7IGV4aXQgaXQgaW4gdHVybiwgc28KPiArCSAqIHRoYXQgdGhlIG5leHQgaW5p
dCBzZXRzIGl0IHVwIGFnYWluIGFmdGVyIGl0IGxvc3QgcG93ZXIuCj4gKwkgKi8KPiArCWlmIChp
bnN0LT5waHlfY2ZnLT5pZCA9PSBFWFlOT1M1X0RSRFBIWV9VVE1JKQo+ICsJCXBoeV9leGl0KHBo
eV9kcmQtPmhzX3BoeSk7CgpbU2V2ZXJpdHk6IE1lZGl1bV0KQ2FuIHRoaXMgdW5kZXJmbG93IHBo
eV9kcmQtPmhzX3BoeS0+aW5pdF9jb3VudCB0byAtMSBpZiB0aGUgZWFybGllcgpwaHlfaW5pdChw
aHlfZHJkLT5oc19waHkpIGZhaWxlZD8KCmV4eW5vczIyMDBfdXNiZHJkX3V0bWlfaW5pdCgpIGln
bm9yZXMgdGhlIHJldHVybiB2YWx1ZSBvZiBwaHlfaW5pdCgpOgoKZHJpdmVycy9waHkvc2Ftc3Vu
Zy9waHktZXh5bm9zNS11c2JkcmQuYzpleHlub3MyMjAwX3VzYmRyZF91dG1pX2luaXQoKSB7Cgkv
KiBDb25maWd1cmUgbm9uLVNhbXN1bmcgSVAgUEhZLCByZXNwb25zaWJsZSBmb3IgVVRNSSAqLwoJ
cGh5X2luaXQocGh5X2RyZC0+aHNfcGh5KTsKCglyZXR1cm4gMDsKfQoKV2hlbiBwaHlfaW5pdChw
aHlfZHJkLT5oc19waHkpIGZhaWxzLCBoc19waHktPmluaXRfY291bnQgc3RheXMgYXQgMCB3aGls
ZQp0aGUgb3V0ZXIgVVRNSSBQSFkgaW5pdCBzdWNjZWVkcyBhbmQgaW5jcmVtZW50cyBpdHMgaW5p
dF9jb3VudCB0byAxLgpDYWxsaW5nIHBoeV9leGl0KCkgb24gdGhlIG91dGVyIFVUTUkgUEhZIHRo
ZW4gY2FsbHMKcGh5X2V4aXQocGh5X2RyZC0+aHNfcGh5KSB3aXRoIGhzX3BoeS0+aW5pdF9jb3Vu
dCA9PSAwLCB3aGljaCBza2lwcwpvcHMtPmV4aXQoKSBhbmQgZGVjcmVtZW50cyBoc19waHktPmlu
aXRfY291bnQgdG8gLTEsIHByZXZlbnRpbmcgZnV0dXJlCnBoeV9pbml0KHBoeV9kcmQtPmhzX3Bo
eSkgY2FsbHMgZnJvbSBldmVyIHJ1bm5pbmcgb3BzLT5pbml0KCkuCgpleHlub3MyMjAwX3VzYmRy
ZF91dG1pX2luaXQoKSBzaG91bGQgcmV0dXJuIHRoZSByZXN1bHQgb2YKcGh5X2luaXQocGh5X2Ry
ZC0+aHNfcGh5KS4KCj4gKwo+ICAJcmV0ID0gY2xrX2J1bGtfcHJlcGFyZV9lbmFibGUocGh5X2Ry
ZC0+ZHJ2X2RhdGEtPm5fY2xrcywgcGh5X2RyZC0+Y2xrcyk7Cj4gIAlpZiAocmV0KQo+ICAJCXJl
dHVybiByZXQ7CgpbU2V2ZXJpdHk6IE1lZGl1bV0KRG9lcyBjYWxsaW5nIHBoeV9leGl0KHBoeV9k
cmQtPmhzX3BoeSkgYmVmb3JlIGNsa19idWxrX3ByZXBhcmVfZW5hYmxlKCkKYW5kIGlnbm9yaW5n
IGl0cyByZXR1cm4gdmFsdWUgbGVhdmUgdGhlIG91dGVyIFVUTUkgUEhZIGFuZCBwaHlfZHJkLT5o
c19waHkKaW5pdF9jb3VudCB2YWx1ZXMgb3V0IG9mIHN5bmMgb24gZXJyb3I/CgpJZiBjbGtfYnVs
a19wcmVwYXJlX2VuYWJsZSgpIGZhaWxzLCBwaHlfZHJkLT5oc19waHkgaGFzIGFscmVhZHkgYmVl
bgpleGl0ZWQgKGhzX3BoeS0+aW5pdF9jb3VudCA9PSAwKSwgd2hpbGUgcGh5X2V4aXQoKSBvbiB0
aGUgb3V0ZXIgVVRNSSBQSFkKc2VlcyB0aGUgZXJyb3IgZnJvbSBvcHMtPmV4aXQoKSBhbmQgbGVh
dmVzIHRoZSBvdXRlciBQSFkncyBpbml0X2NvdW50IGF0CjEuICBBIGxhdGVyIHBoeV9leGl0KCkg
b24gdGhlIG91dGVyIFBIWSB0aGVuIGRlY3JlbWVudHMgaHNfcGh5LT5pbml0X2NvdW50CnRvIC0x
LCBhbmQgYSBsYXRlciBwaHlfaW5pdCgpIHNraXBzIGV4eW5vczIyMDBfdXNiZHJkX3BoeV9pbml0
KCkgd2hpbGUKbGVhdmluZyBwaHlfZHJkLT5oc19waHkgdW5pbml0aWFsaXplZC4gIENvbnZlcnNl
bHksIGlmCnBoeV9leGl0KHBoeV9kcmQtPmhzX3BoeSkgaXRzZWxmIGZhaWxzLCB0aGUgb3V0ZXIg
UEhZJ3MgaW5pdF9jb3VudCBkcm9wcwp0byAwIHdoaWxlIGhzX3BoeS0+aW5pdF9jb3VudCByZW1h
aW5zIDEuCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3Bh
dGNoc2V0LzIwMjYxMTA5MjIxNTIyLjI3OTY0MjYtMS1zb2hleWJfYm91bGFhQHByb3Rvbi5tZT9w
YXJ0PTEKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=
