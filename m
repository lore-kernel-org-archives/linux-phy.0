Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FEB3C61DD6
	for <linux-phy@archiver.kernel.org>; Fri,  4 Sep 2026 13:45:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=67y9J4vh674PZwoAnhz5nrYjAquqb580JZBF5f0fidQ=; b=0QRucmJ6Ik0G07
	/jjQs0mpq/o1ilt1ggfwAekV4OHHp9tGHCI0NMbKRFyy83rZprQEfJNvGYdRlD7nX/VcJtUwuizV0
	6+NuDg618gJoSyQ7IBJmMGIrPleYimcbBpQhGNL8FOPSVUxTIYFrM94rY+CqgHIx0KpWE2ZmngW4l
	eSNG6MZtzc0D0kQYJc6pjds7Cm719K66v8HPPn9QsZik7Vos7hpoxZ6gGXVlvdK06DbBbnvYzY60M
	aG7dbMdSFq0oBJSfT84EWOmfP4/Ru1uuWX/xSFSG84ZTdjJ6AGulx/nUW7YvCreHYuLhF3WEoR7JW
	G6Hg/N7sA5teb0BJLihg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2UE2-00000002GpB-3wne;
	Fri, 04 Sep 2026 13:45:02 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2UE0-00000002Gos-3muj
	for linux-phy@lists.infradead.org;
	Fri, 04 Sep 2026 13:45:00 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id A69CC42EA5;
	Fri,  4 Sep 2026 13:45:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C09531F00A3D;
	Fri,  4 Sep 2026 13:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788529500;
	bh=xbUpGSCx0twqvK2uYMhh0Z5HEmXOnKyfgNEX/KAG5Rg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=n2sohWUVbJtultNnzRI8n3i7cqBG7Ys9UHIezllEqyWvBgu8tyIJzrNChxgmGznaZ
	 pJMFmO05zDTxWy9L+MOqlZtfqyPllls3HQigZAzzZN740D+BcmMTjmNMvZd9toQjvf
	 /z86e+M91jObN7SLeNIZ8OjarFc59XAIhHn5AOqzF2XO8FDHwuiqSg57u7RXq2hhO+
	 bStO+h6dZxKNVodvxtxUwQiyOQgbF5A2y5DljJxGDSyDEgdcI/6MZH5pcFs/kHZXOh
	 dNkZWH0U+lqWea0DEUlsuHAu4ed7ftzGk5fZwcxQwfHXG8P2iuHAotdDjpO+cmeuIp
	 hB1Sd+j3G79bQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 13/19] clk: starfive: jh7110-vout: Allow pixel clock
 rate propagation
To: "Michal Wilczynski" <m.wilczynski@samsung.com>
Cc: conor+dt@kernel.org, neil.armstrong@linaro.org, vkoul@kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org, lee@kernel.org, dri-devel@lists.freedesktop.org, linux-clk@vger.kernel.org, robh@kernel.org, linux-phy@lists.infradead.org, mfd@lists.linux.dev
In-Reply-To: <20260904-jh7110-clean-send-v3-13-484f9ae72715@samsung.com>
References: <20260904-jh7110-clean-send-v3-0-484f9ae72715@samsung.com>
 <CGME20260904132733eucas1p1a6529cb2ea97bc75c9cd190d1ba901c0@eucas1p1.samsung.com>
 <20260904-jh7110-clean-send-v3-13-484f9ae72715@samsung.com>
Date: Fri, 04 Sep 2026 13:44:59 +0000
Message-Id: <20260904134459.C09531F00A3D@smtp.kernel.org>
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
aGFjaGVtaSA8ZGJAZG9taWJlbC5kZT4KPiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgV2lsY3p5bnNr
aSA8bS53aWxjenluc2tpQHNhbXN1bmcuY29tPgoKU2FzaGlrbyBoYXMgcmV2aWV3ZWQgdGhpcyBw
YXRjaCBhbmQgZm91bmQgbm8gaXNzdWVzLiBJdCBsb29rcyBncmVhdCEKCi0tIApTYXNoaWtvIEFJ
IHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA5MDQtamg3MTEw
LWNsZWFuLXNlbmQtdjMtMC00ODRmOWFlNzI3MTVAc2Ftc3VuZy5jb20/cGFydD0xMwoKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
