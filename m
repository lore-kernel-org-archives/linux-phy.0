Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 952CEC88E75
	for <linux-phy@archiver.kernel.org>; Tue, 15 Sep 2026 15:45:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v8jGDTHTQZrU2EBR9LCFNHGvbthOJoQbObNCPT9Rt9k=; b=B4sPlvkmyH/Orx
	a0re+PGXoJt0JTLM12gFlTzJf8bLE5h7um4/HeHuxQabFigS5CfLjNyDuNMhRgC2p/3yyXs0TUkyc
	pwlG/+DprPnG5XIyDpMDV/VF4f4TuaEVKJ/K94GE7i8AL0Rko85EFL2hcrrgMzhp/zkXmM6G+NNCU
	3fUEG0CO+SnIANFuTD9GPVBWGODOL9EAbMviCOL/vDGwSILzMFxAl44oofyh0ss50LQyZv6MMMMmu
	9xfDE1+xwj0HtWgrVZA5y/0SVSYBQ5Bpy8LAmffIbTI3O6U2+xsiTO9D03kcErAdMcTh4YeHJ+FgC
	4Qjx3Awz7rDRGUfl3z9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6VLC-00000007H4h-1D6L;
	Tue, 15 Sep 2026 15:45:02 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6VLA-00000007H40-0yGc
	for linux-phy@lists.infradead.org;
	Tue, 15 Sep 2026 15:45:00 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id E710D4057E;
	Tue, 15 Sep 2026 15:44:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A3491F000FF;
	Tue, 15 Sep 2026 15:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789487099;
	bh=mu9Q99hcvwNEtgql17+2eBH/L+oan3LO4fmdoLSsofM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Ir7RL1KKkkz9wkehIGqJ6VO9Z55M/+7316QFQQvCa+Sse6kB+Xv8yE39I1gdgRFNW
	 0FdZrOY95DernjMUh3lp7SklqrQfzAyuoKn3qacUjWOP8JG9ZJGGTcRxMEKMxGvRVk
	 mp6ZoudHnBFy8w1JvJqVnDdZ2WxyghNjWEAp55hQh1VcynRQItx+4sG0kUBttRpf6l
	 8ZEfu1/ipzI4JZJQaR6FQrxCbXvntfY1tndOJMlYm2gWhs6OGND2p70rPNEGElxly9
	 qkUsHJ93jn+fU9jXGd2G+O6K14naiQKp9iq2Wc15GOoDn2gYWFKFTZTCoMfZ4t2zaQ
	 2mWZeTXtcR6JQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 17/20] phy: rockchip: inno-hdmi: Use the common
 Innosilicon PHY helpers
To: "Michal Wilczynski" <m.wilczynski@samsung.com>
Cc: neil.armstrong@linaro.org, conor+dt@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, robh@kernel.org, mfd@lists.linux.dev, lee@kernel.org, linux-phy@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-clk@vger.kernel.org, olteanv@gmail.com
In-Reply-To: <20260915-jh7110-clean-send-v4-17-f0e4fd6f2cc8@samsung.com>
References: <20260915-jh7110-clean-send-v4-0-f0e4fd6f2cc8@samsung.com>
 <CGME20260915153244eucas1p180f69e8f957a5c615d3c6a59a1c205b2@eucas1p1.samsung.com>
 <20260915-jh7110-clean-send-v4-17-f0e4fd6f2cc8@samsung.com>
Date: Tue, 15 Sep 2026 15:44:58 +0000
Message-Id: <20260915154459.3A3491F000FF@smtp.kernel.org>
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

PiBUaGUgUkszMzI4IHByZS1QTEwgcHJvZ3JhbW1pbmcsIGl0cyB0YWJsZSBsb29rdXAgYW5kIGl0
cyByZWNhbGNfcmF0ZSBhbmQKPiBkZXRlcm1pbmVfcmF0ZSBpbXBsZW1lbnRhdGlvbnMgYXJlIHRo
ZSBnZW5lcmljIElubm9zaWxpY29uIG9uZXMsIHNvIGRyb3AKPiB0aGUgbG9jYWwgY29waWVzIGFu
ZCB1c2UgdGhlIHNoYXJlZCBoZWxwZXJzIGluc3RlYWQuCj4gCj4gVGhlIFJLMzIyOCBwcmUtUExM
IHNpdHMgYXQgZGlmZmVyZW50IHJlZ2lzdGVyIGFkZHJlc3Nlcywgc28gaXQga2VlcHMgaXRzCj4g
b3duIHJlZ2lzdGVyIGxldmVsIGNvZGUgYW5kIG9ubHkgc2hhcmVzIHRoZSB0YWJsZSBsb29rdXAu
Cj4gCj4gVGhlIG5vdyB1bnVzZWQgUkszMzI4IHByZS1QTEwgcmVnaXN0ZXIgbWFjcm9zIGdvIHdp
dGggaXQsIGFzIGRvZXMgdGhlCj4gbG9jYWwgcHJlLVBMTCBjb25maWcgbG9va3VwIHdyYXBwZXI7
IGJvdGggY2FsbCBzaXRlcyBhbHJlYWR5IGhhdmUgdGhlCj4gVE1EUyBjbG9jayB0byBoYW5kIGFu
ZCBjYWxsIGlubm9faGRtaV9waHlfcHJlX3BsbF9sb29rdXAoKSBkaXJlY3RseS4KPiAKPiBUaGUg
UkszMzI4IHJlY2FsY19yYXRlIHVzZWQgdG8gbG9nIHRoZSBwcmUtUExMIG91dHB1dCBhcyAidmNv
Ii4gVGhlCj4gc2hhcmVkIGhlbHBlciBsb2dzIGl0IHRvbywgYW5kIHJlcG9ydHMgdGhlIGFjdHVh
bCBWQ08gZnJlcXVlbmN5Cj4gYWxvbmdzaWRlIHRoZSByYXRlLCB3aGljaCBpcyB0aGUgdmFsdWUg
d2l0aCB0aGUgMS40LTMuMiBHSHogY29uc3RyYWludC4KPiAKPiBUaGUgcmVnaXN0ZXIgd3JpdGVz
LCB0aGVpciBvcmRlciBhbmQgdGhlIHZhbHVlcyB3cml0dGVuIGFyZSB1bmNoYW5nZWQuCj4gTm8g
ZnVuY3Rpb25hbCBjaGFuZ2UgaW50ZW5kZWQuCj4gCj4gU2lnbmVkLW9mZi1ieTogTWljaGFsIFdp
bGN6eW5za2kgPG0ud2lsY3p5bnNraUBzYW1zdW5nLmNvbT4KClNhc2hpa28gaGFzIHJldmlld2Vk
IHRoaXMgcGF0Y2ggYW5kIGZvdW5kIG5vIGlzc3Vlcy4gSXQgbG9va3MgZ3JlYXQhCgotLSAKU2Fz
aGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwOTE1
LWpoNzExMC1jbGVhbi1zZW5kLXY0LTAtZjBlNGZkNmYyY2M4QHNhbXN1bmcuY29tP3BhcnQ9MTcK
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
