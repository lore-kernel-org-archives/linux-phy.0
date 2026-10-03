Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 428CDCA5FDD
	for <linux-phy@archiver.kernel.org>; Sat,  3 Oct 2026 20:50:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GW5QGI1+HFJkFKIA1H3iEiCYQ2BL6GcQpkYJG3+YQR0=; b=xSdonrSc0E1zsU
	WlT2wsq0qgT0DQbxT6aW70SdX5We1ev5JwJ8kzHtYSjqoyE9mLU0PnJwYtmFIJ3EGk2Bui0E6cRoR
	9XxOcrxn2d1CYUYN49SOv1qfyQDepcNhhSweXLamaIlUlTB+IhZ4GYKtR6ZGLFYZIgCYkpfxXrWcE
	X/JvI4mg0TB5aRJ30dCxJrTdStK9P0mJGPhTBeVXnQnoJBwvkFAy52LMNG7nydrtnOmaAYxi4kTKQ
	GcmpLtcLzkyrXSWZBf2P/1S22ML9RmBYJIiuand4tUjht6W/LqRzICAT6ySwh5ANrPN8lPXn678Y/
	JiOkzCebQh0Wp+UdkQKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xD6gD-0000000E2B4-012S;
	Sat, 03 Oct 2026 20:50:01 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xD6gB-0000000E2AK-2DWE
	for linux-phy@lists.infradead.org;
	Sat, 03 Oct 2026 20:49:59 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 0A37640E4C;
	Sat,  3 Oct 2026 20:49:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DACC01F0089B;
	Sat,  3 Oct 2026 20:49:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791060598;
	bh=QfrorZ6rtjIFYE5aV8rqfdcw0h5kHOTLW0YV95Dx+kI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=dlevTAy/Djb0/QzspRxSUWQa52YELAFxNCJBgEfimfVmR655NQz+BuUZhyrZO4mb/
	 vUiVzR/OTFX/0QNjN0zDemnAbosBxz+eWOBpnyevGMMytFN0Rjh+uFhYYjSNftB79v
	 o4WmkUJbZnJ2uRuNGU7BNwzdFIWeUDNt+RYF5ygJMAHJuml1Y33xotv6AWDOqYrrqJ
	 73wH1ivZKyzzehoouH3KPEmU20pJBxMtPobtOkSHnZCh+XmhpmtSn8saSf+csA1Wk8
	 mAzVlFQClGg5ZLfpS6wFXuB6I+bASitPAOAg1ii8O4P680REITRJ43KsDCXP2JjaQY
	 V7Np/dDr+Bnyg==
From: Vinod Koul <vkoul@kernel.org>
To: JC Kuo <jckuo@nvidia.com>, Thierry Reding <thierry.reding@kernel.org>, 
 Jonathan Hunter <jonathanh@nvidia.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wayne Chang <waynec@nvidia.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20260903071937.533646-1-waynec@nvidia.com>
References: <20260903071937.533646-1-waynec@nvidia.com>
Subject: Re: [PATCH V3 0/4] phy: tegra: xusb: Add Tegra264 support
Message-Id: <179106059555.240943.9716161970164658069.b4-ty@kernel.org>
Date: Sat, 03 Oct 2026 22:49:55 +0200
MIME-Version: 1.0
X-Mailer: b4 0.14.3
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


On Thu, 03 Sep 2026 15:19:33 +0800, Wayne Chang wrote:
> Add Tegra264 support to the Tegra XUSB PHY driver and its binding, as
> part of enabling USB host functions on the Tegra264 Jetson AGX Thor
> platform.
> 
> This series was previously posted as part of a single 8-patch series
> covering phy, USB host and arm64 DTS changes together [1]. Per review
> feedback, it has been split by subsystem so each maintainer can pick
> up only what belongs to their tree:
> 
> [...]

Applied, thanks!

[1/4] dt-bindings: phy: tegra-xusb: Add support for Tegra264
      commit: c850a8821901163998ec4b7932b3d79dbe480543
[2/4] phy: tegra: xusb: Use devm_clk_get_optional to fetch USB2 tracking clock
      commit: 9358936fa13a8d7d9fbe92762ab38271c8dcb7c0
[3/4] phy: tegra: xusb: Increase timeout for USB2_TRK_COMPLETED polling
      commit: 475df243ffcad579c9beb6fbd47b1f9ee1045b7c
[4/4] phy: tegra: xusb: Add Tegra264 support
      commit: 46fc5849823a67a4b480dec59266969a1b7f8a42

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
