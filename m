Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9EE44C98332
	for <linux-phy@archiver.kernel.org>; Sat, 26 Sep 2026 14:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RLacl/vFWxqS7y2MeZIqsRvxkXYBih+HYdlmvZQvWIo=; b=bTc6qfRm7p/ZKB
	HgVbZUVguvv2DdHmRW4ZtJmHTGzIEkG+0GUeuGzTPrZCuTaKdtlHCCJVPGYWdduIr3wnZ1uvb2a7P
	mmMEwdzPDn6q9YXFAvJ5goPgy21e5T4VwBL97zd1r3w74ZWLkX8rPQzsa58v9zlrDMnS2lGKEN3v7
	t6VXWX28CcERq6XMVFOPxvaKRX4fiJaA93EuuM5Pn+naNiymlEn9VyFiySmwUTw21LemhXg6kRdnS
	FowJw5wqRrv5rKj8+e1l94eU7lijH1rO33PHapYNbG9XpZI0u+aX9PzlFCWSzFCX/4iZtsyMNgcfI
	7focZRvW/oVTYNl0b0YQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xATFv-0000000FVrc-0nQP;
	Sat, 26 Sep 2026 14:19:59 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xATFu-0000000FVrH-05Yx;
	Sat, 26 Sep 2026 14:19:58 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 2B0666020C;
	Sat, 26 Sep 2026 14:19:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D557E1F000FF;
	Sat, 26 Sep 2026 14:19:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790432396;
	bh=WstYARRHn9ZPq1+nz6jOBzDzED9g5UXV27FiviiVoWg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=OHKLOpyMkis7lDS9EKv8y0gEmDo5E+1x/UstPIQ8QNm4BKvZLBpJ3uda7a8qoo43o
	 tyfEDk3gfuMXXSzsSUuvmi9iepVQ65vIzFS1n5jpnAhTkLkJP9/oIeLtCyprH70miB
	 73Cu8hRZg209NCWqYvBR+9buJN99Yc7NpxaH7BpkWmBOJx1LqPsg9WOwWzu8rf5/tz
	 cQ7HMHHZ3EOPz0VCyuUoOInSP3BN4yhvudvycrMeHMTeDBSeaqWkq+yeuvdYF1giv4
	 i7fc4D9Aru4ki1xtMJma7T7lem6jc0fnWgf7GtDsmSpS++wWd1wwFgvdFBuFaKH+mi
	 tmjlYgp9A/Frw==
Date: Sat, 26 Sep 2026 16:19:39 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: nikolai.burov@jolla.com
Cc: Chunfeng Yun <chunfeng.yun@mediatek.com>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Nikolai Burov <nikolai.burov+review@abscue.de>
Subject: Re: [PATCH] phy: mediatek: xsphy: clear U2 DTM0 force bits during
 init
Message-ID: <6tee7zkjxpm2pzr6hjngicb2h67runsffjajtf72qtazmf2zge@xd6rndya4wpl>
References: <20260711-mt6858-xsphy-poweron-v1-1-dee2fb71c7d5@jolla.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260711-mt6858-xsphy-poweron-v1-1-dee2fb71c7d5@jolla.com>
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

T24gU2F0LCBKdWwgMTEsIDIwMjYgYXQgMDE6MzQ6NDZQTSArMDMwMCwgTmlrb2xhaSBCdXJvdiB2
aWEgQjQgUmVsYXkgd3JvdGU6Cj4gRnJvbTogTmlrb2xhaSBCdXJvdiA8bmlrb2xhaS5idXJvdkBq
b2xsYS5jb20+Cj4gCj4gT24gbW9iaWxlIFNvQ3MsIHRoZSBVU0IgUEhZIGlzIGNvbXBsZXRlbHkg
cG93ZXJlZCBvZmYgZHVyaW5nIGJvb3R1cC4KPiBBcyBhIHJlc3VsdCwgdmFyaW91cyBiaXRzIGlu
IHRoZSBEVE0wIHJlZ2lzdGVyIGFyZSBzZXQgdGhhdCBwcmV2ZW50Cj4gdGhlIFVTQiAyLjAgUEhZ
IGZyb20gZnVuY3Rpb25pbmcuIENsZWFyIHRoZW0gYXMgcGFydCBvZiB0aGUKPiBpbml0aWFsaXph
dGlvbiBzZXF1ZW5jZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBOaWtvbGFpIEJ1cm92IDxuaWtvbGFp
LmJ1cm92QGpvbGxhLmNvbT4KClJldmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1h
bml2YW5uYW4uc2FkaGFzaXZhbUBvc3MucXVhbGNvbW0uY29tPgoKLSBNYW5pCgotLSAK4K6u4K6j
4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
