Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA878CD4F21
	for <linux-phy@archiver.kernel.org>; Wed, 13 May 2026 20:28:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mv+TAIWCzUGwQS8hm+CxL9fM79YeYHsmkH52dwLeCh0=; b=Fk1rd0/JVfqBGe
	/OYzzEaJO0AoGWUJdMv+KzAai1Hgca7smfE9/4jjo5bCmpHIe8Ek00EL1oboGwQDL4PMcqGv/40zJ
	85fK93OLcZFtQUDllh9TwMx2+t0B/iPIRIT6aBBXLgbCYVn24v80jqQBnhzUdQylCckb44bzGFDlH
	qv+d+18Xp+f9ZxxGq8flFc+gMFggjYGIwdeZyZ8J5UcLCAzRQw84NrkX2AUvAKIiU0W9SpgK8g9FD
	QBpd9ky/oRlUnSdoIsQ/hoKfzFvweF+u0u0YwXJvUnXt84fk/bDbpNok4QAXvoNgM3w+SqLGasku3
	+YhachG2/dT4zC4wj0Aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNGC7-00000003hzy-1Gi0;
	Wed, 13 May 2026 20:28:39 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNGC6-00000003hzV-0kiS
	for linux-phy@lists.infradead.org;
	Wed, 13 May 2026 20:28:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 4A8D360052;
	Wed, 13 May 2026 20:28:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A5F5BC19425;
	Wed, 13 May 2026 20:28:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778704117;
	bh=Afno8vvfsJoHRFhuXhOEXKa/Zyq0ccYhyblQf2HRREs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=lk7BOo/G5oMPSveY7pElLLbYBAR5T0gVYw+/r8ihmUxhD+sMn1BS0J40LVIxjOYWU
	 RnsQ+Mi+GY1NviUVy4nxbrMYiRgzXc7cC845Z7IRNAv+UKkjHDcEd15BSERCt5yb2I
	 TpX5XdsLNGNMoAX1nO9YfwRtxU1bIUHwRc1yhEV7zt/LYkqwESf+5Yf+HfVysgh/pK
	 jQriowEEbLTIs9X3SLIUNgsKVlXtyv3ZVkmx2jg9tepG3qwmDSxUlVm9NpaTq6ho9v
	 28L43M+KXFiTuMJ7G9j+yiYf7qsfCcNVOJlq025Qr6hMusD7Lhb9C4uPWvyQ7b3Khe
	 nrhYMXfWQxlvQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2] phy: fsl-imx8mq-usb: set usb phy to be wakeup
 capable
