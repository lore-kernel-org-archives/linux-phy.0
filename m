Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A230CD4F54
	for <linux-phy@archiver.kernel.org>; Wed, 20 May 2026 10:49:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0TwL3LK9hMrXqHg+ykhZrzVOm7E3ou4HC/OIU0vRZq8=; b=a36NstDnVWMTSe
	y6th2M4OqM9OmP7OHD6Ff4XXKg3C/YOZtcB0aVXA6vWdnECt7SZQg2kk3/CmJ0V5oDqJZGvTsEOw3
	GHJ3Bp0cATqol8MnNeTmsCXp5Be/icF2eOKXlYru2gE40cGqTyCZsrF6dBCoezStuPC0+gQQ8Glpz
	wOqEb50E2PQWvRb31wJR0Yap/hqtuzxgHbQN27FTo3rL9fIgWS0oCdFYzmK6lUDc/cKCZjSgJykkr
	ZwGSeLEcy5UdIcoGRTnXEiIEURGdAls1vvBfmxmpo05C+V3LSUyFWwbumVJ4/MMnfNuiAz5kQo/Hw
	poKOndyf0tuijGo7M7Qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPeUD-00000004NKc-3ou1;
	Wed, 20 May 2026 10:49:13 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPeUB-00000004NK5-3x1T
	for linux-phy@lists.infradead.org;
	Wed, 20 May 2026 10:49:13 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 792FB42E4D;
	Wed, 20 May 2026 10:49:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2ED121F000E9;
	Wed, 20 May 2026 10:49:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779274151;
	bh=li6wvVVCGVCBGqPgIJVCHKC9/Pm3OUFxk/yu4/TuAfY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=VPbrwZ0GhGP/g8Vi3VXdP5zXXsFXQy2BUzHtZ8x1KhLmF3SHTtrwDc63xux+hiKuL
	 q0Mt5wNZFayyKRuxsLeUfAcvuIGFuniZarHIFGBHoYXv5wXp4AbOOmE0yq/nCjBAwn
	 Yn6UVfW7odHp2qDof/+UkwwBOv6P+cp/e79bFT0b1sBlEEqw71K4ukABoRfWlzEtJf
	 +0aTdS0bn0LZT2+2OUpLVJEbRK4HydRG/hZDl9tICToNaku6C34V8ocFSbFpyO+7HN
	 u7x10C4nunSoIsJ7QAOT7aa+hLFIABpjxbrH6vTiH/dreKoOTiRRZBvOZky1k4VIv1
	 PmOZ7N86VxjYw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] phy: rockchip: inno-usb2: Add missing clkout_ctl_phy
 kerneldoc
