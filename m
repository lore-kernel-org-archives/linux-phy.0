Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76374C43458
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jul 2026 08:23:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zHJLPBF8FM0KF4V/5GSd2yQoKpUYAWPVGEVPi8yv9XI=; b=RaZunY7cLvgAkm
	3sOR/glEMSNPBViTAvnnjWZvH8wWgmi6goJ56N3MgjzZ7gUUexeHfe6rGltRs6s5ENRcEdq3BeVlQ
	qZl3e7qFWUx+VvK/cunVv4M6KpPbZ72EKvSz+DJYiQIb7L12ut8i9wm9ParUULQrUZXSYAGoiNy1m
	wvlJfWBUSb3CuM8vDTgPv1S8gIuYd9eq+hihNhZiTDosZd/l7kvq94vIagIhqBCQhIzhX0vPC9oJl
	z7yn3DqjpVTc28c8DJGp2nuqR6a/5mQKcelEvrMFTDxr45eFaUikrOWma7azVwmjZmLjkGj77X9os
	GK4/GiYVx7bPxOaNNJFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whNYe-0000000Gc2B-0NBX;
	Wed, 08 Jul 2026 08:23:04 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whNYc-0000000Gc1t-2ins
	for linux-phy@lists.infradead.org;
	Wed, 08 Jul 2026 08:23:02 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 0950B4361F;
	Wed,  8 Jul 2026 08:23:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 93F181F000E9;
	Wed,  8 Jul 2026 08:23:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783498981;
	bh=W/I8tD7h0mwaaRGvx9QvfBrL2KJaMJJG1pn2v3zf5bg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=n0F9E+4+3WKBiJV8PsZKPA/TOQz25jN0tOjRK4QXlwa9oCU4s31HLYJD67V/q0TMk
	 TlAgU9XKu7zhBIBlrdwWAoa/tkvFwDUcDvoHb9fjIsnZnwgjjGX0rkl7D+nGCTcFoM
	 RKhRQwqzirffNU/26SjbY8GVy6Gdg3AMHK/wzD2K7vvAnRovpkGFZYKlftBH+qpfSD
	 YxgwFQzx0141ra2hfA3tq3Y746aLgpSqYk5VohMv3jVB8VFbaOh6dxGS0IEOkN8khV
	 mOmgNyK4vBLPLbLHv9uHeWh9eGIepLQIP6wQYPCuId2OsF/b4snasNzAxa7aEQ2iCA
	 YE3QmCo62fApg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] phy: ti: omap-usb2: fix OF node leak at probe
