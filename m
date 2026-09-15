Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 096ACC88E7F
	for <linux-phy@archiver.kernel.org>; Tue, 15 Sep 2026 15:38:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mCgpRDGhqv4nTuDnR7EppezqgJp4q14q5gz+hMlMQfU=; b=35vMLYRM0XH1bc
	QVq4ySfEqbyXKwEV5EKZxy7BlrvGUjG54K1XHdVioEXbtSg/NOPKoOLXvijvQh+ZD9XPXFZiwYxMa
	IO2lA3qojo3gFua1RD0YiGdk541xvSLPZL2ESTdiovkv8PU4eTXg+n4LjoYxByZP9L+snKCjbYnoo
	saI7X2bxXtwbilcfED0qzLMMB6Rj9lg6KAx1CT7ciYMABl3AJXH2TlhrsD9Cz7csh5a7OMztLVpNK
	QyTj8vpgT7NENvWUycsP2DUnt4JV0kObcrIQ2k7atgSlDsUGNizZM7QKET4NNZBU4DuIcdkckEtv+
	/EBNY4QrlbHkMUpYiSXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6VEX-00000007FtR-35kv;
	Tue, 15 Sep 2026 15:38:09 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6VEW-00000007FtL-4AWj
	for linux-phy@lists.infradead.org;
	Tue, 15 Sep 2026 15:38:09 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 64442600D1;
	Tue, 15 Sep 2026 15:38:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78BE31F000FF;
	Tue, 15 Sep 2026 15:38:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789486688;
	bh=nzC7oa+r/phCJ/7hvumhpU+FA2dyGXGpPMkboLtxjyU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=HhV2LUZrxpzeI/MrBTkg/qrVe/GDGYUlQXpQoKi+DdGmOq4b7dcPJ0lLeetG6LRWg
	 9MVWaGr4Fovtyj/ZLIiHCdv4j/LxmKmtr4LGC9t5YZ3iHyxRYSzRnEOuPfrxtgSqgj
	 fSIyjOj6MGKqw2ZDj7fRoYukkZnUkRZDPFlpq8D+6xWhjXFA7I4rbFbH7FF0/0Xky0
	 jO95nu5zFYj+B6THmubNoBk7YqSxRJy1ygDbVJTFVt8RCm6ervarDk/3zSY4Cdq74q
	 Z/ZCsMWDbH6klPQPi0gnWLbNuizuDD9tdd89UrPn9MytxjNmGRc8tgwfGaCNHZRmT1
	 HwL2YijEpLx6w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 14/20] clk: starfive: jh7110-vout: Allow pixel clock
 rate propagation
To: "Michal Wilczynski" <m.wilczynski@samsung.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, olteanv@gmail.com, conor+dt@kernel.org, neil.armstrong@linaro.org, mfd@lists.linux.dev, vkoul@kernel.org, robh@kernel.org, linux-phy@lists.infradead.org, linux-clk@vger.kernel.org, lee@kernel.org
In-Reply-To: <20260915-jh7110-clean-send-v4-14-f0e4fd6f2cc8@samsung.com>
References: <20260915-jh7110-clean-send-v4-0-f0e4fd6f2cc8@samsung.com>
 <CGME20260915153238eucas1p29917a31d10ce1aa55c1dcb44b62180f9@eucas1p2.samsung.com>
 <20260915-jh7110-clean-send-v4-14-f0e4fd6f2cc8@samsung.com>
Date: Tue, 15 Sep 2026 15:38:06 +0000
Message-Id: <20260915153807.78BE31F000FF@smtp.kernel.org>
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

PiBUaGUgZGM4MjAwX3BpeDAgYW5kIGRjODIwMF9waXgxIE1VWGVzIGZlZWQgdGhlIGRpc3BsYXkg
Y29udHJvbGxlciwgYW5kCj4gdGhlIHJhdGUgdGhleSBjYXJyeSBpcyB1bHRpbWF0ZWx5IHByb2R1
Y2VkIGJ5IHRoZSBIRE1JIFBIWSwgd2hpY2gKPiByZWdpc3RlcnMgaGRtaXR4MF9waXhlbGNsayBh
cyBhIGNsb2NrIHByb3ZpZGVyLgo+IAo+IEFkZCBDTEtfU0VUX1JBVEVfUEFSRU5UIHRvIGJvdGgg
TVVYZXMgc28gYSByYXRlIHJlcXVlc3RlZCBvbiB0aGVtCj4gcmVhY2hlcyB0aGF0IHBhcmVudCwg
aW5zdGVhZCBvZiBiZWluZyBjbGFtcGVkIHRvIHdoYXRldmVyIHJhdGUgdGhlCj4gcGFyZW50IGFs
cmVhZHkgaGFwcGVucyB0byBydW4gYXQuCj4gCj4gQ28tZGV2ZWxvcGVkLWJ5OiBEb21pbmlxdWUg
QmVsaGFjaGVtaSA8ZGJAZG9taWJlbC5kZT4KPiBTaWduZWQtb2ZmLWJ5OiBEb21pbmlxdWUgQmVs
aGFjaGVtaSA8ZGJAZG9taWJlbC5kZT4KPiBSZXZpZXdlZC1ieTogSm9zaHVhIFBlaXNhY2ggPGpw
ZWlzYWNoQHVidW50dS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTWljaGFsIFdpbGN6eW5za2kgPG0u
d2lsY3p5bnNraUBzYW1zdW5nLmNvbT4KClNhc2hpa28gaGFzIHJldmlld2VkIHRoaXMgcGF0Y2gg
YW5kIGZvdW5kIG5vIGlzc3Vlcy4gSXQgbG9va3MgZ3JlYXQhCgotLSAKU2FzaGlrbyBBSSByZXZp
ZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwOTE1LWpoNzExMC1jbGVh
bi1zZW5kLXY0LTAtZjBlNGZkNmYyY2M4QHNhbXN1bmcuY29tP3BhcnQ9MTQKCgotLSAKbGludXgt
cGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
