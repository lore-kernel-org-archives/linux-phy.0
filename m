Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4E05C43458
	for <linux-phy@archiver.kernel.org>; Tue, 14 Jul 2026 06:53:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y7EI6esN/S5tGtI7CGdTRmL1jZgNdPMSepOlTsRMyb0=; b=HA1OZ+Qz/a665n
	oWu+B2MyaQQZNNwi4RZrXi0uYSQsDKaFEozeL4lHl5vpJbNxAWPQ4mmYsVi75kSIWgB1NiNsDegJd
	wf43O0hbpyLKuzP2tPz3LRSotlzJ5qUlQfXNG8bAiX016MnIlH7ChAkCA3y0U9ErB38N1lj0bF2uP
	68XQr+z2HKTFRWQ2yOIU80X5WBDCRs3y3nIkwoPZV0l5Ti96LICaESn67Fq6+Pbb/BUFn6foLQXz6
	En/Iy5BAC7Nq4BRbuvR5kdVnuNTPR+xESVB/+FTO4dx1IVMoPJVPN/PxeNR1ELpBtWwkGyHFlrqRV
	Ktbs6zltaAV0gIaTSkKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjX12-0000000B5kt-2S3V;
	Tue, 14 Jul 2026 06:53:16 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjX11-0000000B5kj-06fF
	for linux-phy@lists.infradead.org;
	Tue, 14 Jul 2026 06:53:15 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 7445A60120;
	Tue, 14 Jul 2026 06:53:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA56D1F000E9;
	Tue, 14 Jul 2026 06:53:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784011994;
	bh=a+06sBeVaMr0O+Qr5MRt+JcVThTh2IjiE1te939gX8I=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=LfW4k/2fbi5F7wG+FTq6TlxkG0MU1hIdlh+AIhvn0xDKa4hX3CQTXBnfGpR0iAmm+
	 6BS/mvJeMbsbvol26WOD4ChsY8CWZyh57ACaEkRNa8Ju2PcXpuArRj9oM8rvOe83Yq
	 lNwDD0mkFGhfmNA18ZZhk2TMvM4Wd1nSHCed6zhpEdE2DsCU5Ae1Y4bF/dm9eBBA7J
	 liY6qvLumCE11v5E0xMhPrtsjIOHsE2p3lXv53VBwXpSWLu2xADFDpTtYb/ZyGTbdV
	 BTZEcyWj1X0seCr7p2+KG4E36lCwcs/vprzOv6KxRyU5+EY+k5nXJXwJwR2q+4ETaI
	 DTfXQ7GBRQ4uw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/6] phy: qcom: qmp-pcie: Add pcs_lane1 offset to V5
 offsets
To: "Esteban Urrutia" <esteuwu@proton.me>
Cc: robh@kernel.org, linux-phy@lists.infradead.org, vkoul@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, devicetree@vger.kernel.org
In-Reply-To: <20260714-sm8475-bup-v1-2-b2871be2b4ec@proton.me>
References: <20260714-sm8475-bup-v1-0-b2871be2b4ec@proton.me>
 <20260714-sm8475-bup-v1-2-b2871be2b4ec@proton.me>
