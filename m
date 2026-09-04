Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 285A1C61DD6
	for <linux-phy@archiver.kernel.org>; Fri,  4 Sep 2026 13:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cU/ipJXvSb+6f/ZWorM5UPBNt+ijaklTy388GJeP0a8=; b=POLB/1rL0TzNVn
	E+Ev2VxAw1fShLsrH/aa3ioCCAHbTTHJ/tvVwv0WSiMfMP9isF7tOTa/0hrhOshSn152qxzWoTHd3
	pMlgyi8zhemVe0cPM78VwsyvIz+xIgfxZrICo2vLbj7D5KvFL88QDftUuCGBinE0vbFAvOAtjCkJJ
	Y+xePlQNTWuFbFNy2CD239+hqKx8v+Z6bPIctXiOg0CIg047JgiXRVIYKnX+TLF8j1Oz8UPHE4dFm
	MP06G3D4y9IxA/rPSkQeQ8aN2lUJbzHfpYRWiu1xXnSQfMR2TFqMbP0VwTO3qE3h1mHlM0ESfnVtg
	BnpRu2g8ciwY8SihZkrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2U0Q-00000002E20-2ltz;
	Fri, 04 Sep 2026 13:30:58 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2U0P-00000002E1H-1s7u
	for linux-phy@lists.infradead.org;
	Fri, 04 Sep 2026 13:30:57 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id D211A600D4;
	Fri,  4 Sep 2026 13:30:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E1A4D1F00A3E;
	Fri,  4 Sep 2026 13:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788528655;
	bh=B60l+04pVEJwF9CCsix0ruYdcieZB/hTmAshk7wFSYI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=MaaFaaz4nSYAq8MkFJX8WlwMDKregF1jJ38pil8/kUZLbAnCG8TxTZe8d+NDnpGeu
	 x4kBSbvM4JxDwNm/mtdEPpwV0sCMmnWoEjugG2l7+4egWhj2fHm5wxq1Oxd7zZsogU
	 6FaHckjIpcfdp5168g3boalKXjoa7oxU5fna/9dn22Awhn2OCDfIJhFpawBbfxwCsT
	 AkeHThzC7CSQHS7TfwbQt0VO1n1s+7iUEqdF0lD+43azAjeTaSR29fBcV9UXwPhDYB
	 7Gw2TnQvHIfg4g8+4DmMwBR0vuT77VTQzPibvMNip1FIKljzNHQDs7iFiYKDu7x/mx
	 ch5Tc12JdiN6Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 01/19] dt-bindings: phy: Add
 starfive,jh7110-inno-hdmi-phy
To: "Michal Wilczynski" <m.wilczynski@samsung.com>
Cc: devicetree@vger.kernel.org, linux-clk@vger.kernel.org, robh@kernel.org, linux-phy@lists.infradead.org, mfd@lists.linux.dev, vkoul@kernel.org, conor+dt@kernel.org, lee@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, dri-devel@lists.freedesktop.org
In-Reply-To: <20260904-jh7110-clean-send-v3-1-484f9ae72715@samsung.com>
References: <20260904-jh7110-clean-send-v3-0-484f9ae72715@samsung.com>
 <CGME20260904132710eucas1p276bacb1cda0a62d7f29066bd66660fea@eucas1p2.samsung.com>
 <20260904-jh7110-clean-send-v3-1-484f9ae72715@samsung.com>
Date: Fri, 04 Sep 2026 13:30:54 +0000
Message-Id: <20260904133054.E1A4D1F00A3E@smtp.kernel.org>
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

PiBBZGQgdGhlIGR0LWJpbmRpbmcgZm9yIHRoZSBTdGFyRml2ZSBKSDcxMTAgSW5ub3NpbGljb24g
SERNSSBQSFkuCj4gCj4gVGhpcyBkZXZpY2UgaXMgYSBjaGlsZCBvZiB0aGUgc3RhcmZpdmUsamg3
MTEwLWhkbWktc3Vic3lzdGVtIG5vZGUuIEl0Cj4gZnVuY3Rpb25zIGFzIGJvdGggYSBQSFkgcHJv
dmlkZXIgZm9yIHRoZSBjb250cm9sbGVyIGFuZCBhcyBhIGNsb2NrCj4gcHJvdmlkZXIgZm9yIHRo
ZSB2YXJpYWJsZSBwaXhlbCBjbG9jayAoaGRtaV9wY2xrKSwgd2hpY2ggaXQgZ2VuZXJhdGVzCj4g
ZnJvbSBpdHMgcmVmb2Nsay4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgV2lsY3p5bnNraSA8
bS53aWxjenluc2tpQHNhbXN1bmcuY29tPgoKU2FzaGlrbyBoYXMgcmV2aWV3ZWQgdGhpcyBwYXRj
aCBhbmQgZm91bmQgbm8gaXNzdWVzLiBJdCBsb29rcyBncmVhdCEKCi0tIApTYXNoaWtvIEFJIHJl
dmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA5MDQtamg3MTEwLWNs
ZWFuLXNlbmQtdjMtMC00ODRmOWFlNzI3MTVAc2Ftc3VuZy5jb20/cGFydD0xCgoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
