Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1098FC9832F
	for <linux-phy@archiver.kernel.org>; Sun, 27 Sep 2026 20:59:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=krqlGLICeWUH9gs67e3WrR72ObZJz+0CPsm9NQ11DDg=; b=l86QAY8zTRdpEi
	cgAhpG7N2YqbDx45L73LSaj9UqL+EuYxKYGzyt0QaKPtg0gtLrHScrTXBgF60LN5VRc4a6s56Nu5N
	YV836T2ZojxN3QPIVuqsUd9MhZVZczBZYUe7AkiM00LvPSJaUok0UlbZ6wH+9oumInilTJvaMuv8B
	B+pWkEP2khgoY7a8eCvRR5YIFCE/Sj+n0wkiVbgl6Gkizlma+sWUN4v7WNz8Yiy2T4rJGOExiN60U
	OE+zPbY/3emwFBfw7JX9+dQds+JciXZDKyrja/Ia/CRfmgGy0GQpBEUK4YOiC1KX5KuW0V8ZcpzOI
	SNFrB+sSbgYuH19Dj6+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAvxz-0000000GrIQ-3OTH;
	Sun, 27 Sep 2026 20:59:23 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAvxz-0000000GrIK-1eqI
	for linux-phy@lists.infradead.org;
	Sun, 27 Sep 2026 20:59:23 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id C83BB60052;
	Sun, 27 Sep 2026 20:59:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E0B701F000FF;
	Sun, 27 Sep 2026 20:59:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790542762;
	bh=bjd2xsMHgt2f4k8YQWXYZtZZfNnBUY5y6vjs+uRTKhg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=XFNVVNFnUA5QwiZ1GCqUdNT+Xna9529xJ8/ifBHbaeapY0ijaGVaK85f2iShB76Z9
	 EK/5MRDL6bh+GMa3sWXwluLNcQHuRjaSpsB3FJW69Gpd4zaGv5UbzUMEg5DyL/L7z+
	 PUmCxcL6F/MkgRrzltbstkMCUwnzfITGwZm3hmNmNDKdYEoyLLZ9eEY2DRhXoyngIT
	 O/mPVt7QcOfN6kkWgE/VahQvXg4xU3+zF2lmLmzUkDeI+OTUdzPeeKsyrRb1NC6ZDh
	 E/vWLB5qZl3MuufcfoW3vEpqBctY9DIi1Lw4MRgpZtQqAaRN739HiwPgOK0MSue0ra
	 Z9q/aiTSepRGA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v13 07/13] clk: zte: Add regmap-based clocks
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, linux-clk@vger.kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org, mfd@lists.linux.dev, linux-phy@lists.infradead.org, vkoul@kernel.org, lee@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260927-zx29clk-v13-7-70d8f673386c@gmail.com>
References: <20260927-zx29clk-v13-0-70d8f673386c@gmail.com>
 <20260927-zx29clk-v13-7-70d8f673386c@gmail.com>
Date: Sun, 27 Sep 2026 20:59:21 +0000
Message-Id: <20260927205921.E0B701F000FF@smtp.kernel.org>
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
MjctengyOWNsay12MTMtMC03MGQ4ZjY3MzM4NmNAZ21haWwuY29tP3BhcnQ9NwoKCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
