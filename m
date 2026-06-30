Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C630C43458
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jun 2026 11:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dVSgFljd40C1CkoKiHi0AdIBTpWMQTkQeRKfpqUbN+k=; b=Fyq1GJBDxF0vdF
	+HVaZq2tfWwNX3d8IAcTWCQGez3ALcaytVeIjZqWBmtT6XKygBYwciIyZ9jQ+1N1tTzUM7mcOESOJ
	UQk1OYIyautUsCq8UP2dZvMY1/2WcForC7isOf1cnL1YlScb+bNCDMy5txdtrhDsFWtCzNq6nsTFQ
	AA8EcsS1uxqR0yz0rmPYXQFfJU07p+JS6JXlt5pwWWu0IVSKtRjYtnI7AidEO+Q8rFQ6Uz+PJk9wm
	rainPx9DXQxOLDPJXVKS1UFM26bcqFDNz79+gx1KOKSzAvT0guWPAZLpMK/F6rHXN6vRGCxW3AKeq
	bUY7Mukvy0yahaco0kfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weWOp-0000000GoGd-3gN0;
	Tue, 30 Jun 2026 11:13:07 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weWOn-0000000GoG7-0Ysv
	for linux-phy@lists.infradead.org;
	Tue, 30 Jun 2026 11:13:07 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id DFCEC40051;
	Tue, 30 Jun 2026 11:13:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68B971F000E9;
	Tue, 30 Jun 2026 11:13:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782817984;
	bh=dXwf9MFnxmrskbOpPhh4KPZhCD/mf9AcUlE163bmeQ4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=bQ0HFW0ybAJeXdTzjFRJKMTpqk/CtAI6YHNolFN1WTxuPl6e3GiImUAhpfWnqN7++
	 SbEvaKX9R1OxsM0t7lfRm5DaJPp+Gze58I+LwKMKKsqZ5nxcjQvFaH66/ggxUtNF77
	 g7fZ5NNvSnDUlmLgMUPNSUlNts5N94+o4M35AA8jRdlPZuf5lYW9BSHIYskpqXQIfW
	 qhXVQOEMK5xcSFLbng2F91Yt5vWOVH2nC34Vw5Mi5I+cXTd6mVMLRmiMJAANU+PaoH
	 OgY+3AM5SYpv6WpLw/CKfncpR0ukA3BCZWLikCkxdk5Y5kOpHzvKvkQjGVEu1liQv1
	 OphrZSvZoFoDw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 4/5] phy: fsl-imx8mq-usb: add control register regmap
To: "Xu Yang" <xu.yang_2@oss.nxp.com>
Cc: Frank.Li@kernel.org, vkoul@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, imx@lists.linux.dev, neil.armstrong@linaro.org
In-Reply-To: <20260630-imx8mp-usb-phy-improvement-v5-4-25d616403844@nxp.com>
References: <20260630-imx8mp-usb-phy-improvement-v5-0-25d616403844@nxp.com>
 <20260630-imx8mp-usb-phy-improvement-v5-4-25d616403844@nxp.com>
