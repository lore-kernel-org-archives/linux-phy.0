Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4424C43602
	for <linux-phy@archiver.kernel.org>; Mon, 29 Jun 2026 09:47:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2PurfBqQcVcV6Ou1ng47+sxGAKZckjhZtag2laWcVNQ=; b=DINr6BPZFnlBtF
	trIIVv7z9DOChAyJmQDjpha0mEjV6rVqVp1CYVk7rQL2OYKIAPYigwYu+RGtSSJXq4k2bF3eHbtzv
	nyXm3KwrHyT6OJJGmO/EXs1iX9v3kt4Yhw/fp4rrYPCwko5QvxpMIMGZr0b5aol2r8jYUpY+hXHv9
	YtzIUA4lmj9OccTj7uJynqn0BVFH9p1tEIiCHgkgj56iT/wl0NdBf9/e3cXCuzA+gTro1yLL2Qs/m
	SIDOOPksKIB8A4oW1kgW1IdYMKC85gtRubjdmWswkyRIKn/zdLXmcCcK4C+M6pDPy1zPVCN3X9MBI
	T8UNebOrvUdmgRdrwvvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we8a5-0000000EECx-2rl5;
	Mon, 29 Jun 2026 09:47:09 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we8a5-0000000EECq-0YOp
	for linux-phy@lists.infradead.org;
	Mon, 29 Jun 2026 09:47:09 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id B251043AF7;
	Mon, 29 Jun 2026 09:47:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2FDA91F000E9;
	Mon, 29 Jun 2026 09:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782726428;
	bh=25uXwRoYK3zia5mE2CwImEPPHOYkn1v2Gf8xHF2A5EU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=kiU5h7UuokUwdlANijWDCOFklNPHwIplMIg1gGtb+SGyteXwi0kcYjAYUeq2d2Twa
	 OjxNOBDh42f22WGoRCO5XEn8ui0oZCRkkGYIhiOFsxHRf1VVC2xqCMe1W3xHKS9T0r
	 +hdqwiwkX+kiAymgEzL11wOzOaAcQQjl9qmA0CUAKhiH2ualkKS0x4mNRdI76tXNTY
	 YWTXNyPwFEv8AjlJ8UHCVcb1fQTGpOYwEBEI8H42stlEba5xMkWHcyyDD0eUbsC4Hi
	 Bypi1JlLUsYZACNBJqo9qKUo8cqTeQ6I4G+DhlEIdPOtAuwoOxBEnJSgTjzMQ1/stI
	 37QCtYU6bXROQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 8/8] usb: host: xhci-tegra: Add Tegra264 XHCI support
To: "Wayne Chang" <waynec@nvidia.com>
Cc: olteanv@gmail.com, vkoul@kernel.org, robh@kernel.org, neil.armstrong@linaro.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, conor+dt@kernel.org
In-Reply-To: <20260629093406.1118594-9-waynec@nvidia.com>
References: <20260629093406.1118594-1-waynec@nvidia.com>
 <20260629093406.1118594-9-waynec@nvidia.com>
