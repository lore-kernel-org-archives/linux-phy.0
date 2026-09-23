Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC578C9830B
	for <linux-phy@archiver.kernel.org>; Wed, 23 Sep 2026 18:32:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tK/Dfioa2yKLe51Ucj8Uz0PQyDH9KYYxzUBIpXlGm0w=; b=j757va/Mk8FHoB
	qCBa1Epsz+vTdFmb3145j6XHCyzQwMwVDuVd4qtBEaGxGwQHKr2bgPvxNZXYK+zAe4PiEu2uoDDpn
	zH8q0+LRNTJIw0on1D6XbZgiU6wa3vkOYb0yYotn8/aBb6OUABSDUiSn/w90VlgEUcBthpuRtdlgs
	3gJtO93HaEDWhw2tehdmT0Z1avhcDHbylSQut6MObbnjs8K2K5Yk8S2F8sTX5OE8SpA4tW9pBxkT3
	xE+yrK1hl5VqzGuAcrNgRQqvw/zZqCV7RkiNpMna/C4iGWE06d4Re1pbW6lugI1yBLpR4ASSH87bc
	FUeW1ME04o2gMtLdkhFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Rm0-00000009DCm-0T86;
	Wed, 23 Sep 2026 18:32:52 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Rlw-00000009DCS-31mv
	for linux-phy@lists.infradead.org;
	Wed, 23 Sep 2026 18:32:48 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 2282F43E22;
	Wed, 23 Sep 2026 18:32:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 369BD1F000FF;
	Wed, 23 Sep 2026 18:32:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790188368;
	bh=8gL+s5qDMUZs23tYHICCzHXBl2/rprPL7QbZ2oK/Hg8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=UZRFVGf4n5P9rhdikwMvFGWZiqojbQoH+N69Pp6PH7T/hdfBHxSQHKBMkUVQvjdY+
	 8WWH/pnEkdBzbA1LGKLs3uNJwgx309kdR6AzUWnz+O4UYZGRrzYlaySxi5HZBdfrXu
	 Xjyv6tTKxtQVsOmnFh9FbZu7zuXrvTT9cYXs42YV1xTAOETSPN9+7wO619Oiau4L4f
	 +3bhdeNjAJ0KdVCijTrue+iYGxrUItxXtBjh/3g5LcBkEGmHY4RnDu15n1poBBaaec
	 JF4sLW7aCyGGXGwShEzRutksKytLOZc16X4UTnrhkGhXTd8NXRiA5fchinljJzPLLl
	 JTxEbe+Jy1MIQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v12 03/12] dt-bindings: clk: zte: Add zx297520v3 LSP
 clock and reset controller
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: linux-phy@lists.infradead.org, neil.armstrong@linaro.org, conor+dt@kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org, vkoul@kernel.org, mfd@lists.linux.dev, linux-clk@vger.kernel.org, lee@kernel.org, robh@kernel.org
In-Reply-To: <20260923-zx29clk-v12-3-9c243796b6d2@gmail.com>
References: <20260923-zx29clk-v12-0-9c243796b6d2@gmail.com>
 <20260923-zx29clk-v12-3-9c243796b6d2@gmail.com>
Date: Wed, 23 Sep 2026 18:32:46 +0000
Message-Id: <20260923183247.369BD1F000FF@smtp.kernel.org>
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
NjA5MjMtengyOWNsay12MTItMC05YzI0Mzc5NmI2ZDJAZ21haWwuY29tP3BhcnQ9MwoKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