To: "Heiko Stuebner" <heiko@sntech.de>
Cc: linux-phy@lists.infradead.org, olteanv@gmail.com, neil.armstrong@linaro.org, vkoul@kernel.org
In-Reply-To: <20260520102859.1357411-1-heiko@sntech.de>
References: <20260520102859.1357411-1-heiko@sntech.de>
Date: Wed, 20 May 2026 10:49:10 +0000
Message-Id: <20260520104911.2ED121F000E9@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_034912_005654_00F8D76D 
X-CRM114-Status: GOOD (  11.97  )
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVGhlIHBhdGNoIGFkZHMg
YSBrZXJuZWwtZG9jIGRlc2NyaXB0aW9uIGZvciBhIG5vbi1leGlzdGVudCBzdHJ1Y3QgbWVtYmVy
IGBjbGtvdXRfY3RsX3BoeWAsIGNhdXNpbmcgYSBkb2N1bWVudGF0aW9uIGJ1aWxkIHdhcm5pbmcu
Ci0tCgpjb21taXQgZjFkYmY3ZmU3MjZkMTAyMzIyNThlNjFhOGRlYjAwODVhNjY4NmUxOQpBdXRo
b3I6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+CgpwaHk6IHJvY2tjaGlwOiBpbm5v
LXVzYjI6IEFkZCBtaXNzaW5nIGNsa291dF9jdGxfcGh5IGtlcm5lbGRvYwoKQWRkIHRoZSBtaXNz
aW5nIGRvY3VtZW50YXRpb24gZm9yIHRoZSBuZXdseSBhZGRlZCBjbGtvdXRfY3RsX3BoeSBmaWVs
ZC4KCkNsb3NlczogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvb2Uta2J1aWxkLWFsbC8yMDI2MDUx
NTAzMTUuTXlCTlFPUEItbGtwQGludGVsLmNvbS8KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5
L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1pbm5vLXVzYjIuYyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlw
L3BoeS1yb2NrY2hpcC1pbm5vLXVzYjIuYwo+IGluZGV4IDhmNGMwOGU1OTlhYTIuLjJkZDY1MTYy
NGU2ZDQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWlu
bm8tdXNiMi5jCj4gKysrIGIvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWlubm8t
dXNiMi5jCj4gQEAgLTE3MCw3ICsxNzAsOCBAQCBzdHJ1Y3Qgcm9ja2NoaXBfdXNiMnBoeV9wb3J0
X2NmZyB7Cj4gICAqIEByZWc6IHRoZSBhZGRyZXNzIG9mZnNldCBvZiBncmYgZm9yIHVzYi1waHkg
Y29uZmlnLgo+ICAgKiBAbnVtX3BvcnRzOiBzcGVjaWZ5IGhvdyBtYW55IHBvcnRzIHRoYXQgdGhl
IHBoeSBoYXMuCj4gICAqIEBwaHlfdHVuaW5nOiBwaHkgZGVmYXVsdCBwYXJhbWV0ZXJzIHR1bmlu
Zy4KPiAtICogQGNsa291dF9jdGw6IGtlZXAgb24vdHVybiBvZmYgb3V0cHV0IGNsayBvZiBwaHku
Cj4gKyAqIEBjbGtvdXRfY3RsOiByZWdpc3RlciB0byBlbmFibGUgb3V0cHV0IGNsayBvZiBwaHks
IHdoZW4gc2V0IGluIEdSRgo+ICsgKiBAY2xrb3V0X2N0bF9waHk6IHJlZ2lzdGVyIHRvIGVuYWJs
ZSBvdXRwdXQgY2xrIG9mIHBoeSwgd2hlbiBzZXQgaW5zaWRlIHBoeQoKW1NldmVyaXR5OiBMb3dd
CldpbGwgdGhpcyBjYXVzZSBhbiBleGNlc3Mgc3RydWN0IG1lbWJlciB3YXJuaW5nIGR1cmluZyB0
aGUgZG9jdW1lbnRhdGlvbiBidWlsZD8KCkxvb2tpbmcgYXQgc3RydWN0IHJvY2tjaGlwX3VzYjJw
aHlfY2ZnIGluIHRoaXMgZmlsZSwgaXQgZG9lcyBub3QgY29udGFpbiBhCmNsa291dF9jdGxfcGh5
IGZpZWxkOgoKc3RydWN0IHJvY2tjaGlwX3VzYjJwaHlfY2ZnIHsKCXVuc2lnbmVkIGludAlyZWc7
Cgl1bnNpZ25lZCBpbnQJbnVtX3BvcnRzOwoJaW50ICgqcGh5X3R1bmluZykoc3RydWN0IHJvY2tj
aGlwX3VzYjJwaHkgKnJwaHkpOwoJc3RydWN0IHVzYjJwaHlfcmVnCWNsa291dF9jdGw7Cgljb25z
dCBzdHJ1Y3Qgcm9ja2NoaXBfdXNiMnBoeV9wb3J0X2NmZwlwb3J0X2NmZ3NbVVNCMlBIWV9OVU1f
UE9SVFNdOwoJY29uc3Qgc3RydWN0IHJvY2tjaGlwX2NoZ19kZXRfcmVnCWNoZ19kZXQ7Cn07CgpE
b2VzIHRoaXMgY29kZSBkb2N1bWVudCBhIG1lbWJlciB0aGF0IGRvZXMgbm90IGV4aXN0IGluIHRo
ZSBzdHJ1Y3R1cmUKZGVmaW5pdGlvbiBvbiB0aGlzIGJyYW5jaD8KCj4gICAqIEBwb3J0X2NmZ3M6
IHVzYi1waHkgcG9ydCBjb25maWd1cmF0aW9ucy4KPiAgICogQGNoZ19kZXQ6IGNoYXJnZXIgZGV0
ZWN0aW9uIHJlZ2lzdGVycy4KPiAgICovCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6
Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNTIwMTAyODU5LjEzNTc0MTEtMS1oZWlrb0Bz
bnRlY2guZGU/cGFydD0xCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1waHkK
