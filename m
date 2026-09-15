Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8E02C88E75
	for <linux-phy@archiver.kernel.org>; Tue, 15 Sep 2026 15:35:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C3cts0WyVIyJvG4hiiPcSvksMK+h92IU1aCUjOzi3FM=; b=gnVmYuQpQH9E+P
	K3hGjqn9+fmmZ4t9cpngnR1/Vg76gleX18TsrsGbS/LilR4XSTQ/IlI8FwL3KuxnIkpwsL/UNQYuL
	o04ORQUZ44nUrYtH7zBM7RpJAxtwhw5JDj7GzUUANAu+sdJ6fHhR/up0G5o4MmbFaOmolVF5WnYOj
	DqqnBb5d7akHJf5RnzXJYcoqwEb0g9Idx+XARCfAILMImLQrjADoCL1VN/7oyXqDV7tkV74f+3aal
	RKCO+G2jBepahBih89MwBFjnqE6Vs1V4/Se0wox6kmCa2a4Jc1JHeKUug79JgDL9NF/fJpiTbAtaM
	+GW1nFjEzPkLVIeCL6YQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6VCE-00000007FeA-1XVi;
	Tue, 15 Sep 2026 15:35:46 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6VCC-00000007Fdd-3Vju
	for linux-phy@lists.infradead.org;
	Tue, 15 Sep 2026 15:35:44 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 960C543D7F;
	Tue, 15 Sep 2026 15:35:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D85DD1F00893;
	Tue, 15 Sep 2026 15:35:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789486544;
	bh=/8/hW+qxYN77uifUveBYUvPnrFFoDTHqZaAe2GTTgeI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=dn/ZCzLvjCO80mdf2cjHQ4RdPpJ3hR/HtnXU/uzEM2BaeAxtkJO05XqL6yOY7lVNN
	 8LhS0X1r5SjuOhBphxE2r90uqcJIUYawoqPmn65oUCkMqC7OD0nr9R3m+Lrg1rFuMq
	 s1JjP0I0qmtpQvYXrBht7tlV47gZiAvp9XQEPcIQU+CfQ8sGdrwAYt5ulm0LuW/Wlf
	 LBfNNZO8HhZignRnzRwAO9bhHnezvmzP8xqvs8W1nY4t7iaJ6Q+ZAnL2lFuaeumFPb
	 qIxhwKssEZ8EbBj47Nw1GmZ/ZoSaawYdYhjEVKVEyLDXMkgSXypbwoi8qpe29tWifK
	 7tbxLc54YUOOg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 01/20] dt-bindings: phy: Add
 starfive,jh7110-inno-hdmi-phy
To: "Michal Wilczynski" <m.wilczynski@samsung.com>
Cc: vkoul@kernel.org, devicetree@vger.kernel.org, lee@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, robh@kernel.org, linux-clk@vger.kernel.org, mfd@lists.linux.dev, dri-devel@lists.freedesktop.org, olteanv@gmail.com
In-Reply-To: <20260915-jh7110-clean-send-v4-1-f0e4fd6f2cc8@samsung.com>
References: <20260915-jh7110-clean-send-v4-0-f0e4fd6f2cc8@samsung.com>
 <CGME20260915153214eucas1p2b548f3236ef98fb0cbf320e397420125@eucas1p2.samsung.com>
 <20260915-jh7110-clean-send-v4-1-f0e4fd6f2cc8@samsung.com>
Date: Tue, 15 Sep 2026 15:35:43 +0000
Message-Id: <20260915153543.D85DD1F00893@smtp.kernel.org>
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
ZnJvbSBpdHMgcmVmb2Nsay4KPiAKPiBSZXZpZXdlZC1ieTogSm9zaHVhIFBlaXNhY2ggPGpwZWlz
YWNoQHVidW50dS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTWljaGFsIFdpbGN6eW5za2kgPG0ud2ls
Y3p5bnNraUBzYW1zdW5nLmNvbT4KClNhc2hpa28gaGFzIHJldmlld2VkIHRoaXMgcGF0Y2ggYW5k
IGZvdW5kIG5vIGlzc3Vlcy4gSXQgbG9va3MgZ3JlYXQhCgotLSAKU2FzaGlrbyBBSSByZXZpZXcg
wrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwOTE1LWpoNzExMC1jbGVhbi1z
ZW5kLXY0LTAtZjBlNGZkNmYyY2M4QHNhbXN1bmcuY29tP3BhcnQ9MQoKCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
