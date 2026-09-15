Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A5CAC982C1
	for <linux-phy@archiver.kernel.org>; Tue, 15 Sep 2026 15:35:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gmTxyQ0xQLRTzX+p+Ev7UGmvT0hk04KBi7xBsUM97rE=; b=kgEWVcHCdhNn9E
	fZrV5OSpLErK9JXBqPfR5oo/LNsdhXVJKVBJVPsv6s0RMNEE73n215V6OPvDDbZ/YbtFXR+riQnpH
	MpooYgMmUO//6lkwrFHX8YIzVbfRz7LA4MC9APHfHnvB3/WrdG5HzHbdI68cL61kgiKLxLWeWG1HQ
	ZvlzyXx+wucKAxPEZ8BD4YEPWke/dDwimemjv0I5VKUg6jCyjBGWxq/EjvHQNAn356ZF6naLle8E7
	EckZObs6jvscoKwORg1S9ehxDF72HGRdCSAwWkeHpGg+TV2NibO4lYxcIiRk2T+WBWrVaN3SOohpv
	euyfiQlrE+EZkc1QNg3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6VBi-00000007FPm-46Sn;
	Tue, 15 Sep 2026 15:35:15 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6VBg-00000007FNb-0tAk
	for linux-phy@lists.infradead.org;
	Tue, 15 Sep 2026 15:35:12 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 2EEAB600D1;
	Tue, 15 Sep 2026 15:35:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 38D2A1F000FF;
	Tue, 15 Sep 2026 15:35:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789486510;
	bh=b8MGX+xCFQOMeqSYPH2BZXF5sDNIBn+JgMTA6JKV2sk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=nI1gSoATvWgHYfuidAE0oPRxuYsTnAh1IQF6VS/hpqxQTL7St+XDu45ezG18IxyWg
	 2UQsshK71EW1wdWdkaM/yB34jo6+haB+cjA83zTNdDFX4GOBrLlfTl8R/ZnXoLgLpJ
	 mUuolrACU32pWPbttuPirhedylKwnfA0JC8hdcKC4MIFUd8z33c5dT5JCQHXCWe0RR
	 gjeFGhxrsMe3+fpHIjw9PJV4Tj5KWUkwxQ+hHwTwOOg/ugXdh5CVSd9LaznmzKPRKj
	 gIvkz37KEBCPfO25D2O1UEvKitF09wM7AT8rT3+kfc+Zq2OewupsZXSmc26gy/gEiI
	 G0hrdRCMAFJ9Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 05/20] dt-bindings: display: verisilicon: Add
 starfive,jh7110-dc8200
To: "Michal Wilczynski" <m.wilczynski@samsung.com>
Cc: neil.armstrong@linaro.org, conor+dt@kernel.org, linux-clk@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org, mfd@lists.linux.dev, robh@kernel.org, olteanv@gmail.com, lee@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org
In-Reply-To: <20260915-jh7110-clean-send-v4-5-f0e4fd6f2cc8@samsung.com>
References: <20260915-jh7110-clean-send-v4-0-f0e4fd6f2cc8@samsung.com>
 <CGME20260915153222eucas1p213b95b05ea7eb9a18700af8888ef5a44@eucas1p2.samsung.com>
 <20260915-jh7110-clean-send-v4-5-f0e4fd6f2cc8@samsung.com>
Date: Tue, 15 Sep 2026 15:35:09 +0000
Message-Id: <20260915153510.38D2A1F000FF@smtp.kernel.org>
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

PiBUaGUgSkg3MTEwIGVtYmVkcyBhIERDODIwMC4gVGhlIGJpbmRpbmcgcmVxdWlyZXMgYW4gU29D
IHNwZWNpZmljCj4gY29tcGF0aWJsZSBhaGVhZCBvZiB0aGUgZ2VuZXJpYyBvbmUsIHNvIGFkZCB0
aGUgSkg3MTEwIHRvIHRoZSBlbnVtLgo+IAo+IFJldmlld2VkLWJ5OiBKb3NodWEgUGVpc2FjaCA8
anBlaXNhY2hAdWJ1bnR1LmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgV2lsY3p5bnNraSA8
bS53aWxjenluc2tpQHNhbXN1bmcuY29tPgoKU2FzaGlrbyBoYXMgcmV2aWV3ZWQgdGhpcyBwYXRj
aCBhbmQgZm91bmQgbm8gaXNzdWVzLiBJdCBsb29rcyBncmVhdCEKCi0tIApTYXNoaWtvIEFJIHJl
dmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA5MTUtamg3MTEwLWNs
ZWFuLXNlbmQtdjQtMC1mMGU0ZmQ2ZjJjYzhAc2Ftc3VuZy5jb20/cGFydD01CgoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
