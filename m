Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD171C98304
	for <linux-phy@archiver.kernel.org>; Wed, 23 Sep 2026 18:40:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EPGRBJ2LYIMBR3JYGsC7Lq/zzrqyq37z/zkwnpRt5CA=; b=Lw6rxdkUzJof4t
	NNi6Z9u26CbmhU00H1IK5+bieXX7g7PmC5FWaCoqewy5nWHBXnK1tu9kBbi+ag2mWdAuJP+TJ/D3S
	vxKgjesQ+3VR8BhFDwYXqQ0R+g01vRDrtirqK31vvva67TGAAU/VfJh6yMb7wtId34afUbaJUiQob
	fG2A2Y0avRbtNWOZD2xCQQZyQripbgd4Ukn0Ut1F5Utt+GfCeLLkUn073nKEUQCyS76fEzm2KqeVC
	/V7Gi3GVTLci36T/tZTs3ZQ0brb+E3JbTc9bFaeGJPdYhQWG2tzrLB8JvO/MTz1qejeExngH19Rwp
	XckuOVUSUjAl2CTsNs/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9RtK-00000009EtV-1FvU;
	Wed, 23 Sep 2026 18:40:26 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9RsM-00000009Em9-1Hmr
	for linux-phy@lists.infradead.org;
	Wed, 23 Sep 2026 18:39:27 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id E2FF24190D;
	Wed, 23 Sep 2026 18:39:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3620C1F000FF;
	Wed, 23 Sep 2026 18:39:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790188765;
	bh=pDqXMsvM2rl0jRqbXzFCkzmCUDeRXHXh7kvYNmNL3/8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=NfvFSi0BRHqC6QKftJdN6DNxh2atYqEE3FDpXxbLpuSENYGSQBBuVlza4Jkce96my
	 0AamZb6/XtccZxvGJbFXKVi5RtteHAwWtTwT7UeD4Q06mP4RvrEXvYccIeUN02Oxb8
	 yRlx11xsmTcjT0GhliAjAWB2LYhhsmfgBzl2yFJ80nmCSC70l9R3+rZSnFYHzQS/Um
	 NgbYkDIWjoazubPKiaMG5F5hAeUqL/0hS7v58sYP6REhzA/T516216E9IOyqtuEUZa
	 eWm5JA1FUYDPHa1Z4uzWX9nWw0CYNjI3cRuTdAMdG4XrtcuEtdW+yiYNabeW/xLCut
	 Z2CatmjUmPkjg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v12 12/12] ARM: dts: zte: Declare zx297520v3 CRM device
 nodes
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: lee@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, olteanv@gmail.com, linux-clk@vger.kernel.org, vkoul@kernel.org, mfd@lists.linux.dev, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, robh@kernel.org
In-Reply-To: <20260923-zx29clk-v12-12-9c243796b6d2@gmail.com>
References: <20260923-zx29clk-v12-0-9c243796b6d2@gmail.com>
 <20260923-zx29clk-v12-12-9c243796b6d2@gmail.com>
Date: Wed, 23 Sep 2026 18:39:24 +0000
Message-Id: <20260923183925.3620C1F000FF@smtp.kernel.org>
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

PiBUaGlzIHBhdGNoIGFkZHMgRFQgbm9kZXMgZm9yIHRoZSBtYWluIGNsb2NrIGFuZCByZXNldCBj
b250cm9sbGVycyBvbiB0aGUKPiB6eDI5NzUyMHYzIGJvYXJkLiBJdCByZXBsYWNlcyB0aGUgdGVt
cG9yYXJ5IHBsYWNlaG9sZGVyIFVBUlQgY2xvY2tzIHdpdGgKPiB0aGUgcHJvcGVyIGNsb2NrcyBl
eHBvcnRlZCBieSB0b3Bjcm0gYW5kIGxzcGNybS4KPiAKPiBSZXZpZXdlZC1ieTogS3J6eXN6dG9m
IEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBvc3MucXVhbGNvbW0uY29tPgo+IFNpZ25l
ZC1vZmYtYnk6IFN0ZWZhbiBEw7ZzaW5nZXIgPHN0ZWZhbmRvZXNpbmdlckBnbWFpbC5jb20+CgpT
YXNoaWtvIGhhcyByZXZpZXdlZCB0aGlzIHBhdGNoIGFuZCBmb3VuZCBubyBpc3N1ZXMuIEl0IGxv
b2tzIGdyZWF0IQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYv
Iy9wYXRjaHNldC8yMDI2MDkyMy16eDI5Y2xrLXYxMi0wLTljMjQzNzk2YjZkMkBnbWFpbC5jb20/
cGFydD0xMgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXBoeQo=
