Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BD3FC5DF97
	for <linux-phy@archiver.kernel.org>; Sat, 22 Aug 2026 08:07:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Sgm1xUZrO3yGti+j8hkH6atNyzgdwrj4BoXjixxjig=; b=ugX8SprXkQrJft
	Z2rs2HwwnUpwkIXqsUujpzfBrvzZY6egV2iKYttjzwiPN3wAQe/1XWpODeCvKP5jBxvZJPnAxdZO+
	VdutVjWmjaCFVhm0q8bQCemESSHNhw0AlFY2uYStRp8S8OJbywRx8nHQmufHge8IFelvM/T6ouCqK
	x4S83/W+2/ttwaM3Bx5l4OJelELEfgvyWMWsXH+kHYQZ7tN7BSDDX7dxiCDuy//dksP+krv0fEaV7
	9H19vHpfmXLPr8JJuRYwyrvI4nbvmFDlwH5ciVKiADEeN4wmpDQvPRC2aXDglhK7zUZwuSDFvksNb
	ms7QduRD5cDXDwFJvE0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxglK-0000000ENRr-1CQO;
	Sat, 22 Aug 2026 08:07:34 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxglI-0000000ENRk-3FKf
	for linux-phy@lists.infradead.org;
	Sat, 22 Aug 2026 08:07:32 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id E6A8440DED;
	Sat, 22 Aug 2026 08:07:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 638D31F000E9;
	Sat, 22 Aug 2026 08:07:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787386051;
	bh=wS0a+0IO6gtkkzaxgSn4a/yg01wvo51TIr/LCzO0YDE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=iDdYVWqIMW8pZZ+IhGuqbQkL11YJ127Sk0xteSpdpJiHgWezW+MYwOu50xDbO4LT7
	 toGJLaeG8KhzaNFsrdXtPcCzNm6HtnvngDauXgsqQMEO7SpuGGsPwCzbtr7tNkfcen
	 PS+jPiwIJw5y5IvvCrISdBJq4SPfU2iRwaIZBnWTL/1pTWw3vEDHT/OI/Q7lDYS9Az
	 W8524AJB5JMDNNUTNrgJ9Jtog/P57oJaEtSqiy69rN2L3arG1N3ZTntStYmJs3Cu2K
	 TYC9ylQkFM4t/PUYdfXzAORFXQdfYV3mGhZNP1s5rHrebM4kpdn6XLR1C4oxleBjSI
	 p2W8TmVcUJnnA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 8/9] arm64: dts: st: Add USB nodes on stm32mp231
To: "Marek Vasut" <marex@nabladev.com>
Cc: neil.armstrong@linaro.org, robh@kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org, conor+dt@kernel.org, vkoul@kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20260822074816.548662-9-marex@nabladev.com>
References: <20260822074816.548662-1-marex@nabladev.com>
 <20260822074816.548662-9-marex@nabladev.com>