Date: Tue, 30 Jun 2026 11:13:03 +0000
Message-Id: <20260630111304.68B971F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gUnVudGltZSBQTSBl
bmFibGVtZW50IGlzIGxlYWtlZCBvbiBwcm9iZSBlcnJvciBwYXRocy4KLS0KCmNvbW1pdCA0ODdh
MGE4NTUxODQ0Y2M5YjVjMzhlN2Y4ZDdjYmYyZWMzZjE0MzVkCkF1dGhvcjogWHUgWWFuZyA8eHUu
eWFuZ18yQG54cC5jb20+CgpwaHk6IGZzbC1pbXg4bXEtdXNiOiBhZGQgY29udHJvbCByZWdpc3Rl
ciByZWdtYXAKClRoaXMgY29tbWl0IGFkZHMgYSBjb250cm9sIHJlZ2lzdGVyIHJlZ21hcCBmb3Ig
dGhlIFVTQiAzLjAgZmVtdG9QSFkuCkl0IGV4cG9zZXMgdGhlc2UgcmVnaXN0ZXJzIHRocm91Z2gg
ZGVidWdmcyB0byBhc3Npc3Qgd2l0aCBkaWFnbm9zdGljCmVmZm9ydHMuCgo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1pbXg4bXEtdXNiLmMgYi9kcml2ZXJzL3Bo
eS9mcmVlc2NhbGUvcGh5LWZzbC1pbXg4bXEtdXNiLmMKPiBpbmRleCA5ZDFkZDBlNzM1MmVkLi40
OTQ5ZWM3OGQzMDQ0IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNs
LWlteDhtcS11c2IuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLWlteDht
cS11c2IuYwpbIC4uLiBdCj4gQEAgLTY5NSw2ICs3MDcsMTMgQEAgc3RhdGljIGludCBpbXg4bXFf
dXNiX3BoeV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAJaWYgKElTX0VS
UihpbXhfcGh5LT5iYXNlKSkKPiAgCQlyZXR1cm4gUFRSX0VSUihpbXhfcGh5LT5iYXNlKTsKPiAg
Cj4gKwlpbXhfcGh5LT5jcl9yZWdtYXAgPSBkZXZtX3JlZ21hcF9pbml0X21taW8oZGV2LCBpbXhf
cGh5LT5iYXNlICsgUEhZX0NSQ1RMLAo+ICsJCQkJCQkgICAmaW14X2NyX3JlZ21hcF9jb25maWcp
Owo+ICsJaWYgKElTX0VSUihpbXhfcGh5LT5jcl9yZWdtYXApKSB7Cj4gKwkJZGV2X3dhcm4oZGV2
LCAiRmFpbCB0byBpbml0IGRlYnVnIHJlZ2lzdGVyIHJlZ21hcFxuIik7Cj4gKwkJaW14X3BoeS0+
Y3JfcmVnbWFwID0gTlVMTDsKPiArCX0KPiArCj4gIAlwbV9ydW50aW1lX3NldF9hY3RpdmUoZGV2
KTsKPiAgCXBtX3J1bnRpbWVfZW5hYmxlKGRldik7CgpbU2V2ZXJpdHk6IE1lZGl1bV0KSXMgdGhl
cmUgYSBsZWFrIG9mIHRoZSBydW50aW1lIFBNIGVuYWJsZW1lbnQgc3RhdGUgb24gcHJvYmUgZXJy
b3IgcGF0aHMgaGVyZT8KCkluIGlteDhtcV91c2JfcGh5X3Byb2JlKCksIHBtX3J1bnRpbWVfZW5h
YmxlKCkgaXMgY2FsbGVkLCBidXQgc3Vic2VxdWVudAppbml0aWFsaXphdGlvbiBzdGVwcyAobGlr
ZSBkZXZtX3BoeV9jcmVhdGUoKSBvciBkZXZtX3JlZ3VsYXRvcl9nZXQoKSkgY2FuIGZhaWwKYW5k
IHJldHVybiBkaXJlY3RseSB3aXRob3V0IGNhbGxpbmcgcG1fcnVudGltZV9kaXNhYmxlKCkuCgpD
b3VsZCB0aGlzIGxlYXZlIHRoZSBkaXNhYmxlX2RlcHRoIGNvdW50ZXIgYXQgMCBvbiBhIHByb2Jl
IGZhaWx1cmUgbGlrZQotRVBST0JFX0RFRkVSLCByZXN1bHRpbmcgaW4gYW4gJ1VuYmFsYW5jZWQg
cG1fcnVudGltZV9lbmFibGUhJyB3YXJuaW5nIG9uIHRoZQpuZXh0IHByb2JlIGF0dGVtcHQ/IFdv
dWxkIHVzaW5nIGRldm1fcG1fcnVudGltZV9lbmFibGUoKSBlbnN1cmUgdGhpcyBzdGF0ZSBpcwpw
cm9wZXJseSBjbGVhbmVkIHVwPwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2Fz
aGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDYzMC1pbXg4bXAtdXNiLXBoeS1pbXByb3ZlbWVudC12
NS0wLTI1ZDYxNjQwMzg0NEBueHAuY29tP3BhcnQ9NAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