Date: Tue, 14 Jul 2026 06:53:13 +0000
Message-Id: <20260714065313.AA56D1F000E9@smtp.kernel.org>
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
IFtIaWdoXSBNaXNzaW5nIGAucGNzX2xhbmUxYCBvZmZzZXQgaW4gYHFtcF9wY2llX29mZnNldHNf
djZfMjBgIGNhdXNlcyBzaWxlbnQgb3V0LW9mLWJvdW5kcyByZWdpc3RlciBvdmVyd3JpdGUgb2Yg
dGhlIGB0eGAgYmxvY2suCi0tCgotLS0gUGF0Y2ggWzJdOiBbUEFUQ0ggMi82XSBwaHk6IHFjb206
IHFtcC1wY2llOiBBZGQgcGNzX2xhbmUxIG9mZnNldCB0byBWNSBvZmZzZXRzIC0tLQpjb21taXQg
Nzk2YWE5NTljYzBhMDhiZTkxM2Y5ZWI4NzFmZTQzMTJkOThlMTZmYwpBdXRob3I6IEVzdGViYW4g
VXJydXRpYSA8ZXN0ZXV3dUBwcm90b24ubWU+CgpwaHk6IHFjb206IHFtcC1wY2llOiBBZGQgcGNz
X2xhbmUxIG9mZnNldCB0byBWNSBvZmZzZXRzCgpTb21lIFNvQ3Mgc3VjaCBhcyBTTTg0NzUgd3Jp
dGUgZGF0YSB0byByZWdpc3RlcnMgdXNpbmcgdGhpcyBvZmZzZXQsCnNwZWNpZmljYWxseSBTV19D
VFJMMiBhbmQgTVhfQ1RSTDIuIEFkZCBwY3NfbGFuZTEgb2Zmc2V0IHRvIFY1IG9mZnNldHMgdXNp
bmcKdGhlIHByb3BlciBvZmZzZXQsIG90aGVyd2lzZSB0aGVzZSByZWdpc3RlcnMgd291bGQgYmUg
cGFydCBvZiBSWCBhbmQgd291bGQgbm90CmJlIGRlZmluZWQuCgo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtcGNpZS5jIGIvZHJpdmVycy9waHkvcXVhbGNv
bW0vcGh5LXFjb20tcW1wLXBjaWUuYwo+IGluZGV4IGQzZWZmYWQ3YTA3NGIuLjM2MTg4MTJlODRk
NWYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXBjaWUu
Ywo+ICsrKyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1wY2llLmMKPiBAQCAt
MzU1NCw2ICszNTU0LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBxbXBfcGNpZV9vZmZzZXRzIHFt
cF9wY2llX29mZnNldHNfdjUgPSB7Cj4gIAkucGNzX21pc2MJPSAweDA2MDAsCj4gIAkudHgJCT0g
MHgwZTAwLAo+ICAJLnJ4CQk9IDB4MTAwMCwKPiArCS5wY3NfbGFuZTEJPSAweDE0MDAsCj4gIAku
dHgyCQk9IDB4MTYwMCwKPiAgCS5yeDIJCT0gMHgxODAwLAo+ICB9OwoKW1NldmVyaXR5OiBIaWdo
XQpUaGlzIGlzIGEgcHJlLWV4aXN0aW5nIGlzc3VlIGFuZCB3YXNuJ3QgaW50cm9kdWNlZCBieSB0
aGlzIHBhdGNoLCBidXQgd2hpbGUKeW91IGFyZSBhZGRpbmcgdGhlIHBjc19sYW5lMSBvZmZzZXQg
aGVyZSwgaXMgaXQgYWxzbyBtaXNzaW5nIGZyb20KcW1wX3BjaWVfb2Zmc2V0c192Nl8yMD8KCkxv
b2tpbmcgYXQgZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXBjaWUuYywgcW1wX3Bj
aWVfb2Zmc2V0c192Nl8yMApvbWl0cyB0aGUgLnBjc19sYW5lMSBtYXBwaW5nOgoKc3RhdGljIGNv
bnN0IHN0cnVjdCBxbXBfcGNpZV9vZmZzZXRzIHFtcF9wY2llX29mZnNldHNfdjZfMjAgPSB7Cgku
c2VyZGVzCQk9IDB4MTAwMCwKCS5wY3MJCT0gMHgxMjAwLAoJLnBjc19taXNjCT0gMHgxNDAwLAoJ
LnR4CQk9IDB4MDAwMCwKCS5yeAkJPSAweDAyMDAsCgkudHgyCQk9IDB4MDgwMCwKCS5yeDIJCT0g
MHgwYTAwLAoJLmxuX3NocmQJPSAweDBlMDAsCn07CgpUaGlzIG9taXNzaW9uIGNhdXNlcyAucGNz
X2xhbmUxIHRvIGltcGxpY2l0bHkgZGVmYXVsdCB0byAweDAwMDAsIHdoaWNoIGlzIHRoZQpzYW1l
IG9mZnNldCBhcyB0aGUgLnR4IGJsb2NrLgoKSG93ZXZlciwgc2R4NjVfcW1wX3BjaWVwaHlfY2Zn
IHBhaXJzIHRoaXMgb2Zmc2V0IHN0cnVjdHVyZSB3aXRoIGEgdmFsaWQKcGNzX2xhbmUxIHRhYmxl
OgoKc3RhdGljIGNvbnN0IHN0cnVjdCBxbXBfcGh5X2NmZyBzZHg2NV9xbXBfcGNpZXBoeV9jZmcg
PSB7CgkubGFuZXMgICAgICAgICAgICAgICAgICA9IDIsCgoJLm9mZnNldHMJCT0gJnFtcF9wY2ll
X29mZnNldHNfdjZfMjAsCgoJLnRibHMgPSB7Ci8vIC4uLgoJCQkucGNzX2xhbmUxICAgICAgID0g
c2R4NjVfcW1wX3BjaWVfcGNzX2xhbmUxX3RibCwKCQkJLnBjc19sYW5lMV9udW0gICA9IEFSUkFZ
X1NJWkUoc2R4NjVfcW1wX3BjaWVfcGNzX2xhbmUxX3RibCksCgkJfSwKCldpbGwgdGhpcyBjYXVz
ZSB0aGUgcGNzX2xhbmUxIHRhYmxlIHRvIGJsaW5kbHkgb3ZlcndyaXRlIHRoZSBQSFkgdHJhbnNt
aXR0ZXIKcmVnaXN0ZXJzIGluIHRoZSB0eCBibG9jayBkdXJpbmcgaW5pdGlhbGl6YXRpb24/Cgot
LSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIw
MjYwNzE0LXNtODQ3NS1idXAtdjEtMC1iMjg3MWJlMmI0ZWNAcHJvdG9uLm1lP3BhcnQ9MgoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