Date: Sat, 22 Aug 2026 08:07:30 +0000
Message-Id: <20260822080731.638D31F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gTWlzc2luZyBgcmFu
Z2VzYCBwcm9wZXJ0eSBpbiB0aGUgYHNpbXBsZS1tZmRgIGBzeXNjZmdgIG5vZGUgY2F1c2VzIGEg
a2VybmVsIFdBUk5fT04gZHVyaW5nIGJvb3QuCi0tCgotLS0gUGF0Y2ggWzhdOiBbUEFUQ0ggdjMg
OC85XSBhcm02NDogZHRzOiBzdDogQWRkIFVTQiBub2RlcyBvbiBzdG0zMm1wMjMxIC0tLQpjb21t
aXQgYjIxNzQ4ZWQwOWU1YzE1NGQxMWJmYzc5NzJkZjUwYjk3MzViZmFiOQpBdXRob3I6IE1hcmVr
IFZhc3V0IDxtYXJleEBuYWJsYWRldi5jb20+Cgphcm02NDogZHRzOiBzdDogQWRkIFVTQiBub2Rl
cyBvbiBzdG0zMm1wMjMxCgpUaGlzIGNvbW1pdCBhZGRzIFVTQiBjb250cm9sbGVyIGFuZCBQSFkg
bm9kZXMgdG8gdGhlIHN0bTMybXAyMzEgZGV2aWNlIHRyZWUuCkl0IGFsc28gY29udmVydHMgdGhl
IHN5c2NmZyBub2RlIGludG8gYSBzaW1wbGUtbWZkIHRvIGNvbnRhaW4gdGhlIG5ldyBQSFkKc3Vi
bm9kZXMuCgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3N0L3N0bTMybXAyMzEu
ZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvc3Qvc3RtMzJtcDIzMS5kdHNpCj4gaW5kZXggOWUx
ZDI0MDg4OGZmMi4uZGI2Njc3N2E4YzlhMCAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3N0L3N0bTMybXAyMzEuZHRzaQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvc3Qvc3Rt
MzJtcDIzMS5kdHNpCgpbIC4uLiBdCgo+ICAJCXN5c2NmZzogc3lzY29uQDQ0MjMwMDAwIHsKPiAt
CQkJY29tcGF0aWJsZSA9ICJzdCxzdG0zMm1wMjMtc3lzY2ZnIiwgInN5c2NvbiI7Cj4gKwkJCWNv
bXBhdGlibGUgPSAic3Qsc3RtMzJtcDIzLXN5c2NmZyIsICJzeXNjb24iLCAic2ltcGxlLW1mZCI7
Cj4gIAkJCXJlZyA9IDwweDQ0MjMwMDAwIDB4MTAwMDA+Owo+ICAJCQkjY2xvY2stY2VsbHMgPSA8
MD47Cj4gKwkJCSNhZGRyZXNzLWNlbGxzID0gPDE+Owo+ICsJCQkjc2l6ZS1jZWxscyA9IDwxPjsK
CltTZXZlcml0eTogTWVkaXVtXQpJcyB0aGVyZSBhIG1pc3NpbmcgcmFuZ2VzIHByb3BlcnR5IGhl
cmU/CgpTaW5jZSB0aGUgc3lzY2ZnIG5vZGUgaXMgbm93IGEgc2ltcGxlLW1mZCBidXMgd2l0aCBj
aGlsZHJlbiB0aGF0IGhhdmUgcmVnCnByb3BlcnRpZXMgKHVzYjJfcGh5MSBhbmQgdXNiMl9waHky
KSwgb21pdHRpbmcgdGhlIHJhbmdlcyBwcm9wZXJ0eSBjYXVzZXMKYWRkcmVzcyB0cmFuc2xhdGlv
biB0byBmYWlsLgoKRHVyaW5nIGJvb3QsIHdoZW4gb2ZfcGxhdGZvcm1fcG9wdWxhdGUoKSB0cmll
cyB0byBpbnN0YW50aWF0ZSB0aGUgY2hpbGRyZW4sCm9mX2FkZHJlc3NfdG9fcmVzb3VyY2UoKSB3
aWxsIGZhaWwgdG8gdHJhbnNsYXRlIHRoZSBjaGlsZCBhZGRyZXNzZXMuIFRoaXMKdHJpZ2dlcnMg
YSBXQVJOX09OKCkgaW4gZHJpdmVycy9vZi9wbGF0Zm9ybS5jOm9mX2RldmljZV9hbGxvYygpIGZv
ciBlYWNoCmNoaWxkIGRldmljZSwgd2hpY2ggcG9sbHV0ZXMgdGhlIGJvb3QgbG9nIGFuZCBjb3Vs
ZCBjYXVzZSBib290IGZhaWx1cmVzIGlmCnBhbmljX29uX3dhcm4gaXMgZW5hYmxlZC4KCj4gKwo+
ICsJCQl1c2IyX3BoeTE6IHBoeUAyNDAwIHsKPiArCQkJCWNvbXBhdGlibGUgPSAic3Qsc3RtMzJt
cDI1LXVzYjJwaHkxIjsKPiArCQkJCXJlZyA9IDwweDI0MDAgMHgyND47CgpbIC4uLiBdCgotLSAK
U2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYw
ODIyMDc0ODE2LjU0ODY2Mi0xLW1hcmV4QG5hYmxhZGV2LmNvbT9wYXJ0PTgKCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
