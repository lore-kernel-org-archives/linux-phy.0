Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E109C55160
	for <linux-phy@archiver.kernel.org>; Thu, 30 Jul 2026 01:43:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9NtoOX9i1DVPER/CgnkZZsVGOCMdFBGnJxaSAOapjt8=; b=tMKLOHR1GvZN/E
	z3GUVgXjeZDA4OveQMU9bR81nBzojdVt6FYGpAyxoV5LdtCqZ6Dgv2Gi7OCChR3EsTXT1gz5jOZjg
	xXnVerEJ67Bm5XLojlSE1VVPsnsKEF0icRwFdYSMCpicVH7uxoKA4ZTFljrjMBbc1KeA1rpjQSw3W
	NTF3DD3TFk8Myys/xv9qcsDFXJiU405HX/SWkx4tAcv3u7yQyRqMFICwjlWMGjHnZAHI+6sGfRq2L
	G3p2l4VQKFfWy6V0N6CYP7ZvvCQICexTUEIVuhZiJyOeP9qSdl8ccgAk7RdBEDJtkiaulwtzqNk0i
	ht/O2DUsdbl5gfpd3ylQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpFnZ-00000009Hc7-3tqf;
	Thu, 30 Jul 2026 01:43:01 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpFnZ-00000009Hbm-14f5
	for linux-phy@lists.infradead.org;
	Thu, 30 Jul 2026 01:43:01 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id F1F3041210;
	Thu, 30 Jul 2026 01:42:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 089BE1F000E9;
	Thu, 30 Jul 2026 01:42:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785375777;
	bh=4+yndoO9TpigdF1QR7m/oUtzbNiuYSE7FpoLZqQTKj0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=mDd57DCz/V6QpY9Ow0hEkjnem3x1gfI2kyxo3hNIXkiOYFkmdbnzoK6S+q751tmcI
	 kxpWdsYNxlVs+BPCKKJWH7Ek6VvyHkAhPuOMr2gJo69PlwF0sskGxScOxBEXaDs7z1
	 PVlDySw56qQP7r39forZKGJrykBKwxBqYCObU89TQg94MMWm+9DU6D45s3XTLMVdlg
	 +nOAC2A0Md1aphKhNJtlTAFba/mOIibRzluQT+HI6XmRhJFzDaS9SwuWJmJPoJYa1E
	 9kXr92ns4MaNcD4irrm+VjXVtnAvx3UTA+GUselrOVpbI2Ae8OL58cF1jkNcAFxHEL
	 VL6o2kxApx87A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 3/6] drm/bridge: aux: Add
 drm_aux_bridge_register_from_node()
To: "Chaoyi Chen" <kernel@airkyi.com>
Cc: olteanv@gmail.com, dri-devel@lists.freedesktop.org, vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org
In-Reply-To: <20260730013349.51-4-kernel@airkyi.com>
References: <20260730013349.51-1-kernel@airkyi.com>
 <20260730013349.51-4-kernel@airkyi.com>
