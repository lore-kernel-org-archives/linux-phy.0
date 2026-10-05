Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FD70CA5FFD
	for <linux-phy@archiver.kernel.org>; Mon,  5 Oct 2026 10:20:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9bSNQIklemsfy5mKhJm94eHMYPEuRzka5ImRA5CYavU=; b=Dle9tcCMUZTR15
	WtRfgJQeghoYrGN/KqHCDrkXUfr2OSxqPspymiWojPu/OyKoQNnAwZ4KxipiN2A9nvDH5kXWE0ZlP
	7qkL/RpMJgAn/Z1sXytSNKFar9XDAM8QvZiQQsDrjUuLz4YWErfWixXatcaV6EeNdIaRY0Hja+CyR
	JRQqWMFSEFg/Vjhrz/9o4YXD6kui3duV1luNd7UF/wc/AsYO2Dk0s+MmaCenNaQ8q1MCP1Ngl4RJ6
	EdQXb9TSl5nENwPuj318Dr1p4cjxx5E6+HOnX3K1eVhMYbY/Wt16O2Um//yhdR8AmVMLEfbcpkLCe
	n4dqDR/UhjIV0ik5DFUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDfoQ-0000000G9aM-3tQt;
	Mon, 05 Oct 2026 10:20:50 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDfoP-0000000G9Zn-0yG3
	for linux-phy@lists.infradead.org;
	Mon, 05 Oct 2026 10:20:49 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id AB43D60A87;
	Mon,  5 Oct 2026 10:20:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5E3571F00893;
	Mon,  5 Oct 2026 10:20:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791195648;
	bh=Rb0VYPbJkOx1WDjx5OjWPu/39PyXY8+/uBeKMQTxRkM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=jMsiRSioiu7zK/pzkKgEMleObWMHpP9/u4h1vIuvq1WLCIWlYHJrD4XUWVOHGzz1e
	 8aBJFS3EzKl35QGYgTToI5WJknOZYCyyk8FuBmFvQhHe29KrWD0tI5GDuOg2/Ogt36
	 I8TfpYF77Ng64LZ1J5mN44AvNW1Hll6juD3XenNH0YcKxte9H7i8ugSNyu5kZRoh/A
	 Iui/gbExtFNS2x8wjn2drAfFkaNnbnGCLDGO8MwMPCJpLTSY11X3LPB+SMWLAjJ7D6
	 Bn5PKtakTcM6MQPIQicUWJ3eK3KXzvxttn1grd0VMlTCz1VKfmvL1Zj1SrJkF0O0LZ
	 WESPvvqAV/DxA==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thierry Reding <thierry.reding@kernel.org>, 
 Jonathan Hunter <jonathanh@nvidia.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Kartik Rajput <kkartik@nvidia.com>
Cc: Thierry Reding <treding@nvidia.com>, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20260909-tegra264-mphy-v1-0-ce61a80dc065@nvidia.com>
References: <20260909-tegra264-mphy-v1-0-ce61a80dc065@nvidia.com>
Subject: Re: [PATCH 0/2] Add M-PHY support for NVIDIA Tegra264
Message-Id: <179119564503.316652.18424670686928632323.b4-ty@kernel.org>
Date: Mon, 05 Oct 2026 12:20:45 +0200
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


On Wed, 09 Sep 2026 15:13:57 +0530, Kartik Rajput wrote:
> Add MIPI M-PHY support for NVIDIA Tegra264 SoCs. The M-PHY is a hardware
> block with two lanes, l0 and l1, used by the Tegra264 UFS host
> controller.
> 
> 

Applied, thanks!

[1/2] dt-bindings: phy: Add nvidia,tegra264-mphy
      commit: 6f61db971065919bd6ca2d62fdc4be158857c403
[2/2] phy: tegra: Add Tegra264 MPHY driver
      commit: 256cb243f4c21b5ba845885df9d1e79ce29eb706

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