To: "Guangshuo Li" <lgs201920130244@gmail.com>
Cc: olteanv@gmail.com, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, vkoul@kernel.org
In-Reply-To: <20260708081254.734892-1-lgs201920130244@gmail.com>
References: <20260708081254.734892-1-lgs201920130244@gmail.com>
Date: Wed, 08 Jul 2026 08:23:01 +0000
Message-Id: <20260708082301.93F181F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBNaXNzaW5nIHJldHVybiB2YWx1ZSBjaGVjayBmb3IgYG9tYXBfdXNiMl9lbmFibGVf
Y2xvY2tzKClgIGluIGBvbWFwX3VzYl9pbml0KClgIGxlYWRzIHRvIGJ1cyBmYXVsdHMgYW5kIGNs
b2NrIGZyYW1ld29yayB3YXJuaW5ncy4KLS0KCi0tLSBQYXRjaCBbMV06IFtQQVRDSF0gcGh5OiB0
aTogb21hcC11c2IyOiBmaXggT0Ygbm9kZSBsZWFrIGF0IHByb2JlIC0tLQpjb21taXQgYWZhZWJh
OTYzMDQwMzVmODRmMjMyOTEyYTI4MjhiM2Q4MDdkYjgxMQpBdXRob3I6IEd1YW5nc2h1byBMaSA8
bGdzMjAxOTIwMTMwMjQ0QGdtYWlsLmNvbT4KCnBoeTogdGk6IG9tYXAtdXNiMjogZml4IE9GIG5v
ZGUgbGVhayBhdCBwcm9iZQoKb21hcF91c2IyX3Byb2JlKCkgcGFyc2VzIHRoZSBjdHJsLW1vZHVs
ZSBwaGFuZGxlIGFuZCB0aGVuIGxvb2tzIHVwIHRoZQpjb3JyZXNwb25kaW5nIHBsYXRmb3JtIGRl
dmljZS4KCm9mX3BhcnNlX3BoYW5kbGUoKSByZXR1cm5zIGEgZGV2aWNlIG5vZGUgd2l0aCBhIHJl
ZmVyZW5jZSB0aGF0IG11c3QgYmUKZHJvcHBlZCBieSB0aGUgY2FsbGVyLiBUaGUgZHJpdmVyIGN1
cnJlbnRseSBrZWVwcyB0aGUgZGV2aWNlIHJlZmVyZW5jZQp0YWtlbiBieSBvZl9maW5kX2Rldmlj
ZV9ieV9ub2RlKCkgdW50aWwgdW5iaW5kLCBidXQgbmV2ZXIgZHJvcHMgdGhlCnRlbXBvcmFyeSBP
RiBub2RlIHJlZmVyZW5jZSB0YWtlbiBieSBvZl9wYXJzZV9waGFuZGxlKCkuCgpEcm9wIHRoZSBP
RiBub2RlIHJlZmVyZW5jZSBhZnRlciBvZl9maW5kX2RldmljZV9ieV9ub2RlKCkgaGFzIGNvbnN1
bWVkCnRoZSBub2RlLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvdGkvcGh5LW9tYXAtdXNi
Mi5jIGIvZHJpdmVycy9waHkvdGkvcGh5LW9tYXAtdXNiMi5jCj4gaW5kZXggMWViMjUyNjA0NDQx
Yi4uNjYwZGYzMTgxZTRmMyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS90aS9waHktb21hcC11
c2IyLmMKPiArKysgYi9kcml2ZXJzL3BoeS90aS9waHktb21hcC11c2IyLmMKPiBAQCAtNDI2LDYg
KzQyNiw3IEBAIHN0YXRpYyBpbnQgb21hcF91c2IyX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZp
Y2UgKnBkZXYpCj4gIAkJfQo+ICAKPiAgCQljb250cm9sX3BkZXYgPSBvZl9maW5kX2RldmljZV9i
eV9ub2RlKGNvbnRyb2xfbm9kZSk7Cj4gKwkJb2Zfbm9kZV9wdXQoY29udHJvbF9ub2RlKTsKPiAg
CQlpZiAoIWNvbnRyb2xfcGRldikgewo+ICAJCQlkZXZfZXJyKCZwZGV2LT5kZXYsICJGYWlsZWQg
dG8gZ2V0IGNvbnRyb2wgZGV2aWNlXG4iKTsKPiAgCQkJcmV0dXJuIC1FSU5WQUw7CgpbU2V2ZXJp
dHk6IEhpZ2hdClRoaXMgaXNuJ3QgYSBidWcgaW50cm9kdWNlZCBieSB0aGlzIHBhdGNoLCBidXQg
SSBub3RpY2VkIGEgcHJlLWV4aXN0aW5nCmlzc3VlIHdpdGggaG93IGNsb2NrIGVuYWJsZW1lbnQg
ZmFpbHVyZXMgYXJlIGhhbmRsZWQ6Cgpkcml2ZXJzL3BoeS90aS9waHktb21hcC11c2IyLmM6b21h
cF91c2JfaW5pdCgpIHsKCS4uLgoJb21hcF91c2IyX2VuYWJsZV9jbG9ja3MocGh5KTsKCglpZiAo
cGh5LT5mbGFncyAmIE9NQVBfVVNCMl9DQUxJQlJBVEVfRkFMU0VfRElTQ09OTkVDVCkgewoJCS4u
LgoJCXZhbCA9IG9tYXBfdXNiX3JlYWRsKHBoeS0+cGh5X2Jhc2UsIFVTQjJQSFlfQU5BX0NPTkZJ
RzEpOwoJLi4uCn0KCklmIG9tYXBfdXNiMl9lbmFibGVfY2xvY2tzKCkgZmFpbHMsIGl0IHJldHVy
bnMgYSBuZWdhdGl2ZSBlcnJvciBjb2RlIGFuZApyb2xscyBiYWNrIGFueSBlbmFibGVkIGNsb2Nr
cy4gQmVjYXVzZSBvbWFwX3VzYl9pbml0KCkgaWdub3JlcyB0aGlzIGVycm9yLAppdCBhc3N1bWVz
IHRoZSBjbG9ja3MgYXJlIGVuYWJsZWQgYW5kIHByb2NlZWRzIHRvIGFjY2VzcyBtZW1vcnktbWFw
cGVkCmhhcmR3YXJlIHJlZ2lzdGVycy4KCkNhbiBhY2Nlc3NpbmcgdW5jbG9ja2VkIGhhcmR3YXJl
IGhlcmUgdHJpZ2dlciBhIHN5bmNocm9ub3VzIGV4dGVybmFsIGFib3J0CihidXMgZmF1bHQpIG9u
IE9NQVAgcGxhdGZvcm1zPwoKRnVydGhlcm1vcmUsIGJlY2F1c2Ugb21hcF91c2JfaW5pdCgpIGZh
bHNlbHkgcmV0dXJucyBzdWNjZXNzLCB0aGUgUEhZCmZyYW1ld29yayB3aWxsIGV2ZW50dWFsbHkg
Y2FsbCBvbWFwX3VzYl9leGl0KCk6Cgpkcml2ZXJzL3BoeS90aS9waHktb21hcC11c2IyLmM6b21h
cF91c2JfZXhpdCgpIHsKCXN0cnVjdCBvbWFwX3VzYiAqcGh5ID0gcGh5X2dldF9kcnZkYXRhKHgp
OwoKCXJldHVybiBvbWFwX3VzYjJfZGlzYWJsZV9jbG9ja3MocGh5KTsKfQoKV2lsbCB0aGlzIGF0
dGVtcHQgdG8gZGlzYWJsZSBjbG9ja3MgdGhhdCB3ZXJlIG5ldmVyIHN1Y2Nlc3NmdWxseSBlbmFi
bGVkLAp0cmlnZ2VyaW5nIGEgd2FybmluZyBpbiB0aGUgY2xvY2sgZnJhbWV3b3JrIGFib3V0IHVu
YmFsYW5jZWQgZGlzYWJsZXM/CgpTaG91bGQgd2UgY2hlY2sgdGhlIHJldHVybiB2YWx1ZSBvZiBv
bWFwX3VzYjJfZW5hYmxlX2Nsb2NrcygpIGFuZCBwcm9wYWdhdGUKdGhlIGVycm9yIHRvIGF2b2lk
IHRoZXNlIGlzc3Vlcz8KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28u
ZGV2LyMvcGF0Y2hzZXQvMjAyNjA3MDgwODEyNTQuNzM0ODkyLTEtbGdzMjAxOTIwMTMwMjQ0QGdt
YWlsLmNvbT9wYXJ0PTEKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXBoeQo=
