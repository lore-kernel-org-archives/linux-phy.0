Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CAB6CC61DB9
	for <linux-phy@archiver.kernel.org>; Tue, 25 Aug 2026 21:31:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=liCPo5CfEjb1jybI7f5ZZtGO53gRL2oEpXBjUweYshc=; b=iAL0vi0HCIAtVd
	tYB9wFSQTLCPlZs7Iu5d/mBHxVgkc8XsiDQhOjBKsb+Ko5iIsMi12CQhm7v/+3zO6Sm3wsZrC6Ofl
	jUVzqlIeNhUWwHDHEUkl+YNPsi7mk9fTx3xzq0WvqgCtTdlXxx9jYOOsD7l4N55yItwQudhMIqX3T
	8ZLu75cuG+5AXvVUCndjDAyrnnzGMrdW80qcYwDY0/zwFhPw1pQKlZd6M1N+KFrB1ij4kdnTBcYm8
	zg5ilYVDjt1leuAhkqOKuz8avKtOEyrPdm+PUjVyw9lmynV/QhDzEQCnk4Lro70MYdCf6WG3NqCJC
	HqwfVVPeYYMc0Ox/uj5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyykA-00000001XPg-1hzH;
	Tue, 25 Aug 2026 21:31:42 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyyk9-00000001XPP-0FzH
	for linux-phy@lists.infradead.org;
	Tue, 25 Aug 2026 21:31:41 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id BABF3409B1;
	Tue, 25 Aug 2026 21:31:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0C7B21F000E9;
	Tue, 25 Aug 2026 21:31:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787693500;
	bh=R68l1qItjT79oFyRuhZkIlYtScrZffqTh+ICx2pRJzE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=fDOyHnBWLJdcrXerCwSPSHVgflMKSYPJKFPXCSt1BD799uzXM6MF+7QkYJ6M0fyGj
	 wb9Q85ywx2ARaJaDbLdjE/JXo5+LBY6Y67kKYqyFrY6yZmCo+FNx6JqRiuYYA6Gqcz
	 wLiY6Zh+M5xrhb3ReeJxsv0l7T+47hR8ZSM8zdVDQJCfPdUpYzEdsXS4pS3IiILPrU
	 KfrKYTmaV4coNVDsoKyV6d7EGyikGAAcqDVGS/LCbreU8XMM5kV/MKq8SNZNKALP0K
	 k91Q8bSI2D5egi1qn/B6cKceb2zApbmxOZQwheVUfMI/LHNR7HC1Z6xobpLtyTa7Ph
	 PMSqrtZnjj/Ag==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 04/12] ARM: dts: zte: Declare zx297520v3 CRM device
 nodes
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: linux-clk@vger.kernel.org, robh@kernel.org, devicetree@vger.kernel.org, lee@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, linux-phy@lists.infradead.org, conor+dt@kernel.org, mfd@lists.linux.dev
In-Reply-To: <20260826-zx29clk-v11-4-f8ad59c6426c@gmail.com>
References: <20260826-zx29clk-v11-0-f8ad59c6426c@gmail.com>
 <20260826-zx29clk-v11-4-f8ad59c6426c@gmail.com>
Date: Tue, 25 Aug 2026 21:31:39 +0000
Message-Id: <20260825213140.0C7B21F000E9@smtp.kernel.org>
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
eHBvcnRlZCBieSB0b3Bjcm0gYW5kIGxzcGNybS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBTdGVmYW4g
RMO2c2luZ2VyIDxzdGVmYW5kb2VzaW5nZXJAZ21haWwuY29tPgoKU2FzaGlrbyBoYXMgcmV2aWV3
ZWQgdGhpcyBwYXRjaCBhbmQgZm91bmQgbm8gaXNzdWVzLiBJdCBsb29rcyBncmVhdCEKCi0tIApT
YXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA4
MjYtengyOWNsay12MTEtMC1mOGFkNTljNjQyNmNAZ21haWwuY29tP3BhcnQ9NAoKCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
