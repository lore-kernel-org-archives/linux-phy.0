Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E80D7C98304
	for <linux-phy@archiver.kernel.org>; Wed, 23 Sep 2026 18:38:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LNBqPp1VmL5nkzwKp+8+/aBaC7O/F8H0WiONEz50CeQ=; b=v8yXV3vDmygMD6
	hOroRnPvIZXaP+n6jNdvkDUFbzQHdgUmV0n8FlW08hBgFJzcuCqDotx2M4tCLIHRGdry2ZZ/GT1Pf
	3vP3pj2MkYyrG1fnhcvbfJgAsX9U49Kk4HEqSxnMM5dYC82raFPFzukry7iZvoMQoQzM60amc86+0
	TCGgfY8bkQz/D4d9bIqlOrxR1iimyeEy0G7K4hacDmXBPCGFTaLsqGl0NSHbzNjOl4Qy/tAViGDen
	UHoJXu+ln7ZW+HatmRRBTBgmZqHsEr0CNd5v3802uCelNsag3n+47pMcXdRCRnQhVz6AXUBnfbcEr
	uXrLZZ0PS/hjPhpuIh3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Rrb-00000009EYm-1z3G;
	Wed, 23 Sep 2026 18:38:39 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Rr5-00000009EJC-2pcG
	for linux-phy@lists.infradead.org;
	Wed, 23 Sep 2026 18:38:07 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 12501600AA;
	Wed, 23 Sep 2026 18:38:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 272BE1F000FF;
	Wed, 23 Sep 2026 18:38:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790188686;
	bh=YGiK61qXotPf1rDMJmlR+tmCh2Dz3TZ0IYf6maDz+6U=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=iUPpWEKsh+5uxxS65s6ha51IFpV/bYGeO/c95LsAXWAGtrRJ7bDWdZogkrO7OztTw
	 qj6pK2QzvrEk62V9R4HNHXvSW+oQI1+kz7xE/PTy3/1X7lkzaz5ayZI0Pbz2QZMyYc
	 d3Y+3u5+yNi/9xxhZTqUs72stLVOx4fLYPq9VIPkLuGklf/pqRnosibWQiDSYBTmGT
	 KklNO1gE/NnhXSGEfYuBuAadBpl7pNKJs54+uqDTxfuWP+5z4bWUfzrLHTu9k7TujX
	 1b42dNSQg4/2UTZvVRe20Eah9Mh4UVnez/gr2h/k74PZ1Fi1meOQyhMr5jpZ4ayBGZ
	 emmYy2O95qGyQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v12 06/12] clk: zte: Add regmap-based clocks
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: mfd@lists.linux.dev, vkoul@kernel.org, olteanv@gmail.com, lee@kernel.org, neil.armstrong@linaro.org, robh@kernel.org, linux-clk@vger.kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20260923-zx29clk-v12-6-9c243796b6d2@gmail.com>
References: <20260923-zx29clk-v12-0-9c243796b6d2@gmail.com>
 <20260923-zx29clk-v12-6-9c243796b6d2@gmail.com>
Date: Wed, 23 Sep 2026 18:38:05 +0000
Message-Id: <20260923183806.272BE1F000FF@smtp.kernel.org>
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

PiBUaGlzIGlzIGJhc2VkIG9uIG1lc29uL2Nsay1yZWdtYXAuYywgYWx0aG91Z2ggc2xpZ2h0bHkg
c2ltcGxpZmllZC4gSQo+IGhhdmUga2VwdCB0aGUgY29weXJpZ2h0IGxpbmVzIGF0IHRoZSB0b3Ag
b2YgdGhlIGZpbGUgdG8gaW5kaWNhdGUgaXRzCj4gb3JpZ2luLgo+IAo+IFJldmlld2VkLWJ5OiBC
cmlhbiBNYXNuZXkgPGJtYXNuZXlAcmVkaGF0LmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBTdGVmYW4g
RMO2c2luZ2VyIDxzdGVmYW5kb2VzaW5nZXJAZ21haWwuY29tPgoKU2FzaGlrbyBoYXMgcmV2aWV3
ZWQgdGhpcyBwYXRjaCBhbmQgZm91bmQgbm8gaXNzdWVzLiBJdCBsb29rcyBncmVhdCEKCi0tIApT
YXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA5
MjMtengyOWNsay12MTItMC05YzI0Mzc5NmI2ZDJAZ21haWwuY29tP3BhcnQ9NgoKCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
