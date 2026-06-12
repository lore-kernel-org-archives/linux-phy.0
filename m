Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E118BCD98CE
	for <linux-phy@archiver.kernel.org>; Fri, 12 Jun 2026 17:06:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1yHH/zgJwjL7v1X8hpsUDVdv+hAhuj9o6a1sr+aj7zE=; b=oSVbz9wSh3rrhq
	n9ZiADA/u2/HIatG52N3FN1N2m1gZX/PP0uyRDfexRLS8v/LU8yI6zOjio4ovHWhnVlg9vwyUtK8w
	59xPNOi5lYtMFtStd4+ziCgXIl89pIh4pRlYysDuTqPOXzy8cRpPpMBWZr7kOxUoBsoKdh4N0tNOT
	bPJpyawPBFK2uLTapXafnJQNYR7aSREHrS8LUJgYWP/+Xwman++LC7tehLaLqa377WBvm9n92+1ZJ
	wTRQkmw2+gZwkCbJK5OLjLM35kiQXrsD9MsSzQp3LLtOnFUWTZnEqboYjQ325Imr/5qCQz6hqdSx0
	kIJg9f4tTYM9lvv3h1rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY5LD-0000000BKP3-1lop;
	Fri, 12 Jun 2026 17:06:47 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY5LC-0000000BKOx-145S
	for linux-phy@lists.infradead.org;
	Fri, 12 Jun 2026 17:06:46 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id DD048443B1;
	Fri, 12 Jun 2026 17:06:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 060BC1F000E9;
	Fri, 12 Jun 2026 17:06:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781284005;
	bh=B4V1aZFrTPWCVtWm1aK9wzIjct1SKl/aweN1HBLXMwU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=CP6/veqRrY9X5Q6XKYSsQbd0CNU2Q+KE4cbjqtixSxeHcSk6BY8sfDOfSj7NNheIg
	 LiSqzBVa6KJLnHY6MC0NApxeLwFV5w7G+5hWX02FqUcUpwDQZuSHjOFaydlRz7vbPJ
	 dERvE15mw2gSmOv9nc01Xl4MGFzSK6vvxVjLeojuiXdnCC/mcpd5cKxdQXsbOJDRXU
	 bZwjjNL0vrcY5km9C5FZnqLNqHLPWaPRSK0N6IuUl1oKLg78ZU7aSF6U8zTml57Sw9
	 OSUCwU3faFCUcrQA9TWXZ+1pOoDI/F89EMk3TRme86mDZfqIQrAn8vE3WFvT98NKAl
	 s2IGxRdfKfp0Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 18/18] phy: rockchip: usbdp: Add some extra debug
 messages
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, vkoul@kernel.org, linux-phy@lists.infradead.org, robh@kernel.org
In-Reply-To: <20260612-rockchip-usbdp-cleanup-v5-18-efc83069869f@collabora.com>
References: <20260612-rockchip-usbdp-cleanup-v5-18-efc83069869f@collabora.com>
Date: Fri, 12 Jun 2026 17:06:44 +0000
Message-Id: <20260612170645.060BC1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gTWlzc2luZyBleHBsaWNp
dCBpbmNsdXNpb24gb2YgYDxsaW51eC9zdHJpbmdfY2hvaWNlcy5oPmAgZm9yIHN0cmluZyBjaG9p
Y2UgaGVscGVycy4KLS0KCmNvbW1pdCAxZGY5Zjg0NGI0ZmExOWRhOWVmZTFmYmExMGFkOGExZDQ1
MWJlYTU1CkF1dGhvcjogU2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxh
Ym9yYS5jb20+CgpwaHk6IHJvY2tjaGlwOiB1c2JkcDogQWRkIHNvbWUgZXh0cmEgZGVidWcgbWVz
c2FnZXMKClRoaXMgY29tbWl0IGFkZHMgYWRkaXRpb25hbCBkZWJ1ZyBsb2dnaW5nIHRvIHRoZSBS
b2NrY2hpcCBVU0JEUCBQSFkKZHJpdmVyLiBUaGUgbmV3IG1lc3NhZ2VzIHJlcG9ydCBwb3J0IHN0
YXR1cyBhbmQgdHJhY2sgUEhZIGluaXRpYWxpemF0aW9uCnRvIGhlbHAgZGVidWcgVVNCLUMgaG90
cGx1Z2dpbmcgYmVoYXZpb3IuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9w
aHktcm9ja2NoaXAtdXNiZHAuYyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11
c2JkcC5jCj4gaW5kZXggMjM2MzMxY2MwZDEzMi4uNDA0MmUyZGQ4MTIxOSAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYwo+ICsrKyBiL2RyaXZl
cnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jCj4gQEAgLTQ5MSw2ICs0OTEsOCBA
QCBzdGF0aWMgdm9pZCBya191ZHBoeV91M19wb3J0X2Rpc2FibGUoc3RydWN0IHJrX3VkcGh5ICp1
ZHBoeSwgdTggZGlzYWJsZSkKPiAgCWNvbnN0IHN0cnVjdCBya191ZHBoeV9jZmcgKmNmZyA9IHVk
cGh5LT5jZmdzOwo+ICAJY29uc3Qgc3RydWN0IHJrX3VkcGh5X2dyZl9yZWcgKnByZWc7Cj4gIAo+
ICsJZGV2X2RiZyh1ZHBoeS0+ZGV2LCAiVVNCMyBwb3J0ICVzXG4iLCBzdHJfb25fb2ZmKCFkaXNh
YmxlKSk7CgpbU2V2ZXJpdHk6IExvd10KRG9lcyB0aGlzIGZpbGUgZXhwbGljaXRseSBpbmNsdWRl
IDxsaW51eC9zdHJpbmdfY2hvaWNlcy5oPj8gUmVseWluZyBvbgppbXBsaWNpdCBpbmNsdXNpb24g
Zm9yIHN0cl9vbl9vZmYoKSBtaWdodCBjYXVzZSBidWlsZCBmYWlsdXJlcyBpbiB0aGUgZnV0dXJl
CmlmIGhlYWRlciBkZXBlbmRlbmNpZXMgYXJlIHJlb3JnYW5pemVkIGFjcm9zcyBhcmNoaXRlY3R1
cmVzLgoKWyAuLi4gXQoKPiBAQCAtNzg0LDYgKzc4NiwxMCBAQCBzdGF0aWMgaW50IHJrX3VkcGh5
X2luaXQoc3RydWN0IHJrX3VkcGh5ICp1ZHBoeSkKPiAgCWNvbnN0IHN0cnVjdCBya191ZHBoeV9j
ZmcgKmNmZyA9IHVkcGh5LT5jZmdzOwo+ICAJaW50IHJldDsKPiAgCj4gKwlkZXZfZGJnKHVkcGh5
LT5kZXYsICIocmUtKWluaXQgUEhZIHdpdGggVVNCPSVzIGFuZCBEUD0lc1xuIiwKPiArCQlzdHJf
ZW5hYmxlZF9kaXNhYmxlZCh1ZHBoeS0+bW9kZSAmIFVEUEhZX01PREVfVVNCKSwKPiArCQlzdHJf
ZW5hYmxlZF9kaXNhYmxlZCh1ZHBoeS0+bW9kZSAmIFVEUEhZX01PREVfRFApKTsKCltTZXZlcml0
eTogTG93XQpTaW1pbGFybHksIHNob3VsZCB3ZSBhZGQgPGxpbnV4L3N0cmluZ19jaG9pY2VzLmg+
IGhlcmUgdG8gZW5zdXJlCnN0cl9lbmFibGVkX2Rpc2FibGVkKCkgaXMgc2FmZWx5IHJlc29sdmVk
IHdpdGhvdXQgcmVseWluZyBvbiB0cmFuc2l0aXZlCmluY2x1ZGVzPwoKLS0gClNhc2hpa28gQUkg
cmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDYxMi1yb2NrY2hp
cC11c2JkcC1jbGVhbnVwLXY1LTAtZWZjODMwNjk4NjlmQGNvbGxhYm9yYS5jb20/cGFydD0xOAoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
