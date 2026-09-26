Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73651C98338
	for <linux-phy@archiver.kernel.org>; Sat, 26 Sep 2026 14:18:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rvBroPof2gU9YIvwQOR6j33qFgHvdLWKMmEU1YDz+9Q=; b=uJwFnsl0vtoy5/
	129Y32zyP2XszbcWcVjfuNkhDG/kkcsXrF0u1GRFT2ltUWHMkgzcwdRpP2EaqyiGZhqGiFaCfFA8z
	6xGb4NzKYIOuGzFuoauQxR18qui/3LYGt96E7LGvhWle2hrXaw4CkBdC5BV5pP08V4C1fiAJIcrSL
	COTTXR+ki6GIXJmuCSk2Ea0Hw9K1GGz577C9/t5o0kpe0ddCJ47/GzGD6VVQeo5PjvNWr8whPxiFV
	boG+bLAhA7pOnrt4x1Y3h+4NRbKTB61KhvZ3I/IJcDUqxpIoAlJG38cDSPDGxSeeM9UcyOfA95gIU
	9B8ap8BikYIfdtkCJ7Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xATE9-0000000FVo1-38bP;
	Sat, 26 Sep 2026 14:18:09 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xATE8-0000000FVnt-1PR3
	for linux-phy@lists.infradead.org;
	Sat, 26 Sep 2026 14:18:08 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id C01D84051D;
	Sat, 26 Sep 2026 14:18:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E3B621F000FF;
	Sat, 26 Sep 2026 14:18:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790432287;
	bh=fvR+VMPQke7hzyVupL3yYsH+elLidJGF7niKtW4gOgo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=dRdxvFDYPbI/TnU5vmQeAUexEDPcqTR/hC6wjSXYqx1PuvZuUWJPfJnODjo6t0TVP
	 90gvkTjvvQNUWT8bebRiOx66HiF3ToTQHUx6717aG04AaMZfL21OKpdHKXoJjTpSGI
	 EhpUYe9+jMncDPfT0qokEJ3wfXGabE8SN85l43eAtiqQ3tZG+2QYVPB4h9M7ncNdFV
	 QI/lGpRRfh2CA+6SwhydA2a2KwachoMy3/bISdTA3p6fsWLOWE3/KW4ckpGiX8QzxT
	 wesBDAUYqw9vNlmD6yHiBVO2D4z2EZPsEXvCQWZ4CvpAs4weWBw1Fy1WyEzBeRK7T/
	 1fhZKt03NQq9Q==
Date: Sat, 26 Sep 2026 16:17:55 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Akash Sukhavasi <akash.sukhavasi@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: HiSilicon: Fix error handling in
 hi3670_pcie_allclk_ctrl()
Message-ID: <wergc4zb3ciedi2mqudbo5zi5mo4lricjswukplt5aytwnholl@6xmg667oqynm>
References: <20260708-b4-hi3670-v1-1-f9236f3e585c@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260708-b4-hi3670-v1-1-f9236f3e585c@gmail.com>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gV2VkLCBKdWwgMDgsIDIwMjYgYXQgMDQ6MzE6MDBQTSAtMDUwMCwgQWthc2ggU3VraGF2YXNp
IHdyb3RlOgo+IFdoZW4gaGkzNjcwX3BjaWVfcGxsX2N0cmwoKSBmYWlscywgaGkzNjcwX3BjaWVf
YWxsY2xrX2N0cmwoKSByZXR1cm5zCj4gLUVJTlZBTCBkaXJlY3RseSwgc2tpcHBpbmcgdGhlIGNs
b3NlX2Nsb2NrcyBjbGVhbnVwIHBhdGguIFRoaXMgbGVhdmVzCj4gdGhlIFBMTCB3aXRoIGl0cyBw
b3dlci1kb3duIGJpdCBjbGVhcmVkLgo+IAo+IFVzZSBnb3RvIGNsb3NlX2Nsb2NrcyBpbnN0ZWFk
LCB3aGljaCBkaXNhYmxlcyB0aGUgUExMIGFuZCBwcm9wYWdhdGVzCj4gdGhlIG9yaWdpbmFsIGVy
cm9yIGNvZGUgZnJvbSBoaTM2NzBfcGNpZV9wbGxfY3RybCgpLgo+IAo+IEZvdW5kIHdoaWxlIGlu
dmVzdGlnYXRpbmcgYSBTbWF0Y2ggd2FybmluZy4KPiAKPiBGaXhlczogNzMwNzUwMTFmZmZmICgi
cGh5OiBIaVNpbGljb246IEFkZCBkcml2ZXIgZm9yIEtpcmluIDk3MCBQQ0llIFBIWSIpCj4gU2ln
bmVkLW9mZi1ieTogQWthc2ggU3VraGF2YXNpIDxha2FzaC5zdWtoYXZhc2lAZ21haWwuY29tPgoK
UmV2aWV3ZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFt
QG9zcy5xdWFsY29tbS5jb20+CgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqng
r40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdAps
aW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
