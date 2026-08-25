Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E44AC61DBD
	for <linux-phy@archiver.kernel.org>; Tue, 25 Aug 2026 21:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5TuwuRBQ9xHLRVOZPuOkmhEsz7j+A3TV5N7ZGYLvzDg=; b=WlQ1rMVq0RL0ya
	vPLlvE4wIx513Pgkry9NpY0JzZzNVjqBBFDBg/QtjVpmVvGEpc9E+57+b5sXhKWtKxpnZXUCqJDSO
	9AmHJ9d7n/Hm0FajKu/wbBTRbmIm9e+9Jl+5ECEOtC0WzWqCLzvGAkaAtBxr1uK8gMWRdt6NwpxOX
	9Fbet51YQhAVQiuDV3ZWhXTIs0VypsnizT35eCQMyu5pGHgICltNIaoe2kVJIuYEooVgmxd7XZBQQ
	CHe8Sb6KDbRpxICDHpAxXrXYRKh2xRdRI5phcgXFO34Ssa6/RkKxsAD9YZ/WjgAs34Q+mcjhN6Arc
	bF1mUmySZzyrEgvUicfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyyh7-00000001XBR-41Zv;
	Tue, 25 Aug 2026 21:28:33 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyyh7-00000001XBF-15Sx
	for linux-phy@lists.infradead.org;
	Tue, 25 Aug 2026 21:28:33 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 660E8600C4;
	Tue, 25 Aug 2026 21:28:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AF5CA1F000E9;
	Tue, 25 Aug 2026 21:28:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787693312;
	bh=qdUaTyvkD2KRjzuTxnBcfxSZKMiTWJf+JlsfjjwhB1Y=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ASBBUgWCfoFKDACIgjAVAMZQcSOcil1hEB7/w8cv1uZb8WpvCD+GhHDG8+a6ob3jA
	 Xa5Amd/2JaYuI6whkSdx2LSC+L9aZGetdmN7AA2s/4cPDMKSpFu+o95sMgxaU/v/83
	 Fk+NRlBnu+th2Z/P2K9qe5iPZRXvd7fLe/k+vzlLKZPxFRGpprOW1nrrkyONmUAXLC
	 UztJ9Wwgok4KayIkqDZ4DiMw9M68eIyXTDGPAhIU8OryBl2Cpf5xtqi3x45h/57crU
	 We/johpPgndK8/4VKqCAKq1Wpc4xSD9jJelWcIGsPMx0ghs+jKxk1PFKK2sN1IISQd
	 BE6bLPm+KtXVg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 03/12] dt-bindings: clk: zte: Add zx297520v3 LSP
 clock and reset controller
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, lee@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, robh@kernel.org, mfd@lists.linux.dev, olteanv@gmail.com, devicetree@vger.kernel.org, linux-clk@vger.kernel.org
In-Reply-To: <20260826-zx29clk-v11-3-f8ad59c6426c@gmail.com>
References: <20260826-zx29clk-v11-0-f8ad59c6426c@gmail.com>
 <20260826-zx29clk-v11-3-f8ad59c6426c@gmail.com>
Date: Tue, 25 Aug 2026 21:28:31 +0000
Message-Id: <20260825212831.AF5CA1F000E9@smtp.kernel.org>
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

PiBUaGUgY2xvY2sgY29udHJvbGxlciBvZiB0aGUgengyOTc1MjB2MyBMb3cgU3BlZWQgUGVyaXBo
ZXJhbHMgaXMKPiByZWxhdGl2ZWx5IGNsZWFuLiBPbmUgcmVnaXN0ZXIgcGVyIGRldmljZSB3aXRo
IGdhdGVzLCBtdXhlcyBhbmQgcmVzZXRzCj4gYW5kIGZvciBzb21lIGRldmljZXMgYSBkaXZpZGVy
LiBUaGVyZSBhcmUgZXZlbiBiaXRzIGluIHRoZSBtYXRyaXgKPiBjb250cm9sbGVyIHRvIGNvbnRy
b2wgcHJvcGFnYXRpb24gb2YgY2xvY2sgbGluZXMgZG93biB0byBMU1AuCj4gCj4gVGhlIGNsb2Nr
cyBhcmUgc29ydGVkIGJ5IHJlZ2lzdGVyIGFkZHJlc3MgYW5kIEkgYW0gY29udmluY2VkIHRoYXQg
dGhlCj4gZGV2aWNlIGxpc3QgaXMgY29tcGxldGUuIFRoZXJlIGFyZSwgaG93ZXZlciwgYSBmZXcg
bW9yZSByZWdpc3RlcnMgdGhhdAo+IGFyZSBsaWtlbHkgZXh0cmEgZGl2aWRlcnMgZm9yIFRETSBh
bmQgSTJTIGRldmljZXMuCj4gCj4gUmV2aWV3ZWQtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGty
enlzenRvZi5rb3psb3dza2lAb3NzLnF1YWxjb21tLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBTdGVm
YW4gRMO2c2luZ2VyIDxzdGVmYW5kb2VzaW5nZXJAZ21haWwuY29tPgoKU2FzaGlrbyBoYXMgcmV2
aWV3ZWQgdGhpcyBwYXRjaCBhbmQgZm91bmQgbm8gaXNzdWVzLiBJdCBsb29rcyBncmVhdCEKCi0t
IApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAy
NjA4MjYtengyOWNsay12MTEtMC1mOGFkNTljNjQyNmNAZ21haWwuY29tP3BhcnQ9MwoKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
