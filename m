Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6718C43458
	for <linux-phy@archiver.kernel.org>; Fri, 26 Jun 2026 21:19:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9A1SbX1uCVQnfeS+0ZoLRBEJOD6ksIsKhRCTHl/mZkI=; b=QRRuzhVv/fgdYG
	p7KmSNhzzmoiy4yeY5/wBSb56TI52u6ZUds4Yj98BT1IXeWLKvbEvUOHuvSPyFYig/qWF8k7aKeiK
	AhXO+79ZG/5uk/65xfwMuJjSSb5OpefowsdDBSk1QDBcNjv4ZZV1nDYovFbM68wCVDKU9BienuyHd
	APsErH0moYEH67XRB4XWvn6HBYXPpb8fMiSKgohBTyGvPSu4CSzsNP3QU+fscvN3DKkqDk80yooH2
	rIlfSxf97yv722c+SNH88wCOd/iRZjcRONb9OKIpHM0i8AO8w5tx4ql1Q1T7nUCv9vUVsl09QSOOw
	6xhLZX0xtdpKNiZI9sfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdDxf-0000000Btqu-29vn;
	Fri, 26 Jun 2026 21:19:43 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdDxe-0000000Btqg-1jf9
	for linux-phy@lists.infradead.org;
	Fri, 26 Jun 2026 21:19:42 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id D451A43DB2;
	Fri, 26 Jun 2026 21:19:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 414EB1F000E9;
	Fri, 26 Jun 2026 21:19:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782508781;
	bh=/qHtjDulENvWJOViH550S5KqvWhwQPXGZfm2aT/Pk/U=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=QGHqam8FjwuseQ6RToCGJVtUQYYDzDxsR/MQXhuLKo1chO4+tLTXAYsHbBoHNoIFn
	 ST2yR0u2+2pQYHnY9maNsG0icodc0JnHbZpdlNmBIdrMBx9AXbSxQTMRU7LrTtL7ck
	 LX+e70JuvlgPPv+qlt7fVU191Iu6d3AUkpReiw6InnfxZdjyk0oJJMr8T+EmoirCrI
	 1dmklckeZHQ16rdklCfoIpHjxmB3Ldvpdfeyp+aCZFviups4oxPBjrhwc5VFLipDCm
	 YIYQvbMKScJD4QyJDF/AQj0aG9trt/aHtDEt6Dw5t9j9+R6tRb/Pc0oUS9PrK6AZvH
	 +9MHOQGggtfBg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 12/29] phy: rockchip: usbdp: Support single-lane DP
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: neil.armstrong@linaro.org, vkoul@kernel.org, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org
In-Reply-To: <20260626-rockchip-usbdp-cleanup-v8-12-47f682987895@collabora.com>
References: <20260626-rockchip-usbdp-cleanup-v8-0-47f682987895@collabora.com>
 <20260626-rockchip-usbdp-cleanup-v8-12-47f682987895@collabora.com>