Date: Thu, 30 Jul 2026 01:42:56 +0000
Message-Id: <20260730014257.089BE1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFVuYmFsYW5jZWQgYG9m
X25vZGVfcHV0KClgIG9uIHRoZSBwcm92aWRlZCBkZXZpY2Ugbm9kZSBgbnBgIGxlYWRzIHRvIHJl
ZmVyZW5jZSBjb3VudCB1bmRlcmZsb3cgYW5kIHBvdGVudGlhbCB1c2UtYWZ0ZXItZnJlZS4KLS0K
Ci0tLSBQYXRjaCBbM106IFtQQVRDSCB2NSAzLzZdIGRybS9icmlkZ2U6IGF1eDogQWRkIGRybV9h
dXhfYnJpZGdlX3JlZ2lzdGVyX2Zyb21fbm9kZSgpIC0tLQpjb21taXQgNzNiMDE0OTQ5NDk5MDg3
YzliMGI5OWM0OWRjMThjNDg2ODQyOGRjZApBdXRob3I6IENoYW95aSBDaGVuIDxjaGFveWkuY2hl
bkByb2NrLWNoaXBzLmNvbT4KCmRybS9icmlkZ2U6IGF1eDogQWRkIGRybV9hdXhfYnJpZGdlX3Jl
Z2lzdGVyX2Zyb21fbm9kZSgpCiAgICAKVGhpcyBwYXRjaCBpbnRyb2R1Y2VzIGEgbmV3IGZ1bmN0
aW9uIHRvIHJlZ2lzdGVyIGFuIGF1eGlsaWFyeSBicmlkZ2UgdXNpbmcKYSBzcGVjaWZpY2FsbHkg
cHJvdmlkZWQgZGV2aWNlIG5vZGUsIGluc3RlYWQgb2YgZGVmYXVsdGluZyB0byB0aGUgcGFyZW50
J3MKZGV2aWNlIG5vZGUuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2F1
eC1icmlkZ2UuYyBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYXV4LWJyaWRnZS5jCj4gaW5kZXgg
MWVkMjFhODcxM2JmZC4uMDZhMTQ2NmY0OWJkMiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vYnJpZGdlL2F1eC1icmlkZ2UuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYXV4
LWJyaWRnZS5jClsgLi4uIF0KPiBAQCAtNjIsNyArNjMsMTAgQEAgaW50IGRybV9hdXhfYnJpZGdl
X3JlZ2lzdGVyKHN0cnVjdCBkZXZpY2UgKnBhcmVudCkKPiAgCWFkZXYtPmRldi5wYXJlbnQgPSBw
YXJlbnQ7Cj4gIAlhZGV2LT5kZXYucmVsZWFzZSA9IGRybV9hdXhfYnJpZGdlX3JlbGVhc2U7Cj4g
IAo+IC0JZGV2aWNlX3NldF9vZl9ub2RlX2Zyb21fZGV2KCZhZGV2LT5kZXYsIHBhcmVudCk7Cj4g
KwlpZiAobnApCj4gKwkJZGV2aWNlX3NldF9ub2RlKCZhZGV2LT5kZXYsIG9mX2Z3bm9kZV9oYW5k
bGUobnApKTsKCltTZXZlcml0eTogSGlnaF0KRG9lcyB0aGlzIHBhdGggY2F1c2UgYSByZWZlcmVu
Y2UgY291bnQgdW5kZXJmbG93IG9uIHRoZSBwcm92aWRlZCBkZXZpY2Ugbm9kZT8KCldoZW4gbnAg
aXMgcHJvdmlkZWQsIGRldmljZV9zZXRfbm9kZSgpIHNpbXBseSBhc3NpZ25zIHRoZSBub2RlIHBv
aW50ZXIKd2l0aG91dCB0YWtpbmcgYSByZWZlcmVuY2UgdmlhIG9mX25vZGVfZ2V0KCkuIEluIGNv
bnRyYXN0LCB0aGUgZmFsbGJhY2sKcGF0aCBkZXZpY2Vfc2V0X29mX25vZGVfZnJvbV9kZXYoKSBw
cm9wZXJseSBhY3F1aXJlcyBhIHJlZmVyZW5jZS4KCkJvdGggdGhlIGVycm9yIHBhdGggYmVsb3cg
KHdoZW4gYXV4aWxpYXJ5X2RldmljZV9pbml0KCkgZmFpbHMpIGFuZCB0aGUKbm9ybWFsIGRldmlj
ZSByZWxlYXNlIGNhbGxiYWNrIGRybV9hdXhfYnJpZGdlX3JlbGVhc2UoKSB1bmNvbmRpdGlvbmFs
bHkKY2FsbCBvZl9ub2RlX3B1dChhZGV2LT5kZXYub2Zfbm9kZSkuIFRoaXMgZHJvcHMgYSByZWZl
cmVuY2UgdGhhdCB3YXMgbmV2ZXIKYWNxdWlyZWQgaW4gdGhlIG5wICE9IE5VTEwgYnJhbmNoLgoK
SWYgdGhlIEFQSSBpbnRlbmRlZCB0byBjb25zdW1lIGEgcmVmZXJlbmNlIGZyb20gdGhlIGNhbGxl
ciwgdGhlIGVycm9yCnBhdGhzIGFwcGVhciB0byBiZSBzdHJ1Y3R1cmFsbHkgYnJva2VuOiBmYWls
dXJlIGluIGlkYV9hbGxvYygpIGRvZXMgbm90CmRyb3AgdGhlIHJlZmVyZW5jZSwgYnV0IGZhaWx1
cmUgaW4gYXV4aWxpYXJ5X2RldmljZV9pbml0KCkgZG9lcywgbGVhdmluZwp0aGUgY2FsbGVyIHVu
YWJsZSB0byBrbm93IGlmIGl0IHNob3VsZCBjbGVhbiB1cCB0aGUgcmVmZXJlbmNlLgoKU2hvdWxk
IHdlIGFkZCBhbiBvZl9ub2RlX2dldCgpIGhlcmU/Cgo+ICsJZWxzZQo+ICsJCWRldmljZV9zZXRf
b2Zfbm9kZV9mcm9tX2RldigmYWRldi0+ZGV2LCBwYXJlbnQpOwo+ICAKPiAgCXJldCA9IGF1eGls
aWFyeV9kZXZpY2VfaW5pdChhZGV2KTsKPiAgCWlmIChyZXQpIHsKWyAuLi4gXQoKLS0gClNhc2hp
a28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDczMDAx
MzM0OS41MS0xLWtlcm5lbEBhaXJreWkuY29tP3BhcnQ9MwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