To: "Xu Yang" <xu.yang_2@nxp.com>
Cc: olteanv@gmail.com, vkoul@kernel.org, Frank.Li@kernel.org, imx@lists.linux.dev, neil.armstrong@linaro.org, linux-phy@lists.infradead.org
In-Reply-To: <20260512101046.1498096-1-xu.yang_2@nxp.com>
References: <20260512101046.1498096-1-xu.yang_2@nxp.com>
Date: Wed, 13 May 2026 20:28:36 +0000
Message-Id: <20260513202836.A5F5BC19425@smtp.kernel.org>
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
MyBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0NyaXRpY2FsXSBNaXNzaW5nIGVy
cm9yIGhhbmRsaW5nIGluIHRoZSBwcm9iZSBmdW5jdGlvbiBsZWFkcyB0byBhIFR5cGUtQyBzd2l0
Y2ggbGVhayBhbmQgYSBjcml0aWNhbCBVc2UtQWZ0ZXItRnJlZS4KLSBbSGlnaF0gVXNpbmcgZGV2
aWNlX3NldF93YWtldXBfY2FwYWJsZSgpIGZhaWxzIHRvIGVuYWJsZSB3YWtldXAgYnkgZGVmYXVs
dCwgY2F1c2luZyB0aGUgUEhZIHBvd2VyIGRvbWFpbiB0byBzdGlsbCBiZSBwb3dlcmVkIGRvd24g
ZHVyaW5nIHN1c3BlbmQuCi0gW0hpZ2hdIEZhaWxpbmcgdG8gZW5hYmxlIHRoZSBjbG9ja3MgaW4g
aW14OG1xX3BoeV9wb3dlcl9vbigpIGxlYXZlcyB0aGUgdmJ1cyByZWd1bGF0b3IgcGVybWFuZW50
bHkgZW5hYmxlZC4KLS0KCmNvbW1pdCBjMGIwNDVmZjk3NDZiNmFmZmJlY2MwMmRmNTk3MGZjMDJi
YzZhM2VkCkF1dGhvcjogWHUgWWFuZyA8eHUueWFuZ18yQG54cC5jb20+CgpwaHk6IGZzbC1pbXg4
bXEtdXNiOiBzZXQgdXNiIHBoeSB0byBiZSB3YWtldXAgY2FwYWJsZQoKVGhlIHBhdGNoIGludGVu
ZHMgdG8ga2VlcCB0aGUgUEhZIHBvd2VyIGRvbWFpbiBhY3RpdmUgZHVyaW5nIHN1c3BlbmQKYnkg
c2V0dGluZyB0aGUgUEhZIHRvIGJlIHdha2V1cCBjYXBhYmxlLgoKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtaW14OG1xLXVzYi5jIGIvZHJpdmVycy9waHkvZnJl
ZXNjYWxlL3BoeS1mc2wtaW14OG1xLXVzYi5jCj4gaW5kZXggYjA1ZDgwZTg0OWExNC4uYjJlMWUz
NzQ5ZmMxOSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1pbXg4
bXEtdXNiLmMKPiArKysgYi9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1pbXg4bXEtdXNi
LmMKPiBAQCAtNzMzLDYgKzczMyw3IEBAIHN0YXRpYyBpbnQgaW14OG1xX3VzYl9waHlfcHJvYmUo
c3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgCQkJCQkiZmFpbGVkIHRvIGdldCB0Y2Fc
biIpOwo+ICAKPiAgCWlteDhtX2dldF9waHlfdHVuaW5nX2RhdGEoaW14X3BoeSk7Cj4gKwlkZXZp
Y2Vfc2V0X3dha2V1cF9jYXBhYmxlKGRldiwgdHJ1ZSk7CgpXaWxsIHRoaXMgc3VjY2Vzc2Z1bGx5
IGVuYWJsZSB3YWtldXAgYnkgZGVmYXVsdD8KClRoZSBQTSBkb21haW4gZnJhbWV3b3JrIChnZW5w
ZCkgY2hlY2tzIGdlbnBkX2lzX2FjdGl2ZV93YWtldXAoZ2VucGQpIGFuZApkZXZpY2VfYXdha2Vf
cGF0aChkZXYpICh3aGljaCBkZXBlbmRzIG9uIGRldmljZV9tYXlfd2FrZXVwKGRldikpIHRvIGRl
dGVybWluZQppZiB0aGUgZG9tYWluIHNob3VsZCByZW1haW4gcG93ZXJlZCBvbi4KCmRldmljZV9t
YXlfd2FrZXVwKGRldikgZXZhbHVhdGVzIHRvIGRldi0+cG93ZXIuY2FuX3dha2V1cCAmJgpkZXYt
PnBvd2VyLnNob3VsZF93YWtldXAuIFdoaWxlIGRldmljZV9zZXRfd2FrZXVwX2NhcGFibGUoZGV2
LCB0cnVlKSBzZXRzCmNhbl93YWtldXAgPSB0cnVlLCBpdCBsZWF2ZXMgc2hvdWxkX3dha2V1cCA9
IGZhbHNlLiBBcyBhIHJlc3VsdCwKZGV2aWNlX21heV93YWtldXAoKSByZXR1cm5zIGZhbHNlIGJ5
IGRlZmF1bHQsIGFuZCBnZW5wZCB3aWxsIHN0aWxsIHBvd2VyIG9mZgp0aGUgUEhZIGRvbWFpbi4K
ClNob3VsZCB0aGlzIHVzZSBkZXZpY2VfaW5pdF93YWtldXAoZGV2LCB0cnVlKSB0byBlbmFibGUg
aXQgYnkgZGVmYXVsdCwKb3Igc2hvdWxkIHRoZSBVU0Igc3Vic3lzdGVtIGR5bmFtaWNhbGx5IHBy
b3BhZ2F0ZSB0aGUgY29udHJvbGxlcidzIHdha2V1cCBzdGF0ZQp0byB0aGUgUEhZIGluc3RlYWQ/
Cgo+ICAJcGh5X3Byb3ZpZGVyID0gZGV2bV9vZl9waHlfcHJvdmlkZXJfcmVnaXN0ZXIoZGV2LCBv
Zl9waHlfc2ltcGxlX3hsYXRlKTsKClRoaXMgaXNuJ3QgYSBidWcgaW50cm9kdWNlZCBieSB0aGlz
IHBhdGNoLCBidXQgZG9lcyB0aGlzIGNvZGUgbGVhdmUgYSBUeXBlLUMKc3dpdGNoIHJlZ2lzdGVy
ZWQgaWYgZGV2bV9vZl9waHlfcHJvdmlkZXJfcmVnaXN0ZXIoKSBmYWlscz8KCklmIGRldm1fb2Zf
cGh5X3Byb3ZpZGVyX3JlZ2lzdGVyKCkgcmV0dXJucyBhbiBlcnJvciwgdGhlIHByb2JlIGZ1bmN0
aW9uIGV4aXRzCndpdGhvdXQgdW5yZWdpc3RlcmluZyB0aGUgVHlwZS1DIHN3aXRjaCAoZS5nLiwg
dmlhIGlteDk1X3VzYl9waHlfcHV0X3RjYSgpKS4KVGhlIGlteF9waHkgc3RydWN0dXJlIGFsbG9j
YXRlZCB3aXRoIGRldm1fa3phbGxvYygpIHdvdWxkIHRoZW4gYmUgZnJlZWQgYnkgdGhlCmRyaXZl
ciBjb3JlLCBidXQgdGhlIHN3aXRjaCByZW1haW5zIGFjdGl2ZS4KCklmIHRoZSBUeXBlLUMgc3Vi
c3lzdGVtIHRyaWdnZXJzIHRoZSBzd2l0Y2gncyBzZXQgY2FsbGJhY2sKKHRjYV9ibGtfdHlwZWNf
c3dpdGNoX3NldCgpKSwgaXQgd2lsbCBhY2Nlc3MgdGhlIGZyZWVkIGlteF9waHksCnBvdGVudGlh
bGx5IHJlc3VsdGluZyBpbiBhIHVzZS1hZnRlci1mcmVlLgoKPiAgCj4gIAlyZXR1cm4gUFRSX0VS
Ul9PUl9aRVJPKHBoeV9wcm92aWRlcik7Cj4gIH0KClRoaXMgaXNuJ3QgYSBidWcgaW50cm9kdWNl
ZCBieSB0aGlzIHBhdGNoLCBidXQgZG9lcyBpbXg4bXFfcGh5X3Bvd2VyX29uKCkgbGVhawphIHJl
Z3VsYXRvciByZWZlcmVuY2Ugb24gZXJyb3IgcGF0aHM/CgpMb29raW5nIGF0IGlteDhtcV9waHlf
cG93ZXJfb24oKToKCmRyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLWlteDhtcS11c2IuYzpp
bXg4bXFfcGh5X3Bvd2VyX29uKCkgewogICAgLi4uCiAgICByZXQgPSByZWd1bGF0b3JfZW5hYmxl
KGlteF9waHktPnZidXMpOwogICAgaWYgKHJldCkKICAgICAgICByZXR1cm4gcmV0OwoKICAgIHJl
dCA9IGNsa19wcmVwYXJlX2VuYWJsZShpbXhfcGh5LT5jbGspOwogICAgaWYgKHJldCkKICAgICAg
ICByZXR1cm4gcmV0OwogICAgLi4uCn0KCklmIGNsa19wcmVwYXJlX2VuYWJsZShpbXhfcGh5LT5j
bGspIG9yIGNsa19wcmVwYXJlX2VuYWJsZShpbXhfcGh5LT5hbHRfY2xrKQpmYWlscywgdGhlIGZ1
bmN0aW9uIHJldHVybnMgZGlyZWN0bHkgd2l0aG91dCBjYWxsaW5nCnJlZ3VsYXRvcl9kaXNhYmxl
KGlteF9waHktPnZidXMpLgoKU2luY2UgdGhlIGZ1bmN0aW9uIHJldHVybnMgYW4gZXJyb3IsIHRo
ZSBQSFkgZnJhbWV3b3JrIHdpbGwgbm90IGNhbGwKaW14OG1xX3BoeV9wb3dlcl9vZmYoKS4gQ291
bGQgdGhpcyBsZWF2ZSB0aGUgdmJ1cyByZWd1bGF0b3IgcGVybWFuZW50bHkKZW5hYmxlZD8KCi0t
IApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAy
NjA1MTIxMDEwNDYuMTQ5ODA5Ni0xLXh1LnlhbmdfMkBueHAuY29tP3BhcnQ9MQoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