Date: Fri, 26 Jun 2026 21:19:40 +0000
Message-Id: <20260626211941.414EB1F000E9@smtp.kernel.org>
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
IFtIaWdoXSBVbmNsb2NrZWQgUEhZIHJlZ2lzdGVyIGFjY2VzcyBjYXVzZWQgYnkgcmV0dXJuaW5n
IDAgb24gdW5zdXBwb3J0ZWQgbW9kZSBpbiBgcmtfdWRwaHlfcG93ZXJfb25gLgotLQoKY29tbWl0
IDgzNWU0NTkwMTkxOGE5YjI0YWE5ZDdjY2Q3Yjg1MzhkYjI2NDE0NmIKQXV0aG9yOiBaaGFuZyBZ
dWJpbmcgPHl1YmluZy56aGFuZ0Byb2NrLWNoaXBzLmNvbT4KCnBoeTogcm9ja2NoaXA6IHVzYmRw
OiBTdXBwb3J0IHNpbmdsZS1sYW5lIERQCgpJbXBsZW1lbnQgc3VwcG9ydCBmb3IgdXNpbmcganVz
dCBhIHNpbmdsZSBEaXNwbGF5UG9ydCBsaW5lLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkv
cm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHkt
cm9ja2NoaXAtdXNiZHAuYwo+IC0tLSBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hp
cC11c2JkcC5jCj4gKysrIGIvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRw
LmMKWyAuLi4gXQo+IEBAIC0xMDgzLDE4ICsxMDcyLDE3IEBAIHN0YXRpYyBpbnQgcmtfdWRwaHlf
ZHBfcGh5X2V4aXQoc3RydWN0IHBoeSAqcGh5KQo+ICBzdGF0aWMgaW50IHJrX3VkcGh5X2RwX3Bo
eV9wb3dlcl9vbihzdHJ1Y3QgcGh5ICpwaHkpCj4gIHsKWyAuLi4gXQo+ICAJcmV0ID0gcmtfdWRw
aHlfcG93ZXJfb24odWRwaHksIFVEUEhZX01PREVfRFApOwo+ICAJaWYgKHJldCkKPiAgCQlnb3Rv
IHVubG9jazsKPiAgCj4gLQlya191ZHBoeV9kcGxhbmVfZW5hYmxlKHVkcGh5LCBkcF9sYW5lcyk7
Cj4gKwlya191ZHBoeV9kcGxhbmVfZW5hYmxlKHVkcGh5LCB1ZHBoeS0+ZHBfbGFuZXMpOwo+ICAK
PiAgCXJrX3VkcGh5X2RwbGFuZV9zZWxlY3QodWRwaHkpOwoKW1NldmVyaXR5OiBIaWdoXQpUaGlz
IGlzIGEgcHJlLWV4aXN0aW5nIGlzc3VlLCBidXQgSSBub3RpY2VkIGEgcG90ZW50aWFsIHByb2Js
ZW0gaW4gaG93CndlIGhhbmRsZSB0aGUgcmV0dXJuIHZhbHVlIG9mIHJrX3VkcGh5X3Bvd2VyX29u
KCkgaGVyZS4KCklmIHRoZSBEUCBjb250cm9sbGVyIHBvd2VycyBvbiB0aGUgRFAgUEhZIHdoZW4g
RFAgbW9kZSBpcyBub3QgY3VycmVudGx5CmVuYWJsZWQsIHN1Y2ggYXMgYmVmb3JlIFR5cGUtQyBu
ZWdvdGlhdGlvbiBjb21wbGV0ZXMgb3Igd2hlbiBmb3JjZWQgYnkKdXNlcnNwYWNlIGJ5cGFzc2lu
ZyBIUEQgY2hlY2tzLCBya191ZHBoeV9wb3dlcl9vbigpIHJldHVybnMgMCBmb3IKdW5zdXBwb3J0
ZWQgbW9kZXMuCgpCZWNhdXNlIHRoZSByZXR1cm4gdmFsdWUgaXMgMCwgZXhlY3V0aW9uIHByb2Nl
ZWRzIHRvIHJrX3VkcGh5X2RwbGFuZV9lbmFibGUoKQphbmQgcmtfdWRwaHlfZHBsYW5lX3NlbGVj
dCgpLiBDYW4gdGhpcyBjYXVzZSBhIGtlcm5lbCBjcmFzaCBvciBTRXJyb3IKcmVzdWx0aW5nIGZy
b20gYW4gTU1JTyBhY2Nlc3MgdG8gdW5jbG9ja2VkIFVEUEhZX1BNQSByZWdpc3RlcnM/CgpTaG91
bGQgcmtfdWRwaHlfcG93ZXJfb24oKSByZXR1cm4gYW4gZXJyb3IgY29kZSBsaWtlIC1FT1BOT1RT
VVBQIGluc3RlYWQgb2YKMCB3aGVuIHRoZSBtb2RlIGlzIG5vdCBzdXBwb3J0ZWQsIHNvIHRoZSBj
aGVjayBoZXJlIGNhbiBwcm9wZXJseSBhYm9ydD8KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBo
dHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA2MjYtcm9ja2NoaXAtdXNiZHAtY2xl
YW51cC12OC0wLTQ3ZjY4Mjk4Nzg5NUBjb2xsYWJvcmEuY29tP3BhcnQ9MTIKCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