Date: Mon, 29 Jun 2026 09:47:07 +0000
Message-Id: <20260629094708.2FDA91F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIGB0ZWdyYTI2
NF9zb2NgIHN0cnVjdCBleHBsaWNpdGx5IHNldHMgYGVuYWJsZV9maXJtd2FyZV9tZXNzYWdlc2Ag
dG8gYGZhbHNlYCwgY29udHJhZGljdGluZyB0aGUgY29tbWl0IG1lc3NhZ2UgdGhhdCBjbGFpbXMg
dGhlIG9ubHkgZGlmZmVyZW5jZSBmcm9tIGB0ZWdyYTIzNF9zb2NgIGlzIGBtYXhfbnVtX3dha2Vz
YC4KLS0KCmNvbW1pdCBmMzhjOTFlYTc0MzZiY2NhZTI2OGU2NjExZTE5MzFjZmYwMmYwN2VjCkF1
dGhvcjogV2F5bmUgQ2hhbmcgPHdheW5lY0BudmlkaWEuY29tPgoKdXNiOiBob3N0OiB4aGNpLXRl
Z3JhOiBBZGQgVGVncmEyNjQgWEhDSSBzdXBwb3J0CgpUaGlzIGNvbW1pdCBhZGRzIFhVU0IgaG9z
dCBtb2RlIGNvbnRyb2xsZXIgc3VwcG9ydCBmb3IgdGhlIFRlZ3JhMjY0IFNvQy4KSXQgZGVmaW5l
cyBhIG5ldyB0ZWdyYV94dXNiX3NvYyBzdHJ1Y3QgZm9yIFRlZ3JhMjY0IGFuZCBhZGRzIGl0IHRv
IHRoZQpPRiBtYXRjaCB0YWJsZS4KCj4gICAgIFRoZSBob3N0IGNvbnRyb2xsZXIgaXMgdmVyeSBz
aW1pbGFyIHRvIHRoZSBleGlzdGluZyBUZWdyYTIzNCBYSENJLAo+ICAgICBleGNlcHQgdGhlIG51
bWJlciBvZiBtYXhfbnVtX3dha2VzLgoKWyAuLi4gXQoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy91
c2IvaG9zdC94aGNpLXRlZ3JhLmMgYi9kcml2ZXJzL3VzYi9ob3N0L3hoY2ktdGVncmEuYwo+IGlu
ZGV4IDdkNTZmMzVlYzllNzEuLjlhNTVkNTgxOGVmYjAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy91
c2IvaG9zdC94aGNpLXRlZ3JhLmMKPiArKysgYi9kcml2ZXJzL3VzYi9ob3N0L3hoY2ktdGVncmEu
YwpbIC4uLiBdCj4gQEAgLTI3NTIsMTIgKzI3NTIsNDAgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCB0
ZWdyYV94dXNiX3NvYyB0ZWdyYTIzNF9zb2MgPSB7ClsgLi4uIF0KPiArc3RhdGljIGNvbnN0IHN0
cnVjdCB0ZWdyYV94dXNiX3NvYyB0ZWdyYTI2NF9zb2MgPSB7ClsgLi4uIF0KPiArCS5scG1fc3Vw
cG9ydCA9IHRydWUsCj4gKwkuaGFzX2JhcjIgPSB0cnVlLAo+ICsJLmVuYWJsZV9maXJtd2FyZV9t
ZXNzYWdlcyA9IGZhbHNlLAoKW1NldmVyaXR5OiBNZWRpdW1dCklzIHRoaXMgdmFsdWUgaW50ZW50
aW9uYWw/CgpUaGUgY29tbWl0IG1lc3NhZ2Ugc3RhdGVzIHRoYXQgdGhlIG9ubHkgZGlmZmVyZW5j
ZSBmcm9tIFRlZ3JhMjM0IGlzCm1heF9udW1fd2FrZXMsIGJ1dCB0ZWdyYTIzNF9zb2Mgc2V0cyBl
bmFibGVfZmlybXdhcmVfbWVzc2FnZXMgdG8gdHJ1ZS4KClNldHRpbmcgdGhpcyB0byBmYWxzZSBt
ZWFucyB0aGUgZHJpdmVyIHdpbGwgc2tpcCBzZW5kaW5nIHRoZQpNQk9YX0NNRF9NU0dfRU5BQkxF
RCBjb21tYW5kIHRvIHRoZSBjb250cm9sbGVyIHZpYQpfX3RlZ3JhX3h1c2JfZW5hYmxlX2Zpcm13
YXJlX21lc3NhZ2VzKCkgZHVyaW5nIGluaXRpYWxpemF0aW9uLgoKSWYgVGVncmEyNjQgcmVxdWly
ZXMgdGhlc2UgbWVzc2FnZXMgZm9yIGNsb2NrIHNjYWxpbmcgb3IgcG93ZXIgbWFuYWdlbWVudAps
aWtlIFRlZ3JhMjM0IGRvZXMsIHRoaXMgb21pc3Npb24gbWlnaHQgbGVhZCB0byBwZXJmb3JtYW5j
ZSBvciBwb3dlcgptYW5hZ2VtZW50IGlzc3Vlcy4gQ291bGQgeW91IGNsYXJpZnkgaWYgdGhpcyBz
aG91bGQgYmUgdHJ1ZSwgb3IgdXBkYXRlIHRoZQpjb21taXQgbWVzc2FnZSB0byByZWZsZWN0IHRo
aXMgZGlmZmVyZW5jZT8KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28u
ZGV2LyMvcGF0Y2hzZXQvMjAyNjA2MjkwOTM0MDYuMTExODU5NC0xLXdheW5lY0BudmlkaWEuY29t
P3BhcnQ9OAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==
